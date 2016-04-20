<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .tclass {
            background-color : #F0FFFF;
            height : 200px;
            width: 75%;
            margin-left:100px;
        }

        </style>


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
    </head>
<body class="bcolor">
    <form id="form1" runat="server">
        <!--<div class="text-center">-->
    <div class="container">
        <div id="logo">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/images/logo_web.jpg"  Width="100px" OnClick="ImageButton1_Click" />
        </div>
    </div>
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
    <div class="container">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNav">
    <span class="icon-bar"></span>
    </button>
    </div>
    <div class="collapse navbar-collapse" id="myNav" style="text-align: center">
    <ul class="nav navbar-nav">
    <li><a href="Default.aspx">Home</a></li>
    <li><a href="login.aspx">Faculty</a></li>

    <li><a href="login.aspx">Committee</a></li>
    <li><a href="Voilations.aspx">Voilations</a></li>


    <li class="active"><a href="About.aspx">About</a></li>
    
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="login.aspx" class="btn-link" data-toggle="modal" data-target="#myModal" runat="server"><span class="glyphicon glyphicon-user"></span> Sign-In</a></li>
    </ul>
    </div>
    </div>   
    </nav>
            <div class="text-center">
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
    


            </div>
    


        <div class="container">
            <h1 class="text-center"> </h1>
        <table >
            <tr>
                <td>
                <p>
                    <h4>About Us:</h4>
                    This Committee resembles an strict and a evolution systemthat enables to keep track of <br /> all student referrals and maintain the referral information committed by the students.<br />
                    The term A B C D tells the four starting steps towards discipline for a better education.<br />  Our committee members are very strict in taking actions on each and every referral.
                    </p>    
                </td>
                </tr>
            <tr>
                    <td><p>

                        </p></td>
                    </tr>
            <tr>
                    <td><p> <h4>Contact Us:</h4>

                        </p></td>
                    </tr>

            <tr>
                    <td><p>
                        www.revainstitution.org/abcd<br />

                        +91-9916334031<br />
                        +91-9845332995<br />
                        </p></td>
                    </tr>

            <tr>
                    <td><p>

                        </p></td>
                    </tr>




            
            </table>
            <div>
                



        


        
    
    




        <div class="height">
        </div>
    </div>
    <!-- /# Our Services -->
    
    
    </div>

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
	
        
    </form>
</body>
</html>
