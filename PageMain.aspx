<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageMain.aspx.cs" Inherits="WebAppDoroLove.PageMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .hero {
            width: 100%;
            height: 100vh;
            background-image: linear-gradient(rgba(12,3,51,0.3), rgba(12,3,51,0.3));
            position: relative;
            padding: 0 5%;
            display: flex;
            align-items: center;
            justify-content:center;
        }
        nav{
            width:100%;
            position: absolute;
            top:0;
            right:0;
            padding: 20px 8%;
            display: flex;
            align-items: center;
            justify-content:space-between;
        }
        nav .logo{
            width:80px;
        }
        nav ul li{
            list-style: none;
            display:inline-block;
            margin-left:70px;
        }
        nav ul li a{
            text-decoration: none;
            color:#fff;
            font-size:17px;
          
        }
        .content{
            text-align:center;
        }
        .content h1 {
            font-size: 160px;
            color: #fff;
            font-weight: 600;
            transition:0.5s;
        }
         .content h1:hover{
             -webkit-text-stroke:2px #fff;
             color: transparent;
         }
        .content a{
            text-decoration:none;
            color:#fff;
            display:inline-block;
            font-size:24px;
            border: 2px solid #fff;
            padding: 14px 70px;
            border-radius:50px;
            margin-top:20px
        }
        .video{
            position:absolute;
            right:0;
            bottom:0;
            z-index:-1;
        }
        @media(min-aspect-ratio:16/9){
            .video{
                width:100%;
                height:auto;
            }
        }
         @media(max-aspect-ratio:16/9){
            .video{
                width:auto;
                height:100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="hero">
           <video autoplay="autoplay" loop="loop" muted="muted"  class="video" >
               <source src="img/font.mp4" type="video/mp4"/>
           </video>
           <nav>
           <img src="img/l.jpg" class="logo" />
           <ul>
               <li><a href="#">HOME</a></li>
               <li><a href="#">ABOUT US</a></li>
               <li><a href="#">CONTACT US</a></li> 
              
</ul>

                          </nav>
            <div class="content">
            <h1>DoroLove</h1>
            <a href="register.aspx">Inscription</a>
            <a href="login.aspx">Connexion</a>
        </div>
</div>
       
    </form>
</body>
</html>
