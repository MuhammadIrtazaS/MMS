using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMS.Forms.Payment
{
    public partial class StudentBill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie ck = new HttpCookie("user_id");
            ck.Value = "1";
            Request.Cookies.Set(ck);
            if (!(Request.Cookies.Get("user_id") is null))
            {
                string query = "SELECT * FROM [attendance] WHERE user_id = '" + Request.Cookies.Get("user_id").Value + "'";
                SqlCommand cmd = new SqlCommand(query);
                int total_meals = 0;
                int total_bill = 0;
                using (SqlConnection con = new SqlConnection(Connection_String.connection_string))
                {
                    cmd.Connection = con;
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        total_meals++;
                        total_bill += rdr.GetInt32(5);
                    }
                }
                total_meals_lbl.Text = total_meals.ToString();
                total_bill_lbl.Text = total_bill.ToString();
            }
        }
    }
}