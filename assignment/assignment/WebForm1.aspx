<%@ Page Title="" Language="C#" MasterPageFile="~/mainnav.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="assignment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="new.css" rel="stylesheet" />
     <%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg1">
       <div class="val">
         <h1>Just One Click Away...</h1>
           <button class="btn btn1 " onclick="window.open('WebForm2.aspx','_self')">
        Create account
           </button>
           <button class="btn btn2 " onclick="window.open('login.aspx','_self')">
              Login
           </button>  
       </div>
    </div>
</asp:Content>
