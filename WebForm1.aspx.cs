using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string uname = TextBox1.Text;
                string pwd = TextBox2.Text;
                con.Open();
                string qry = "select * from Login_tbl where UserName = '" + uname + "' and PassWord ='"+pwd+"'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read()) { Label2.Text = "Login Sucessful"; }
                else { Label2.Text = "Incorrect Credential"; }
            }

            catch(Exception ex)
            {
                Label2.Text=ex.Message;
            }
        }
    }
}