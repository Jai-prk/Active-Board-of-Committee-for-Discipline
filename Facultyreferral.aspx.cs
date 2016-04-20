using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Facultyreferral : System.Web.UI.Page
{
    static string path = "Data Source=DELL;Initial Catalog=abcd;Integrated Security=True";
    SqlConnection con = new SqlConnection(path);
    string f_var = "";
    String result;

    protected void Page_Load(object sender, EventArgs e)
    {
        fr_id.ServerClick += new EventHandler(clo_id_Click);
        if (!IsPostBack)
        {
            Calendar1.Visible = false;

        }
    }

    protected void clo_id_Click(object sender, EventArgs e)
    {
        Session.Remove("c_id");
        Response.Redirect("Default.aspx");
    }
    protected void f_search_Click(object sender, EventArgs e)
    {

        SqlCommand com;
        string str;


        con.Open();
        str = "select * from Faculty_data where f_id='" + f_id.Text.Trim() + "'";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            l_fname.Text = reader["f_name"].ToString();
            l_fdept.Text = reader["f_dept"].ToString();
            l_fphone.Text = reader["f_phone"].ToString();
            l_femail.Text = reader["f_email"].ToString();
           
            reader.Close();
            con.Close();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Faculty Id');</script>");
        }

         
}


    protected void f_submit_Click(object sender, EventArgs e)
    {
        string fref = f_referral.Text.ToString();
        string date = f_date.Text.ToString();
        string time = f_time.Text.ToString();
        string com = f_comment.Text.ToString();

        if ((fref == "") || (date == "") || (time == "") || (com == ""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fill all the required fields');</script>");

        }


        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "insert into Faculty_referral values('" + f_id.Text + "','" + l_fname.Text + "','" + l_fdept.Text + "','" + l_fphone.Text + "','" + l_femail.Text + "','" + f_referral.Text + "','" + f_date.Text + "','" + f_time.Text + "','" + f_comment.Text + "')";
        int result = cmd.ExecuteNonQuery();

        if (result == 1)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Submitted Successfully!');</script>");

            /*f_id.Text = "";

            l_fname.Text = "";
            l_fdept.Text = "";
            l_fphone.Text = "";
            l_femail.Text = "";

            f_date.Text = "";
            f_time.Text = "";
            f_comment.Text = "";
        */
    }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Submition failed X');</script>");
        }



        con.Close();
    }



    protected string SendEmail(string toAddress, string subject, string body)
    {
        string result = "done";
        string senderID = "jai.prk03@gmail.com";// use sender’s email id here..

        const string senderPassword = "20070802336"; // sender password here…
        try
        {
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com", // smtp server address here…
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                Timeout = 30000,
            };
            MailMessage message = new MailMessage(senderID, toAddress, subject, body);
            smtp.Send(message);
        }
        catch (Exception ex)
        {
            result = "Error sending email.!!!";
        }
        return result;

    }


    protected void B_mail_Click(object sender, EventArgs e)
    {
        string toAddress = "jai.prk03@gmail.com";
        string subject = "Associated Board Of Committee For Discipline";
        string body = "Faculty Id :\t" + f_id.Text + "\n\nFaculty Name :\t" + l_fname.Text + "\n\nDepartment :\t" + l_fdept.Text + "\n\nPhone No :\t" + l_fphone.Text + "\n\nEmail Id :\t" + l_femail.Text + "\n\n";
        body += "Referral :\t" + f_referral.Text + "\n\nDate :\t" + f_date.Text + "\n\nTime :\t" + f_time.Text + "\n\nRemarks :\t" + f_comment.Text + "\n\n\n\n";
        body += "Regards,\n\n Active Board for Committee of Discipline";
        SendEmail(toAddress, subject, body);
        if (result == "done")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Mail sent Successfully!');</script>");

            f_id.Text = "";

            l_fname.Text = "";
            l_fdept.Text = "";
            l_fphone.Text = "";
            l_femail.Text = "";

            f_date.Text = "";
            f_time.Text = "";
            f_comment.Text = "";


        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Mail Sent Successfully!');</script>");

            f_id.Text = "";

            l_fname.Text = "";
            l_fdept.Text = "";
            l_fphone.Text = "";
            l_femail.Text = "";

            f_date.Text = "";
            f_time.Text = "";
            f_comment.Text = "";



        }
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
        f_date.Text = Calendar1.SelectedDate.ToString("d");
        Calendar1.Visible = false;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}