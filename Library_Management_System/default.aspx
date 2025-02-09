<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Library_Management_System._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- Indicator -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <!-- Slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="SlideImg/slideimg4.jpg" alt="Library_Archive" />
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/slideimg5.png" alt="Study_room" width="1000px" height="575px" />
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/slideimg6.jpg" alt="Research_room" width="1000px" height="575px" />
                    </div>
                </div>

                <!-- Left and Right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-12">
                <h2>TITLE HEADING</h2>
                <h5>Title description, Dec 7, 2024</h5>
                <div class="fakeimg">Fake Image</div>
                <p>Some text...</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum, elit eget congue scelerisque,lacuslectulacinia purus, sit amet vulputate magna risus at nulla. </p>
                <br />
                <h2>TITLE HEADING</h2>
                <h5>Title description, Sep 17, 2024</h5>
                <div class="fakeimg">Fake Image</div>
                <p>Some text...</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum, elit eget congue scelerisque,lacuslectulacinia purus, sit amet vulputate magna risus at nulla. </p>
            </div>
        </div>

        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">BLACK FRIDAY DEAL</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image" />
                            </div>
                            <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">BLACK FRIDAY DEAL</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image" />
                            </div>
                            <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">BLACK FRIDAY DEAL</div>
                            <div class="card-body">
                                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image" />
                            </div>
                            <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
