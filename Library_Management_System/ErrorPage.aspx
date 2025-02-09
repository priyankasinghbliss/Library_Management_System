<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="Library_Management_System.ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div>
                <img src="Images/404_page-not-found.png" alt="404 Error" style="width: 70%;" />
            </div>
            <div>
                <asp:Label ID="errordesp" runat="server" Text=" " ForeColor="Red"></asp:Label>
            </div>
        </center>
    </form>
</body>
</html>
