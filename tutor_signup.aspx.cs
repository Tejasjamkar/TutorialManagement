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
    public partial class tutor_signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["datatutorial"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void resetcontrols()
        {
            Nametextbox.Text = "";
            surnametxt.Text = "";
            GenderDropDownList1.ClearSelection();
            Agetextbox.Text = "";
            emailtextbox.Text = "";
            Marital_status.ClearSelection();
            Countrytextbox.Text = "";
            Citytextbox.Text = "";
            Addresstext.Text = "";
            Qualification.ClearSelection();
            Degreetextbox.Text = "";
            Experiencetextbox.Text = "";
            Contacttextbox.Text = "";
            UsernametextBox.Text = "";
            PasswordtextBox.Text = "";
            Confirmpassword.Text = "";

        }
        protected void Tutorsignupbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "INSERT INTO tutor_info VALUES (@name,@surname, @gender, @age,@email,@marital,@country, @city, @address, @qualification, @degree, @experience, @contactno,@username, @password)";
                //string query = "insert into student_info values(@name,@fathername,@surname,@gender,@age,@country,@city,@address,@standard,@goingto,@subject,@contactno,@tuitiontype,@tuitionprefer,@username,@password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", Nametextbox.Text);
                cmd.Parameters.AddWithValue("@surname", surnametxt.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(Agetextbox.Text));
                cmd.Parameters.AddWithValue("@email", emailtextbox.Text);
                cmd.Parameters.AddWithValue("@marital", Marital_status.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", Countrytextbox.Text);
                cmd.Parameters.AddWithValue("@city", Citytextbox.Text);
                cmd.Parameters.AddWithValue("@address", Addresstext.Text);
                cmd.Parameters.AddWithValue("@qualification", Qualification.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", Degreetextbox.Text);
                cmd.Parameters.AddWithValue("@experience",Experiencetextbox.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", Contacttextbox.Text);
                cmd.Parameters.AddWithValue("@username", UsernametextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordtextBox.Text);
                con.Open();

                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Success','You have registered Successfully!!','success');", true);
                    resetcontrols();
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
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "Swal.fire('Failure', 'Registration Failed. Username" + UsernametextBox.Text + " already exists.', 'error');", true);
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