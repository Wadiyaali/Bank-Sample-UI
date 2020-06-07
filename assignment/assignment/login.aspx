<%@ Page Title="" Language="C#" MasterPageFile="~/mainnav.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="assignment.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/core.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="login">
        <div class="left col-md-6"></div>
         <div class="right col-md-6">
             <form id="f1" class="text-center"  role="form" runat="server">
                 <h1 class="text-center"> Welcome!</h1>
                 <h4 class="font-italic text-center">We are pleased to have you back.</h4>
                 
                 <div class="form-group formf">
                     <h2 class="text-center"><i class="clas fa fa-3x fa-user-circle-o"></i></h2>
                     <p class="text-center col-md-12" style="margin:0; font-size:1.3em;">  <asp:Label ID="Label1" runat="server" display="Dynamic" Enabled="false" Text="" CssClass="form-check-label text-danger"></asp:Label>
                   </p> 
               <p ><span class="col-form-label"><i class="fa fa-2x fa-user-o"></i></span>
                    <asp:TextBox ID="txtname" type="email" CssClass="more" runat="server" placeholder="Email"></asp:TextBox>
                   </p>
                     
                     
                      <p >
                         <span class="col-form-label"><i class="fa fas fa-2x fa-key"></i></span>
                    <asp:TextBox ID="txtpass" CssClass="more" runat="server" placeholder="Enter password" required="required"></asp:TextBox>
                    <span><i class="btn btn-lg fa fa-5x fa-eye" id="eye"></i></span> </p>
                    </div><asp:Button ID="btnlogIn" runat="server" Text="Log In" CssClass="btn btn2" OnClick="btnlogIn_Click"  />
                 
         <p></p>
                 <p></p> <p></p>
             
             </form>
         </div>   
    </div>
    
</asp:Content>
