<%@ Page Language="C#" AutoEventWireup="true" CodeFile="email.aspx.cs" Inherits="email" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Send Mail using with gmail crendentials in asp.net</title>
    <style type="text/css">
        .style1
        {
            width: 261px;
            text-align: right;
        }
        .style2
        {
            width: 254px;
        }
        .style3
        {
            width: 254px;
            height: 204px;
        }
        .style4
        {
            width: 472px;
            height: 204px;
        }
        .style6
        {
            width: 254px;
            text-align: right;
        }
        .style7
        {
            width: 472px;
            text-align: right;
        }
        .style8
        {
            width: 254px;
            text-align: right;
            height: 23px;
        }
        .style9
        {
            width: 472px;
            text-align: right;
            height: 23px;
        }
    </style>
</head>
<body background="img/b1.jpg" style="height: 728px">
<form id="form1" runat="server">
<div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table style=" border-style: none; border-color: inherit; border-width: 1px; height: 383px; width: 510px; margin-top: 32px;" 
        align="center">
<tr>
<td colspan="2" align="center">
<h1>

<b>Send Mail </b>
</h1>
</td>
</tr>
<tr>
<td class="style6">
<h3 class="style1">
Gmail Username:
</h3>
</td>
<td class="style7">
<asp:TextBox ID="txtUsername" runat="server" BackColor="#CCCCFF" 
        style="margin-left: 0px" Width="273px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style8">
<h3 class="style1">
Gmail Password:
</h3>
</td>
<td class="style9">
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password" BackColor="#CCCCFF" 
        Width="268px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style6">
<h3 class="style1">
Subject:
</h3>
</td>
<td class="style7">
<asp:TextBox ID="txtSubject" runat="server" BackColor="#CCCCFF" Width="265px"></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2">
<h3 class="style1">
To:
</h3>
</td>
<td class="style7">
<asp:TextBox ID="txtTo" runat="server" BackColor="#CCCCFF" Width="265px"></asp:TextBox>
</td>
</tr>
<tr>
<td valign="top" class="style3">
<h3 class="style1">
Body:
</h3>
</td>
<td class="style4">
<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" 
        Rows="10" BackColor="#CCCCFF" style="margin-top: 0px" Width="273px" ></asp:TextBox>
</td>
</tr>
<tr>
<td class="style2">
</td>
<td class="style7">
<asp:Button ID="btnSubmit" Text="Send" runat="server" onclick="btnSubmit_Click" />
</td>
</tr>
</table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [Contactdata]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
        style="margin-left: 256px" Width="770px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                SortExpression="ContactName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
</div>
</form>
</body>
</html>
