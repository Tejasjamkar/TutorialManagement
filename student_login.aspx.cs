using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace tms_project
{
    public partial class student_login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["datatutorial"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void student_oginbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from student_info where username=@username and password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", Usernametxt.Text);
            cmd.Parameters.AddWithValue("@password", Passwordtxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                //Response.Write("<script>alert('login successfull');</script>");

                Session["student_username"] = Usernametxt.Text;
                Response.Redirect("student/student_index.aspx");
            }
            else
            {
                //Response.Write("<script>alert('login is failed');</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failure','Username or password is Incorrect','error');", true);

            }
            con.Close();
        }
    }
}