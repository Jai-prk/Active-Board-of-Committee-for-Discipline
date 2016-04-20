using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Voilations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        string file = "Discipline Referral Form.pdf";
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("content-disposition", "attachment;filename=" + file);
        Response.TransmitFile(Server.MapPath("~/Download/" + file));
        Response.End();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}