<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acceuil.aspx.cs" Inherits="WebAppDoroLove.acceuil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
   <style type="text/css">
        h1 {
            text-align: center;
        }
        hr{
            width: 440px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>OMNIVOX-TECCART-MIO</h1>
            <hr/>
            <asp:Label ID="lblMssg" runat="server" Text="Label" Font-Bold="True" ></asp:Label>

             <center>
            <asp:Table ID="tabMessages" runat="server" BackColor="cyan" BorderStyle="Solid" GridLines="Horizontal" Font-Bold="True" Width="500px">
                <asp:TableRow runat="server" BackColor="#66FF33" Font-Bold="True" TableSection="TableHeader">
                    <asp:TableCell runat="server">Titres</asp:TableCell>
                    <asp:TableCell runat="server">Envoyeurs</asp:TableCell>
                    <asp:TableCell runat="server">Actions</asp:TableCell>
                </asp:TableRow>
                
            </asp:Table>    
                <br /> <asp:Button ID="btnRediger" runat="server" Text="Rédiger nouveau message" OnClick="btnRediger_Click"  />
        </center>
        </div>
    </form>
    
</body>
</html>
