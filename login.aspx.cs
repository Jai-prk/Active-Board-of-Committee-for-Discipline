using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    static string path = "Data Source=DELL;Initial Catalog=abcd;Integrated Security=True";
    SqlConnection con = new SqlConnection(path);
    string usn, pwd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
protected void SignIn_Click(object sender, EventArgs e)
    {
        
         usn = funame.Text.ToString();
         pwd = fpswd.Text.ToString();
        if((usn == "") || (pwd == ""))
        {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fill all the required fields');</script>");
            
        }
        con.Open();
        string query = "";
        query = "SELECT Count(*) FROM Faculty_login WHERE username='" + usn + "' and password='" + pwd + "'";
        SqlCommand cmd = new SqlCommand(query, con);

        int lcnt = (int)cmd.ExecuteScalar();
        if (lcnt >= 1)
        {
            Session["f_id"] = funame.Text.ToString();
            Response.Redirect("Faculty.aspx");
        }
        else
        {
            //msg_login.Text = "Verify Your Username/Password";
            //msg_login.Visible = true;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid username/password');</script>");

        }
        con.Close();
    }

    protected void adlogin_Click(object sender, EventArgs e)
    {
        

        string usn = adname.Text.ToString();
        string pwd = adpassword.Text.ToString();
        if ((usn == "") || (pwd == ""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fill all the required fields');</script>");

        }
        con.Open();
        string query = "";
        query = "SELECT Count(*) FROM Admin_login WHERE admin='" + usn + "' and password='" + pwd + "'";
        SqlCommand cmd = new SqlCommand(query, con);

        int lcnt = (int)cmd.ExecuteScalar();
        if (lcnt >= 1)
        {
            
            Session["c_id"] = adname.Text.ToString();
            Response.Redirect("Committee.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid username/password');</script>");

            //msg1_login.Text = "Verify Your Username/Password";
            //msg1_login.Visible = true;

        }
        con.Close();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Deafult.aspx");
    }
}

