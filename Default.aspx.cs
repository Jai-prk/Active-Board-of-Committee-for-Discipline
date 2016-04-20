using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    static string path = "Data Source=DELL;Initial Catalog=abcd;Persist Security Info=True;User ID=sa;Password=***********";
    SqlConnection con = new SqlConnection(path);

    protected void Page_Load(object sender, EventArgs e)
    {

    }








    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}