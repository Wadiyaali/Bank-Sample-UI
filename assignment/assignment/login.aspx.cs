using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace assignment
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        Connection cs = new Connection();
        SqlConnection conn;
        SqlCommand cmd;
        string emai;
      protected void Page_Load(object sender, EventArgs e)
        {
            
        }

      
      
        protected void btnlogIn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(cs.conn);
            emai = txtname.Text.ToLower().ToString();
          
                try
                {
                    conn.Open();
                    cmd = new SqlCommand("Select pass from cust where email=@email",conn);
                    cmd.Parameters.AddWithValue("@email", emai);
                    string res = cmd.ExecuteScalar() as string;
                
                    if (!(string.IsNullOrEmpty(res)))
                    {
                       
                    if(pwcheck(res)==true)
                    { txtname.Text = "";
                        txtpass.Text = "";
                        Label1.Enabled = false;
                        Session.Clear();
                        Response.Write("<script>");
                        Response.Write("window.open('WebForm4.aspx','_self')");
                        Response.Write("</script>");
                     
                    }
                    else
                    {
                        Label1.Enabled = true;
                        Label1.Text = "Password doesn't match";
                    }
                    }
                    else
                    {
                    Label1.Enabled = true;
                    Label1.Text = "Username doesn't exist.";
                }
                    conn.Close();
                }
                catch(Exception es)
                {
                    Response.Write("error :" + es);
                }

            }
        public bool pwcheck(string s)
        {
            bool ret = true;
            if(s==txtpass.Text.ToString())
            {

            }
            else
            {
                ret = false;
            }
            return ret;
        }
       
    }
    }
