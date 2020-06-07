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
    public partial class WebForm4 : System.Web.UI.Page
    {
        Connection cs = new Connection();
        SqlConnection sq;
        SqlCommand cmd;
        SqlDataAdapter sda;
        void connect()
        {
            sq = new SqlConnection(cs.conn);
        }
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            connect();
            sq.Open();
            cmd = new SqlCommand("Select id,Cname from cust", sq);

            sda = new SqlDataAdapter(cmd);
            if (i ==0)
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                sq.Close();
                i = 1;
            }

        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            connect();
            sq.Open();
            cmd = new SqlCommand("select * from cust where id=@id",sq);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(DropDownList1.SelectedValue.ToString()));
           
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
              
                lblage.Enabled = true;
                lblid.Enabled = true;
                lblphone.Enabled = true;
                lblemail.Enabled = true;
                lbldob.Enabled = true;
                lblage.Text ="<i class='fa fa-calendar-o'> </i> \t \t"+ "&nbsp \t"+ ds.Tables[0].Rows[0]["age"].ToString();
                lbldob.Text = "<i class='fa fa-birthday-cake' > </i> \t \t " + "&nbsp \t" + ds.Tables[0].Rows[0]["dob"].ToString();
                lblid.Text= "<i class='fa fa-id-badge'> </i> \t \t "+ "&nbsp\t" + ds.Tables[0].Rows[0]["id"].ToString();
                lblphone.Text = "<i class='fa fa-phone'> </i> \t \t " + "&nbsp \t" + ds.Tables[0].Rows[0]["phone"].ToString();
                lblemail.Text = "<i class='fa fa-envelope-o '> </i> \t \t " + "&nbsp \t" + ds.Tables[0].Rows[0]["email"].ToString();

            }
            DataSet dss = new DataSet();
            SqlCommand sc = new SqlCommand("Select * from Loan", sq);
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            sda.Fill(dss);
            GridView1.DataSource = dss;
            GridView1.DataBind();
          
            sq.Close();
        }

        protected void btnLoan_Click(object sender, EventArgs e)
        {
            connect();
            sq.Open();
            cmd = new SqlCommand("insert into Loan(id,salary,permonth,interest,noofyear)values(@id,@slry,@pm,@in,@noy)",sq);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(DropDownList1.SelectedValue.ToString()));
            cmd.Parameters.AddWithValue("@slry", txtsalary.Value.ToString());
            cmd.Parameters.AddWithValue("@pm", txtpm.Value.ToString());
            cmd.Parameters.AddWithValue("@in", txtint.Value.ToString());
            cmd.Parameters.AddWithValue("@noy", txtnoofyr.Value.ToString());
            cmd.ExecuteNonQuery();
            DataSet dss = new DataSet();
            SqlCommand sc = new SqlCommand("Select * from Loan", sq);
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            sda.Fill(dss);
            GridView1.DataSource = dss;
            GridView1.DataBind();
            sq.Close();
        }

    }
}