﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Facultyreferral.aspx.cs" Inherits="Facultyreferral" %>

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
            <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="~/images/logo_web.jpg"  Width="100px" OnClick="ImageButton2_Click" />
        </div>
    </div>
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
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

    <li><a href="Committee.aspx">Committee</a></li>
    <li><a href="Voilations.aspx">Voilations</a></li>


    <li class="active"><a href="#">Faculty Referral</a></li>
    <li><a href="About.aspx">About</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a id="fr_id" href="#" class="btn-link" data-toggle="modal" data-target="#myModal" runat="server"><span class="glyphicon glyphicon-user"></span> Sign-In</a></li>
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

            <h1 class="text-center"> Faculty Referral </h1>
            <table>
                <tr>
                
                <td></td>
                <td class="text-right">Faculty Id</td>
                    <td> 
                        <asp:TextBox ID="f_id" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="f_search" runat="server" Text="Search" OnClick="f_search_Click" />
                    </td>
            </tr>

                <tr>
                
                <td>Name

                </td>
                <td>
                    <asp:Label ID="l_fname" runat="server"></asp:Label>
                    </td>

            </tr>

                <tr>
                
                <td>Department</td>
                <td>
                    <asp:Label ID="l_fdept" runat="server"></asp:Label>
                    </td>
                    <td>Phone No</td>
                    <td> 
                        <asp:Label ID="l_fphone" runat="server"></asp:Label>
                    </td>
            </tr>

                <tr>
                
                <td>Email Id</td>
                <td> 
                    <asp:Label ID="l_femail" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td> 
                        &nbsp;</td>
            </tr>

                <tr>
                
                <td>Referral

                </td>
                <td> 
                    <asp:ListBox ID="f_referral" runat="server" Height="23px" Width="126px">
                        <asp:ListItem>Abusive Language</asp:ListItem>
                        <asp:ListItem>Bullying</asp:ListItem>
                        <asp:ListItem>Physical attack</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:ListBox>
                    </td>
            </tr>

                <tr>
                
                <td>Date

                </td>
                    
                <td> 
                    <asp:TextBox ID="f_date" runat="server"></asp:TextBox>
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="24px" ImageUrl="~/images/calendar.png" OnClick="ImageButton1_Click" Width="34px" />
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    </td>
                    <td>Time
                        </td>
                         <td> 
                    <asp:TextBox ID="f_time" runat="server"></asp:TextBox>
                    </td>


                       
            </tr>

                <tr>
                
                <td>Comment

                </td>
                <td><asp:TextBox runat="server" ID="f_comment" Height="147px" Width="147px"/></td>
            </tr>

               <tr>
                
                <td></td>
                <td></td>
            </tr>

                <tr>
                
                <td></td>
                <td><asp:Button runat="server" ID="f_submit" Text="Submit" OnClick="f_submit_Click"/></td>
                <td><asp:Button runat="server" ID="B_mail" Text="Mail" OnClick="B_mail_Click"/></td>            
                
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
