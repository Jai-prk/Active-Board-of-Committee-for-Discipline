using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Faculty : System.Web.UI.Page
{
    static string path = "Data Source=DELL;Initial Catalog=abcd;Integrated Security=True";
    SqlConnection con = new SqlConnection(path);

    protected void Page_Load(object sender, EventArgs e)
    {
        fl_id.ServerClick += new EventHandler(flo_id_Click);
        if (!IsPostBack)
        {
            Calendar1.Visible = false;

        }
    }

    protected void flo_id_Click(object sender, EventArgs e)
    {
        Session.Remove("f_id");
        Response.Redirect("Default.aspx");
    }
    protected void s_search_Click(object sender, EventArgs e)
    {
        SqlCommand com;
        string str;


        con.Open();
        str = "select * from Student_data where s_usn='" + s_usn.Text.Trim() + "'";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        if(reader.Read())
        {
            s_name.Text = reader["s_name"].ToString();
            s_course.Text = reader["s_course"].ToString();
            s_year.Text = reader["s_year"].ToString();
            s_phone.Text = reader["s_phone"].ToString();
            s_email.Text = reader["s_email"].ToString();
            reader.Close();
            con.Close();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Student USN!');</script>");
        }

    }

    protected void s_submit_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into Student_referral values('" + s_usn.Text + "','" + s_name.Text+ "','" + s_course.Text + "','" + s_year.Text + "','" + s_phone.Text + "','" + s_email.Text + "','" + s_referral.Text + "','" + s_date.Text + "','" + s_time.Text + "','" + s_comment.Text + "')";
        int result = cmd.ExecuteNonQuery();
        string referral = s_referral.Text.ToString();
        string date = s_date.Text.ToString();
        string time = s_time.Text.ToString();
        string com = s_comment.Text.ToString();

        if ((referral == "") || (date == "") || (time == "") || (com == ""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fill all the required fields');</script>");

        }

        if (result == 1)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Submitted Successfully!');</script>");

            s_usn.Text = "";
            s_name.Text = "";
            s_course.Text = "";
            s_year.Text = "";
            s_phone.Text = "";
            s_email.Text = "";

            s_date.Text = "";
            s_time.Text = "";
           
            s_comment.Text = "";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Submition failed X');</script>");
        }



            con.Close();


    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        s_date.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Deafult.aspx");
    }
}