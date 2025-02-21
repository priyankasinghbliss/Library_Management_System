<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Library_Management_System.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <link rel="shortcut icon" href="LogoImg/logoicon1.png" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%--Bootstrap css--%>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <%--Datatables css--%>
    <link href="Datatables/css/dataTables.dataTables.min.css" rel="stylesheet" />

    <%--Fontawesome css--%>
    <link href="fontawesome/fontawesome-free-6.7.1-web/css/all.css" rel="stylesheet" />

    <%--Jquery js--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>

    <%--Popper js--%>
    <script src="Bootstrap/js/popper.min.js"></script>

    <%--Bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>

    <%--SweetAlert--%>
    <link href="SweetAlert/Styles/sweetalert.css" rel="stylesheet" />
    <script src="SweetAlert/Scripts/sweetalert.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-sm navbar-dark bg-primary sticky-top">
                <a class="navbar-brand" href="Default.aspx">
                    <img src="LogoImg/logoicon1.png" alt="logo" width="55" height="55" />LMS Application</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="Default.aspx"><b>Home</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Library Collection</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Archives</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Publications</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Gallery</b></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><b>Contact Us</b></a>
                        </li>
                    </ul>
                </div>
                <!-- Navbar Right Icon -->
                <div class="pmd-navbar-right-icon ml-auto">
                    <a class="btn btn-sm btn-primary" href="Signin.aspx">Sign In</a>
                </div>
            </nav>
            <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0">
                <h1>Library Management System</h1>
                <p>Building Community. Inspiring readers. Expanding book access!</p>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2 border border-info">
                        <h2>Filter</h2>
                        <p>Top Search</p>
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">Active</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>
                        </ul>
                        <hr class="d-sm-none" />
                    </div>
                    <div class="col-sm-10 border border-info">
                        <%-- Signup screen --%>
                        <div class="container mt-3">
                            <h2>Create new account</h2>
                            <br />
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#member_signup">Member Sign Up</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="member_signup" class="container tab-pane active">
                                    <br />
                                    <!-- Design User Signup Form -->
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12 mx-auto">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <img width="150" src="Images/Signup.png" />
                                                                </center>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h3>Member Sign Up</h3>
                                                                </center>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <hr />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-6">
                                                                <label>Full Name</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtfullname" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvfullname" runat="server" ErrorMessage="Enter Full name!" ControlToValidate="txtfullname" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                </div>
                                                                <formlabel>Date of Birth</formlabel>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtdob" CssClass="form-control" placeholder="DOB" TextMode="Date" runat="server"></asp:TextBox>
                                                                </div>
                                                                <formlabel>Contact No.</formlabel>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtcontact" CssClass="form-control" placeholder="Contact No." runat="server"></asp:TextBox>
                                                                    <asp:RegularExpressionValidator ID="revmobileno" runat="server" ControlToValidate="txtcontact" ValidationExpression="^([0-9]{10})$" Display="Dynamic" ErrorMessage="Enter valid contact!"></asp:RegularExpressionValidator>
                                                                </div>
                                                                <label>Email ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email ID" TextMode="Email" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Enter valid email!" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="revemail" runat="server" ErrorMessage="Enter valid Email!" ControlToValidate="txtemail" Display="Dynamic" ForeColor="Maroon" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                </div>
                                                                <label>User ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtuserid" CssClass="form-control" placeholder="User ID" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <label>State</label>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="ddlstate" CssClass="form-control" runat="server">
                                                                        <asp:ListItem Text="Select" Value="Select" />
                                                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                                                        <asp:ListItem Text="Assam" Value="Assam" />
                                                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                                                        <asp:ListItem Text="Goa" Value="Goa" />
                                                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <label>City</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtcity" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                                                                </div>
                                                                <label>Pin Code</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtpincode" CssClass="form-control" placeholder="Pin code" runat="server"></asp:TextBox>
                                                                    <asp:RegularExpressionValidator ID="revpincode" runat="server" ControlToValidate="txtpincode" ValidationExpression="^([0-9]{6})$" Display="Dynamic" ErrorMessage="Enter valid pincode!"></asp:RegularExpressionValidator>
                                                                </div>
                                                                <label>Full Address</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtaddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                                                </div>
                                                                <label>Password</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtpassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="Enter valid password!" ControlToValidate="txtpassword" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="col-12">
                                                                <center>
                                                                    <div class="form-group" style="width: fit-content;">
                                                                        <asp:Button ID="btnsignup" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Sign Up" OnClick="btnsignup_Click" />
                                                                    </div>
                                                                    <%--<div class="form-group">
                                                                            <a href="Signup.aspx" style="text-decoration: none;">
                                                                                <input type="button" class="btn btn-primary btn-lg btn-block" value="Sign Up" />
                                                                            </a>
                                                                        </div>--%>

                                                                    <%--Sweet alert box plugin--%>
                                                                </center>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a href="Default.aspx"><< Back to home screen</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Design End -->
                                </div>
                            </div>
                        </div>
                        <%--End Signup screen--%>
                    </div>
                </div>
            </div>
            <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0;">
                <p>Footer</p>
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="footer-pad">
                                <h4>Heading1</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a></li>
                                    <li><a href="#">Payment Center</a></li>
                                    <li><a href="#">News and updates</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="footer-pad">
                                <h4>Heading1</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a></li>
                                    <li><a href="#">Website</a></li>
                                    <li><a href="#">Disclaimer</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <h4>Follow Us</h4>
                            <ul class="social-network social-circle" style="list-style-type: none;">
                                <li><a href="#" title="facebook"><i class="fa-brands fa-facebook-f"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 fa-copyright border-dark">
                            <p class="text-center">&copy; Copyright 2024 - Coral Library. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
