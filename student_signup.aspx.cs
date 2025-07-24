using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Xml.Linq;
using System.Threading;
using System.Drawing;

namespace tms_project
{
    public partial class student_signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["datatutorial"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        { 

        }

       void resetcontrols()
        {
            Nametextbox.Text = "";
            fathernametxt.Text = "";
            surnametxt.Text = "";
            GenderDropDownList1.ClearSelection();
            Agetextbox.Text = "";
            Countrytextbox.Text = "";
            Citytextbox.Text = "";
            Addresstext.Text = "";
            Classtextbox.Text = "";
            Goingto.ClearSelection();
            subjectTextBox.Text = "";
            Contacttextbox.Text = "";
            tuitiontypeDropDownList1.ClearSelection();
            TutorpreferDropDownList1.ClearSelection();
            UsernametextBox.Text = "";
            PasswordtextBox.Text = "";

        }
        protected void Studentsignupbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "INSERT INTO student_info (name, fathername, surname, gender, age, country, city, address, standard, goingto, subject, contactno, tuitiontype, tuitionprefer, username, password) " +
                   "VALUES (@name, @fathername, @surname, @gender, @age, @country, @city, @address, @standard, @goingto, @subject, @contactno, @tuitiontype, @tuitionprefer, @username, @password)";
                //string query = "insert into student_info values(@name,@fathername,@surname,@gender,@age,@country,@city,@address,@standard,@goingto,@subject,@contactno,@tuitiontype,@tuitionprefer,@username,@password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", Nametextbox.Text);
                cmd.Parameters.AddWithValue("@fathername", fathernametxt.Text);
                cmd.Parameters.AddWithValue("@surname", surnametxt.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(Agetextbox.Text));
                cmd.Parameters.AddWithValue("@country", Countrytextbox.Text);
                cmd.Parameters.AddWithValue("@city", Citytextbox.Text);
                cmd.Parameters.AddWithValue("@address", Addresstext.Text);
                cmd.Parameters.AddWithValue("@standard", Classtextbox.Text);
                cmd.Parameters.AddWithValue("@goingto", Goingto.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", subjectTextBox.Text);
                cmd.Parameters.AddWithValue("@contactno", Contacttextbox.Text);
                cmd.Parameters.AddWithValue("@tuitiontype", tuitiontypeDropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tuitionprefer", TutorpreferDropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", UsernametextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordtextBox.Text);
                con.Open();

                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Success','You have registered Successfully!!','success');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failure','Registeration Failed try another username','error');", true);
                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failure', 'Registration Failed. Username" +UsernametextBox.Text+" already exists.', 'error');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failure', 'Registration Failed. Please try another username.', 'error');", true);
                }

            }
            finally
            {

                con.Close();
            }

        }
    }
}