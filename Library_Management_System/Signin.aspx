<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Library_Management_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-sm navbar-dark bg-primary sticky-top">
                <a class="navbar-brand" href="default.aspx">
                    <img src="LogoImg/logoicon1.png" alt="logo" width="55" height="55" />LMS Application</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="default.aspx"><b>Home</b></a>
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
                    <a class="btn btn-sm btn-primary" href="Signup.aspx">Sign Up</a>
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
                        <%-- Signin screen --%>
                        <div class="container mt-3">
                            <h2>Login Panel</h2>
                            <br />
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#member_login">Member Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#admin_login">Admin Login</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="member_login" class="container tab-pane active">
                                    <br />
                                    <!-- Design User Login Form -->
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 mx-auto">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <img width="150" src="Images/userimage.png" />
                                                                </center>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h3>Member Login</h3>
                                                                </center>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <hr />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <label>User ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtuserid" CssClass="form-control" placeholder="User ID" runat="server"></asp:TextBox>
                                                                </div>
                                                                <label>Password</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtpassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:Button ID="btnsignin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Sign In" OnClick="btnsignin_Click" />
                                                                </div>
                                                                <div class="form-group">
                                                                    <a href="Signup.aspx" style="text-decoration:none;"><input type="button" class="btn btn-primary btn-lg btn-block" value="Sign Up" /></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a href="default.aspx"><< Back to home screen</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Design End -->
                                </div>
                                <div id="admin_login" class="container tab-pane fade">
                                    <br />
                                    <!-- Design Admin Login Form -->
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 mx-auto">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <img width="150" src="Images/adminimage.png" />
                                                                </center>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h3>Admin Login</h3>
                                                                </center>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <hr />
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <label>Admin ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtadminid" CssClass="form-control" placeholder="Admin ID" runat="server"></asp:TextBox>
                                                                </div>
                                                                <label>Password</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtadminpassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:Button ID="btnAdminLogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Sign In" OnClick="btnAdminLogin_Click" />
                                                                </div>
                                                                <div class="form-group">
                                                                    <a href="#" style="text-decoration:none;"><input type="button" class="btn btn-primary btn-lg btn-block" value="Sign Up" /></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <a href="default.aspx"><< Back to home screen</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Design End -->
                                </div>
                            </div>
                        </div>
                        <%--End SignIn Screen--%>
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
