using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace WebApplication1
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconn"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        { 

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
                string name = TextBox1.Text;
                string mail = TextBox2.Text;
                string uname = TextBox3.Text;
                string pwd = TextBox4.Text;   
                string cpwd = TextBox5.Text;
                string address = Request.Form["TextArea1"];
                string qry = "insert into Login_tbl(UserName,PassWord,name,email) values (@uname, @pwd, @name, @mail)";

                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.Add(new SqlParameter("@name", name));
                cmd.Parameters.Add(new SqlParameter("@uname", uname));
                cmd.Parameters.Add(new SqlParameter("@pwd", pwd));
                cmd.Parameters.Add(new SqlParameter("@mail", mail));
            cmd.Parameters.Add(new SqlParameter("@Address", address));
            try
            {
                bool allempty = false;
                foreach(Control ctrl in Page.Controls)
                {
                    if(ctrl is TextBox)
                    {
                        TextBox txtbox = (TextBox)ctrl;
                        if(String.IsNullOrEmpty(txtbox.Text))
                        {
                            allempty = true;
                            break;
                        }
                    }
                }
                if (allempty && cpwd == pwd)
                { 
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Label8.Text = "Registration Successfull";   
                        con.Close();
                }
                else if(cpwd != pwd)
                {
                    Label8.Text = "Password MisMatched";
                }
                else
                {
                    Label8.Text = "Please fill All The Details";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Label8.Text = "Error: " + ex.Message;
            }

        }
    }
}