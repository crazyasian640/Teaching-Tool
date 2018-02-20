<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ContosoUniversity.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:black; height:50px;width:1350px; text-align:center">
            <h1 style="font-family:Verdana; color:white">Log in Form</h1>
            <table style="margin-top:20%" align="center">
                <tr>
                    <td>Username</td>
                    <td>&nbsp;<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>&nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;<asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="Gray" ForeColor="White" OnClick="btnLogin_Click" />
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Width="100%"></asp:Label>
                        </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div style="background-color:black; height:20px; width:1350px; margin-top:500px; color:white">
                    @Copyright TeachingTool 2018
            </div>
        </div>
    </form>
</body>
</html>
