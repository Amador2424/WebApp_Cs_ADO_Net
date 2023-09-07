<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebAppDoroLove.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <style>
         body {
        background-color: #F3EBF6;
        font-family: 'Ubuntu', sans-serif;
    }
    
    
    .main {
        background-color: #FFFFFF;
        width: 400px;
        height: 850px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    .sign,.titre1 {
        padding-top: 40px;
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
    }
    
    .un {
    width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        padding-top: 40px;
    }
    
    .pass {
            width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left: 46px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
   
    .un:focus, .pass:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    .submit {
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
        border: 0;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-left: 35%;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    
    .new {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        padding-top: 15px;
    }
    
    a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        text-decoration: none
    }
    .mydropdownlist
{
color: #fff;
font-size: 20px;
padding: 5px 10px;
border-radius: 5px;
background-color: #a97fd8
;
font-weight: bold;
}

.mydropdownlist1
{
color: #fff;
font-size: 20px;
padding: 5px 10px;
border-radius: 5px 12px;
background-color: #a97fd8
;
font-weight: bold;
}
  .main2 {
        background-color: #FFFFFF;
        width: 400px;
        height: 300px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }} 
    </style>
</head>
<body>
   <div class="main">
      <p class="sign" align="center">Sign in</p>
  
      <form class="form1" ID="form1" runat="server">

        <div>
             <label class="titre1">FIRST NAME</label>
             <asp:TextBox ID="txtFirstName" runat="server" CssClass="un" ></asp:TextBox>
             <label class="titre1">LAST NAME</label>
             <asp:TextBox ID="txtLastName" runat="server" CssClass="un" ></asp:TextBox>
            <label class="titre1">USERNAME</label>
             <asp:TextBox ID="txtUsername" runat="server" CssClass="un" ></asp:TextBox>
             <label class="titre1">AGE</label>
             <asp:TextBox ID="txtAge" runat="server" CssClass="un" ></asp:TextBox>
             <label class="titre1">EMAIL</label>
             <asp:TextBox ID="txtEmail" runat="server" CssClass="pass" TextMode="Email"></asp:TextBox>

             <label class="titre1">PASSWORD </label>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmation" ControlToValidate="txtPassword" ErrorMessage="mot de passe incorect">*</asp:CompareValidator>
&nbsp;            <asp:TextBox ID="txtPassword" runat="server" CssClass="pass" TextMode="Password"></asp:TextBox>
             <label class="titre1">CONFIRM</label>
      <asp:TextBox ID="txtConfirmation" runat="server" CssClass="pass" TextMode="Password"></asp:TextBox>
            
      <p class="new" align="center"><a href="#">Forgot password? call us!</a></p>
             <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
          
            </div> </div>


     <div class="main2">
    <p class="sign" align="center">Preferences</p>
  
   
        <div>
           
Quel type de relation recherchez vous ? :
<asp:DropDownList runat="server" ID="ddOrientation" CssClass="mydropdownlist">
<asp:ListItem Text="Un homme recherchant un homme" Value="Un homme recherchant un homme" />
<asp:ListItem Text="Un homme recherchant une femme" Value="Un homme recherchant une femme" />
<asp:ListItem Text="Une femme recherchant une femme" Value="Une femme recherchant une femme" />
<asp:ListItem Text="Une femme recherchant un homme" Value="Une femme recherchant un homme" />
<asp:ListItem Text="bisexuel" Value="bisexuel" />

</asp:DropDownList>
<br />
<br />
Quels activités appreciez vous le plus?  :
<asp:DropDownList runat="server" ID="ddLoisir" CssClass="mydropdownlist1">
<asp:ListItem Text="le sport" Value="le sport" />
<asp:ListItem Text="la musique" Value="la musique" />
<asp:ListItem Text="instagram" Value="instagram" />
<asp:ListItem Text="cinema" Value="cinema" />
<asp:ListItem Text="jeux vidéo" Value="jeux vidéo" />

</asp:DropDownList>
<br />
                    <asp:Button ID="btnSubmitAll" runat="server" CssClass="submit" Text="Login" OnClick="btnSubmitAll_Click"    />

        </div>
    </form>
</body>
</html>
