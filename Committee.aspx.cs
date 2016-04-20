using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Committee : System.Web.UI.Page
{
    static string path = "Data Source=DELL;Initial Catalog=abcd;Integrated Security=True";
    SqlConnection con = new SqlConnection(path);


    protected void Page_Load(object sender, EventArgs e)
    {
        cl_id.ServerClick += new EventHandler(clo_id_Click);
        
        

        retrievedata();
    }

  
    protected void clo_id_Click(object sender, EventArgs e)
    {
        Session.Remove("c_id");
        Response.Redirect("Default.aspx");
    }

    public void retrievedata()
    {
        SqlCommand cmd = new SqlCommand("select * from Student_referral", con);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        con.Close();
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}