
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchUser.aspx.cs" Inherits="WebAppDoroLove.SearchUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins', sans-serif;
        }
        .container{
            width:100%;
            min-height:100vh;
            padding:5%;
            background-image:linear-gradient(rgba(0,8,51,0.9),rgba(0,8,51,0.9)), url(img/background.jpg);
            background-position:top;
            background-size:cover;
            display:flex;
            justify-content:center;
            align-items:flex-start;
        }
        .search{
            width:100%;
            max-width:700px;
            background:rgba(255,255,255,0.2);
            display:flex;
            align-items:center;
            border-radius:60px;
            padding:10px 20px;

        }
        .txtZoneText{
            background:transparent;
            flex:1;
            border:0;
            outline:none;
            padding:24px 20px;
            font-size:20px;
            color:#cac7ff;

        }
        .btnSearch{
           border:0px;
           border-radius:50%;
           width:60px;
           height:60px;
           background:#58629b;
            
        }
        
      
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="search">
        
            <asp:TextBox runat="server" CssClass="txtZoneText" placeholder="Find your match"></asp:TextBox>
       
<button><asp:ImageButton runat="server" CssClass="btnSearch" ImageUrl="~/img/search.png" Width="60px" ></asp:ImageButton></button>

        
    </form>
        </div>
    <div>

        <asp:ListBox ID="lstUser" runat="server" OnSelectedIndexChanged="lstUser_SelectedIndexChanged"></asp:ListBox>

    </div>
</body>
</html>
