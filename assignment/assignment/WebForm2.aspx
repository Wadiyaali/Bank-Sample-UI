<%@ Page Title="" Language="C#" MasterPageFile="~/mainnav.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="assignment.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/core.js"></script>

    <link href="new.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <div class="left col-md-6"></div>
         <div class="right col-md-6">
             <form id="f1" class="text-center"  role="form" runat="server">
                 <h1 class="text-center"> Join us today!</h1>
                 <h4 class="font-italic text-center">World's most reliable bank at your service</h4>
                 
                 <div class="form-group formf">
                     <h2 class="text-center"><i class="clas fa fa-3x fa-plus-circle"></i></h2>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" CssClass="col-md-12 text-danger" ControlToValidate="txtpass" runat="server" ErrorMessage="Password requires atleast 1 number, 1 letter." ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{8,}$" ></asp:RegularExpressionValidator>
       <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger col-md-12" ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="Please Enter your name"></asp:RequiredFieldValidator>
                     <asp:RangeValidator ID="RangeValidator1" CssClass="alert-danger col-md-12" runat="server" ErrorMessage="Enter between 18 to 100" ControlToValidate="txtage" MinimumValue="18" MaximumValue="99" Display="Dynamic"></asp:RangeValidator>
             
               <p ><span class="col-form-label"><i class="fa fa-2x fa-user-o"></i></span>
                    <asp:TextBox ID="txtname" runat="server" placeholder="Enter your name"></asp:TextBox>
                    <span class="col-form-label"><i class="fa fa-2x fa-child"></i></span>  
               <asp:TextBox ID="txtage" runat="server" placeholder="Enter your age" MaxLength="2" pattern="\d*" required="required"></asp:TextBox> </p>
           
                     <p ><span class="col-form-label"><i class="fa fa-2x fa-calendar"></i></span>
                    <asp:TextBox ID="txtdob" runat="server" type="date" placeholder="Enter your DoB" required="required" ></asp:TextBox>
                         <span class="col-form-label"><i class="fa fas fa-2x fa-envelope-o"></i></span>
                    <asp:TextBox ID="txtemail" runat="server" placeholder="Enter your email" required="required"></asp:TextBox>
                     </p>
                     
                      <p ><span class="col-form-label"><i class="fa fa-2x fa-address-card-o"></i></span>
                    <asp:TextBox ID="txtphone" runat="server" placeholder="Enter your number" required="required"></asp:TextBox>
                         <span class="col-form-label"><i class="fa fas fa-2x fa-key"></i></span>
                    <asp:TextBox ID="txtpass" runat="server" placeholder="Enter password" required="required"></asp:TextBox>
                               <asp:CustomValidator Display="Dynamic" CssClass="text-center alert-danger" ID="CustomValidator1" ControlToValidate="txtpass" runat="server" ErrorMessage="The password must be 8 digits atleast" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>   
              
                     </p>
                     </div><asp:Button ID="btnSignup"  runat="server" Text="Sign up" CssClass="btn btn2" OnClick="btnSignup_Click" />
                 
          
             
                 <p>

                 </p><p></p>
             </form>
         </div>   
    </div>
 
</asp:Content>
