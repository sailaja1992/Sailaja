<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ebcffc">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="label_welcome" runat="server" ForeColor="#3366FF" 
            Text="Welcome ..." style="font-size: xx-large"></asp:Label>
    
    </div>
    <asp:Button ID="b_logout" runat="server" onclick="b_logout_Click" 
        Text="LogOut!" style="font-size: small; text-align: center" />
    </form>
</body>
</html>
