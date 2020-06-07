using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace assignment
{
    
    public partial class WebForm2 : System.Web.UI.Page
    {
        public string name, email, pass;
        public DateTime dob;
        public int age;
        public long contact;
            
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
       public void Initialize()
        {
            name = txtname.Text.ToString();
            email = txtemail.Text.ToString();
            pass = txtpass.Text.ToString();
            dob = Convert.ToDateTime(txtdob.Text);
            age = Convert.ToInt32(txtage.Text);
            contact = Convert.ToInt64(txtphone.Text.ToString());
        }
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Initialize();
            Connection cs = new Connection();
            SqlConnection conn = new SqlConnection(cs.conn);
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("inser", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.Add(new SqlParameter("@name", name));
                cmd.Parameters.Add(new SqlParameter("@email", email));
                cmd.Parameters.Add(new SqlParameter("@age", age));
                cmd.Parameters.Add(new SqlParameter("@dob", dob));
                cmd.Parameters.Add(new SqlParameter("@pass", pass));
                cmd.Parameters.Add(new SqlParameter("@phone",contact));
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch(Exception es)
            {
                Response.Write("error  " + es);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length >= 8)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}
