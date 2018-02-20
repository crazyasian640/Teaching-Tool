<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingleStudentForm.aspx.cs" Inherits="ContosoUniversity.SingleStudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hello
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TeachingToolConnectionString %>" SelectCommand="SELECT PersonID, PersonType, FName, LName, Gender, Ethnicity, Address1, Address2, City, State, ZipCode, PhoneNumber, Email, EmergencyNumber, Height, Weight FROM Person WHERE (PersonType = 'Student')"></asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="PersonID" DataSourceID="SqlDataSource1" Height="343px" style="font-weight: 700" Width="207px">
            <Fields>
                <asp:BoundField DataField="PersonID" HeaderText="PersonID" InsertVisible="False" ReadOnly="True" SortExpression="PersonID" />
                <asp:BoundField DataField="PersonType" HeaderText="PersonType" SortExpression="PersonType" />
                <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Ethnicity" HeaderText="Ethnicity" SortExpression="Ethnicity" />
                <asp:BoundField DataField="Address1" HeaderText="Address1" SortExpression="Address1" />
                <asp:BoundField DataField="Address2" HeaderText="Address2" SortExpression="Address2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="EmergencyNumber" HeaderText="EmergencyNumber" SortExpression="EmergencyNumber" />
                <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
