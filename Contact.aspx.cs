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
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["datatutorial"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void resetcontact()
        {
            nametextbox.Text = "";
            emailtextbox.Text = "";
            SubjectDropDownList.ClearSelection();
            messagetextbox.Text = "";
        }
        protected void submitbutton_Click(object sender, EventArgs e)
        {
         
            SqlConnection con = new SqlConnection(cs);
            string query = "INSERT INTO contact VALUES (@name, @email, @subject, @message)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", nametextbox.Text);
            cmd.Parameters.AddWithValue("@email", emailtextbox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", messagetextbox.Text);

            try
            {
                con.Open();
                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    // Output JavaScript alert for successful insertion
                    //Response.Write("<script>alert('Insertion successful');</script>");
                    //Response.Write("<script>SuccessContact();</script>")
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "SuccessContact();", true);
                    resetcontact();
                }
                else
                {
                    // Output JavaScript alert for failed insertion
                    ScriptManager.RegisterStartupScript(this, GetType(), "popup", "ErrorContact();", true);
                    //Response.Write("<script>alert('Insertion failed');</script>");
                }

            }
            catch (Exception ex)
            {
                // Handle any exceptions here
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                // Close the connection in finally block
                con.Close();
            }

        }
    }
}