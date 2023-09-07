<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lireMessage.aspx.cs" Inherits="WebAppDoroLove.lireMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
        h1 {
            text-align: center;
        }
        hr{
            width: 440px;
        }
        .hiphop{font-weight:bold; background-color:aqua; width:400px; height:400px;border-radius:15px;}
    </style>
</head>
<body style="height: 146px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>DoroLove</h1>
            <hr/>
           
            <center><asp:label ID="lblMessage" runat="server" CssClass="hiphop" ></asp:label>
</center>
            
          </form>
        </div>
</body>
</html>
