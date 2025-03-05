using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMS.Forms.Feedback
{
    public partial class GiveFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_btn_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO [feedback] (text, ratings, meal) VALUES (@text, @ratings, @meal)";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Parameters.AddWithValue("@text", text_fld.Text);
            cmd.Parameters.AddWithValue("@ratings", rattings_list.SelectedValue);
            cmd.Parameters.AddWithValue("@meal", meal_list.SelectedValue);

            using (SqlConnection con = new SqlConnection(Connection_String.connection_string))
            {
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}