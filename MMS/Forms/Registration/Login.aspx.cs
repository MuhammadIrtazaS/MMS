using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMS.Forms.Registration
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "SELECT * FROM [user] WHERE name = '"+TextBox1.Text+"' AND password = "+TextBox2.Text+"";
            SqlCommand cmd = new SqlCommand(query);

            using (SqlConnection con = new SqlConnection(Connection_String.connection_string))
            {
                cmd.Connection = con;
                con.Open();
                SqlDataReader rdr =  cmd.ExecuteReader();
                if (rdr.Read())
                {
                    if (rdr[3].ToString() == "student")
                    {
                        Response.Redirect("../Attendance/ViewAttendance.aspx");
                    }
                    else if(rdr[3].ToString() == "admin")
                    {
                        Response.Redirect("../Feedback/ViewFeedbacks.aspx");
                    }
                }
            }
        }
    }
}