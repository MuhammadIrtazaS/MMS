using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMS.Forms.Meals
{
    public partial class Addmeals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO [meal] (name, time, day, price) VALUES (@name, @time, @day, @price)";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Parameters.AddWithValue("@name", meal_name_fld.Text);
            cmd.Parameters.AddWithValue("@time", me_rl.SelectedValue);
            cmd.Parameters.AddWithValue("@day", day_dl.SelectedValue);
            cmd.Parameters.AddWithValue("@price", price_fld.Text);

            using (SqlConnection con = new SqlConnection(Connection_String.connection_string))
            {
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}