<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommitteeAction.aspx.cs" Inherits="CommitteeAction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ABCD</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/custom.css" rel="stylesheet" type="text/css" />
    <link href="css/controls.css" rel="stylesheet" type="text/css" />

    <link rel="Shortcut Icon" href="images/favicon.ico" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"  rel="stylesheet" type="text/css" />


<script type="text/javascript">
function Showalert(username) {
alert(username + ' details updated successfully.');
if (alert) {
window.location = 'Default.aspx';
}
}
</script>




    </head>
<body class="bcolor">
    <form id="form1" runat="server">
    <div class="container">
        <div id="logo">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/images/logo_web.jpg"  Width="100px" OnClick="ImageButton1_Click" />
        </div>
    </div>
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation" style="left: 0px; top: -8px">
    <div class="container">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNav">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    </button>
    </div>
    <div class="collapse navbar-collapse" id="myNav">
    <ul class="nav navbar-nav">
    <li><a href="Default.aspx">Home</a></li>
    <li><a href="login.aspx">Faculty</a></li>

    <li class="active"><a href="Committee.aspx">Committee</a></li>
    <li><a href="Voilations.aspx">Voilations</a></li>


    <li><a href="Facultyreferral.aspx">Faculty Referral</a></li>
    <li><a href="About.aspx">About</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a id="ca_id" href="#" class="btn-link" data-toggle="modal" data-target="#myModal" runat="server"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>
    </ul>
    </div>
    </div>   
    </nav>
    <!-- Modal -->
    <div id="myModal" class="modal fade in" role="dialog">
        <div class="modal-dialog">
            <!-- Modal Content -->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times</button>
                    <h4 class="modal-title">
                        Sign-In</h4>
                </div>
                <div class="modal-body">
                    <div role="form">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                        <hr class="divider">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-6">
                                    <asp:CheckBox ID="chkRemberme" runat="server" Text="Remember Me" CssClass="checkbox-inline" />
                                    |
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-primary">Forgot Password ?</asp:LinkButton>
                                </div>
                                <div class="col-sm-6">
                                    <span class="pull-right">
                                        <asp:Button ID="btnSumbit" CssClass="btn btn-success" runat="server" Text="Submit" /></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Landing Page -->
    
        <div class="container">
            
             <h1 class="text-center">Student Referral</h1>

            <table>
                <tr>
                    <td> </td>
                    </tr>
                <tr>
                   <td>

                       Referral Id</td>
                    <td >
                        <asp:Label ID="l_r_id" runat="server"></asp:Label>
                        </td>

                    
                        </tr>

                <tr>
                    <td>
                       USN</td>
                    <td>
                        <asp:Label ID="l_r_usn" runat="server"></asp:Label>
                        </td>
                    <td>Name
                        </td>
                    <td>
                        <asp:Label ID="l_r_name" runat="server"></asp:Label>
                        </td>
                    </tr>
                <tr>
                    <td>

                       Course</td>
                    <td>
                        <asp:Label ID="l_r_course" runat="server"></asp:Label>
                        </td>
                    <td>Year
                        </td>
                    <td>
                        <asp:Label ID="l_r_year" runat="server"></asp:Label>
                        </td>
                 </tr>
                <tr>
                    <td>
                       Phone No</td>
                    <td>
                        <asp:Label ID="l_r_phone" runat="server"></asp:Label>
                        </td>
                    <td>Email Id
                        </td>
                    <td>
                        <asp:Label ID="l_r_email" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                                       <td>

                       Referral</td>
                    <td>
                        <asp:Label ID="l_r_referral" runat="server"></asp:Label>
                        </td>

                    </tr>


                    <td>
                       Date</td>
                    <td>
                        <asp:Label ID="l_r_date" runat="server"></asp:Label>
                        </td>
                    <td>Time
                        </td>
                    <td>
                        <asp:Label ID="l_r_time" runat="server"></asp:Label>
                        </td>
                    </tr>


                
                <tr>
                    <td>

                       Faculty comments</td>
                    <td>
                        <asp:Label ID="l_r_comment" runat="server"></asp:Label>
                        </td>
                    </tr>

                <tr>
                    <td>

                        Action Taken</td>
                    <td>
                        <asp:ListBox ID="actiontaken" runat="server" Height="19px" Width="135px">
                            <asp:ListItem>suspension</asp:ListItem>
                            <asp:ListItem>Parents call</asp:ListItem>
                            <asp:ListItem>Fine</asp:ListItem>
                        </asp:ListBox>
                        </td>
                    </tr>

                <tr>
                    <td> Comments
                        </td>
                    <td>  
                        <asp:TextBox ID="acomments" runat="server" Height="163px" Width="194px"></asp:TextBox>
                    </td>
                    </tr>

                <tr>
                    <td>
                        </td>

                    </tr>
                <tr>
                    <td>
                        </td>
                    <td><asp:Button runat="server" ID="Submit" Text="Mail HOD" OnClick="Submit_Click"/></td>
                    </tr>


                    
               
            </table>
            
            

        </div>
    
    
        <div class="height">
        </div>
    </div>
    <!-- /# Our Services -->
    
    
    

		<!-- footer-bottom -->
		<div class="footer-bottom">
			<div class="container">
				<div class="row">				
					<div class="col-sm-6">
						<ul class="footer-menu list-inline">
							<li><a href="Default.aspx">Home</a></li>

							<li><a href="About.aspx">About</a></li>
							
						</ul>
					</div>

					
				</div>
			</div>
		</div><!-- footer-bottom -->
	</footer>
    </form>
</body>
</html>
