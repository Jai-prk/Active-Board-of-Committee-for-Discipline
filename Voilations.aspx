<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Voilations.aspx.cs" Inherits="Voilations" %>

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
    <li class="active"><a href="Voilations.aspx">Voilations</a></li>


    <li><a href="About.aspx">About</a></li>
   
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
            <h1 class="text-center"> Voilations</h1>
        <table >
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><h4>Download Referral Form</h4></asp:LinkButton>
                </td>
                </tr>
            <tr>
                    <td><p>

                        </p></td>
                    <td><p>

                        </p></td>
                    </tr>

            
            
            </table>
            
                
        </div>
            <table border="1" class="tclass" >

                <tr>
                    <td>
                        <p>
                        Abusive Language
                         </p>   
                            </td>
                    <td>
                        <p>

                            Student delivers verbal messages to another person that includes swearing, name calling or use of words in an inappropriate way.</p>
                        </td>
                    </tr>
                 <tr>
                    <td><p>

                        Battery</p></td>
                    <td><p>

                        Any willful and unlawful use of force or violence upon the person of another.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Brandishing of a dangerous object</p></td>
                    <td><p>

                        Display a knife in a threatening manner to cause fear or physical harm.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Bullying/Hazing</p></td>
                    <td><p>

                        Bullying: an aggressive behavior that involves an imbalance of real or perceived physical or psychological power among those involved. Hazing: any method of initiation or pre-initiation into a student organization which is likely to cause serious bodily injury.</p>
                    </td>
                    </tr>
                <tr>
                    <td><p>

                        Cheating/Forgery/ Lying         <td><p>

                        Cheating: violate rules or regulations Forgery: signing another person’s name Lying: deceiving another by telling an untruth</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Defiance</p></td>
                    <td><p>

                        Student refuses to follow adult directions or classroom/school rules, talks back or exhibits socially rude behavior.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Disruption</p></td>
                    <td><p>

                        (substantial)</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Extortion

                        </p></td>
                    <td><p>

                        To obtain by coercive means, such as threat or intimidation.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Fighting</p></td>
                    <td><p>

                        Student fights with or otherwise intentionally causes injury to another person.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Harassment</p></td>
                    <td><p>

                        Student engages in behaviors that threaten, intimidate, demean, embarrass or ridicule a student or staff member. This may include the spreading of rumors about another student and threats to fight with or harm another student. It also includes the use or terms derogatory to a person’s race ethnicity, religion, gender or sexual orientation.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Inappropriate Sexual Behavior</p></td>
                    <td><p>

                        Student engages in verbal or physical gestures/contact, of a sexual nature to another student/adult, either consensual or non-consensual.Obscene act: misconduct such as inappropriate sexual comments or gestures (including simulating masturbation).

                        </p>
                    </td>
                    </tr>
                <tr>
                    <td><p>

                        Misuse of Electronic Device</p></td>
                    <td><p>

                        Student engages in inappropriate use of cell phone, music/video players, camera or computer.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Physical Aggression</p></td>
                    <td><p>

                        Student engages in inappropriate physical contact that may or may not cause physical injury (i.e. pushing, shoving or kicking).</p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Possession of Alcohol

                        </p></td>
                    <td><p>

                        Student is in possession of or is using alcoholic beverage.</p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Possession of Dangerous Object

                        </p></td>
                    <td><p>

                        Student is in possession of knives or guns (real or look alike) or other objects readily capable of causing bodily harm.

                        </p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Possession of Drugs</p></td>
                    <td><p>

                        Student is in possession of controlled substance/drug paraphernalia or is using illegal drugs/substances or imitations

                        </p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Possession of Firearm

                        </p></td>
                    <td><p>

                        Any weapon which will or is designed to or may readily be converted to expel a projectile by the action of an explosive.

                        </p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Property Damage/ Vandalism

                        </p></td>
                    <td><p>

                        Student engages in behavior that results in destruction or disfigurement of property belonging to student, staff or school.

                        </p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Robbery

                        </p></td>
                    <td><p>

                        The taking of personal property in the possession of another by force or threat of force.

                        </p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Selling Drugs

                        </p></td>
                    <td><p>

                        Sale of controlled substance

                        </p></td>
                    </tr>
                 <tr>
                    <td><p>

                        Sexual Assault/Battery

                        </p></td>
                    <td><p>

                        Sexual assault: rape, sodomy, lascivious acts upon a child under 14 years old, oral copulation, penetration of a genital or anal opening by a foreign object. Sexual battery: touching of an intimate part of another person against that person’s will for the specific purpose of sexual arousal, sexual gratification, or sexual abuse.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Sexual Harassment

                        </p></td>
                    <td><p>

                        &nbsp;Unwelcome sexual advances or requests for sexual favors; or other unwelcome verbal, visual, or physical conduct of a sexual nature.

                        </p></td>
                    </tr>
                <tr>
                    <td><p>

                        Terroristic Threat </p></td>
                    <td><p>

                        Any statement by a person who willfully threatens to commit a crime which will result in death, great bodily injury to another person, or property damage in excess of $1,000.00, with the specific intent that the statement is to be taken as a threat.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        Theft </p></td>
                    <td><p>

                        Student is in possession of, having passed on or being responsible for removing someone else’s property.Taking of property of others without the permission of the owner; larceny.</p>
                    </td>
                    </tr>
                <tr>
                    <td><p>

                        Threat</p></td>
                    <td><p>

                        Student has verbalized the intent to cause harm to students or staff.</p></td>
                    </tr>
                <tr>
                    <td><p>

                        </p></td>
                    <td><p>

                        </p></td>
                    </tr>


                </table>
            <div>
                



        


        
    
    




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
        </div>
    </form>
</body>
</html>
