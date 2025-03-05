using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMS.Forms.Registration
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_btn_clicked(object sender, EventArgs e)
        {
            string query = "INSERT INTO [user] (user_id, name, role, password) VALUES (@user_id, @name, 'student', @password)";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Parameters.AddWithValue("@user_id", roll_no_fld.Text);
            cmd.Parameters.AddWithValue("@name", name_fld.Text);
            cmd.Parameters.AddWithValue("@password", password_fld.Text);

            using(SqlConnection con = new SqlConnection(Connection_String.connection_string))
            {
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}