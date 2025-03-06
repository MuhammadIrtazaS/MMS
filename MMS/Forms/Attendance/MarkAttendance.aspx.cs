using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;


namespace MMS.Forms.Attendance
{
    public partial class MarkAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                date_fld.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(Connection_String.connection_string))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO [attendance] (date, time, meal_name, user_id, meal_price) VALUES (@date, @time, @meal_name, @user_id, @meal_price)");
                cmd.Parameters.AddWithValue("@date", date_fld.Text);
                cmd.Parameters.AddWithValue("@time", me_rl.SelectedValue);
                cmd.Parameters.AddWithValue("@meal_name", meals_list.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@user_id", roll_no_fld.Text);
                cmd.Parameters.AddWithValue("@meal_price", meals_list.SelectedItem.Value);
                cmd.Connection = con;
                con.Open();

                cmd.ExecuteNonQuery();
            }
        }

        protected void find_btn_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(Connection_String.connection_string))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM [user] WHERE user_id = '" + find_fld.Text + "';");
                cmd.Connection = con;
                con.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    name_lbl.Text = rdr[2].ToString();
                    roll_no_fld.Text = rdr[1].ToString();
                }
                else
                {
                    name_lbl.Text = "User not found";
                    roll_no_fld.Text = "";
                }
            }
        }
    }
}