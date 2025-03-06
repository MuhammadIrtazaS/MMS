using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MMS.Forms.Payment
{
    public partial class PaymentRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT  user_id, sum(meal_price), count(user_id) FROM [attendance] GROUP BY user_id;";
            
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(Connection_String.connection_string))
            {
                cmd.Connection = con;
                con.Open();
                SqlDataReader rdr =  cmd.ExecuteReader();

                while (rdr.Read()) {
                    TableRow row = new TableRow();

                    TableCell cell = new TableCell();
                    cell.Text = rdr[0].ToString();
                    row.Cells.Add(cell);

                    TableCell cell2 = new TableCell();
                    cell2.Text = rdr[2].ToString();
                    row.Cells.Add(cell2);

                    TableCell cell1 = new TableCell();
                    cell1.Text = rdr[1].ToString();
                    row.Cells.Add(cell1);

                    TableCell cell3 = new TableCell();
                    cell3.Text = "Unpaid";
                    row.Cells.Add(cell3);

                    Table1.Rows.Add(row);
                }
            }
        }
    }
}