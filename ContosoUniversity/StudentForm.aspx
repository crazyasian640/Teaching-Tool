<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="ContosoUniversity.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Form</title>
    <style type="text/css">
        #Button1 {
            height: 34px;
            width: 82px;
        }
        #Text1 {
            width: 622px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>Students
            <hr />
        </div>
        <br />
        First Name:&nbsp;<asp:TextBox ID="txtFirst" runat="server" Width="204px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;
        <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Find" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TeachingToolConnectionString %>" SelectCommand="SELECT PersonID, PersonType, FName, LName FROM [Person] Where PersonType = 'Student'"></asp:SqlDataSource>
        
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PersonID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" Width="572px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="PersonID" HeaderText="PersonID" InsertVisible="False" ReadOnly="True" SortExpression="PersonID" />
                <asp:BoundField DataField="PersonType" HeaderText="PersonType" SortExpression="PersonType" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

        </asp:Panel>
        
        
        <br />
    </form>
</body> 
</html>
