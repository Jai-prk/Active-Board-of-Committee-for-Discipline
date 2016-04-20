<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Committee.aspx.cs" Inherits="Committee" %>

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
</head>
<body class="bcolor">
    <form id="form1" runat="server">
    <div class="container">
        <div id="logo">
           <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/images/logo_web.jpg"  Width="100px" OnClick="ImageButton1_Click" />
        </div>
    </div>
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation" style="left: 1px; top: -11px">
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

    <li class="active"><a href="#">Committee</a></li>
    <li><a href="Voilations.aspx">Voilations</a></li>


    <li><a href="Facultyreferral.aspx">Faculty Referral</a></li>
    <li><a href="About.aspx">About</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <!-- <li><a ss="nav navbar-nav navbar-right"/></li> -->
    <li><a id="cl_id" href="#" class="btn-link" data-toggle="modal" data-target="#myModal" runat="server"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
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
            <h1 class="text-center">Student Referrals</h1>

            <table>

                <tr>
                
                <td> </td>

                
            </tr>
                <tr>
                
                <td></td>
            </tr>

                <tr>
                
                <td> 
                    <asp:GridView ID="GridView1" runat="server" Height="229px" Width="406px" BackColor="#F0FFFF">

                        <Columns>

                            <asp:TemplateField>
                            <ItemTemplate>
                            <a href ='<%#"CommitteeAction.aspx?r_id="+DataBinder.Eval(Container.DataItem,"r_id") %>'> <%#Eval("r_id") %>  </a>
                            </ItemTemplate>
                            </asp:TemplateField>
                            
                         </Columns>
                    </asp:GridView>
                    </td>

                
            </tr>
                

                </table>
            
        </div>
    
    
        <div class="height">
        </div>
    <!--</div>-->
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
