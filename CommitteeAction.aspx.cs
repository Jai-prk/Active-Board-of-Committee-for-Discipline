using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class CommitteeAction : System.Web.UI.Page
{
    static string path = "Data Source=DELL;Initial Catalog=abcd;Integrated Security=True";
    SqlConnection con = new SqlConnection(path);
    string f_var = "";
    public int id;
    String hod_mail;
    String hod_id;
    String result;

    protected void Page_Load(object sender, EventArgs e)
    {
        ca_id.ServerClick += new EventHandler(clo_id_Click);
       


        id = Convert.ToInt32(Request.QueryString["r_id"].ToString());

        SqlCommand com;
        string str;
        con.Open();
        str = "select * from Student_referral where r_id='" + id.ToString() + "'";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            l_r_id.Text = reader["r_id"].ToString();
            l_r_usn.Text = reader["r_usn"].ToString();
            l_r_name.Text = reader["r_name"].ToString();
            hod_mail = reader["r_course"].ToString();
            l_r_course.Text = reader["r_course"].ToString();
            l_r_year.Text = reader["r_year"].ToString();
            l_r_phone.Text = reader["r_phone"].ToString();
            l_r_email.Text = reader["r_email"].ToString();
            l_r_referral.Text = reader["r_referral"].ToString();
            l_r_date.Text = reader["r_date"].ToString();
            l_r_time.Text = reader["r_time"].ToString();
            l_r_comment.Text = reader["r_comment"].ToString();
            reader.Close();
            con.Close();
        }


    }
    protected void clo_id_Click(object sender, EventArgs e)
    {
        Session.Remove("c_id");
        Response.Redirect("Default.aspx");
    }

    protected string SendEmail(string toAddress, string subject, string body)
    {
        String result = "done";
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





    protected void Submit_Click(object sender, EventArgs e)
    {
        string act = actiontaken.Text.ToString();
        string acom = acomments.Text.ToString();

        if ((act == "") || (acom == ""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fill all the required fields');</script>");

        }

        string subject = "Associated Board Of Committee For Discipline";
        string body = "Referral id :\t" + l_r_id.Text + "\n\n USN :\t" + l_r_usn.Text + "\n\nStudent Name :\t" + l_r_name.Text + "\n\nCourse :\t" + l_r_course.Text + "\n\nYear :\t" + l_r_year.Text + "\n\nPhone No :\t" + l_r_phone.Text + "\n\nEmail Id :\t" + l_r_email.Text + "\n\nReferral :\t" + l_r_referral.Text + "\n\nDate :\t" + l_r_date.Text + "\n\nTime :\t" + l_r_time.Text + "\n\nFaculty Comments :\t" + l_r_comment.Text + "\n\n";
        body += "\nAction Taken :\t" + actiontaken.Text + "\n\nRemarks : \t" + acomments.Text + "\n\n\n\n\n";
        body += "Regards,\n\n Active Board for Committee of Discipline";
        
        string str1;
        con.Open();
        str1 = "select * from Hod_mail where hod_id='" + hod_mail.ToString() + "'";
        SqlCommand com = new SqlCommand(str1, con);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
             hod_id= reader["hod_email"].ToString();
            con.Close();
        }
        SendEmail(hod_id, subject, body);
        if(result == "done")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Mail sent Successfully!');</script>");

            l_r_id.Text = "";
            l_r_usn.Text = "";
            l_r_name.Text = "";
            l_r_course.Text = "";
            l_r_year.Text = "";
            l_r_phone.Text = "";
            l_r_email.Text = "";
            l_r_referral.Text = "";
            l_r_date.Text = "";
            l_r_time.Text = "";
            l_r_comment.Text = "";

            acomments.Text = "";


        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Mail Sent Successfully!');</script>");

            l_r_id.Text = "";
            l_r_usn.Text = "";
            l_r_name.Text = "";
            l_r_course.Text = "";
            l_r_year.Text = "";
            l_r_phone.Text = "";
            l_r_email.Text = "";
            l_r_referral.Text = "";
            l_r_date.Text = "";
            l_r_time.Text = "";
            l_r_comment.Text = "";

            acomments.Text = "";



            //Response.Redirect("Committee.aspx");
        }

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}