<%@ Page Title="" Language="C#" MasterPageFile="~/mainnav.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="assignment.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="new.css" rel="stylesheet" />
    <link href="new.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bg2">
       <div class="wrap">
          <form role="form" runat="server">
              <div class="container container-fluid">
                  <h1 class="text-center"> Easy E-Loan</h1>
                    <asp:GridView ID="GridView1" runat="server" Width="1000px" ForeColor="White">
                        <HeaderStyle BorderColor="Black" BorderWidth="2px" ForeColor="White" />
                        <RowStyle BackColor="#000099" />
                        <SelectedRowStyle BackColor="#0066FF" />
                  </asp:GridView>
                  <div class="in">
                    <p><label class="col-form-label-lg text-white col-md-4">Customer Name</label>
                      <asp:DropDownList  ID="DropDownList1" CssClass="list" runat="server" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="id"  OnSelectedIndexChanged="DropDownList1_TextChanged" AutoPostBack="true" >
                          <asp:ListItem  Value="0">-------Select a name------</asp:ListItem>
                      </asp:DropDownList></p>
                
                      
                  <p>
                 
                  <label class="col-form-label-lg text-white col-md-4">Salary</label>
                  <input type="text" id="txtsalary" runat="server" placeholder="60000" /></p>
                      <p><label class="col-form-label-lg text-white col-md-4">Per Month:</label>
                  <input type="text" id="txtpm" runat="server" placeholder="60000" /></p>
                      <p><label class="col-form-label-lg text-white col-md-4">Interest</label>
                  <input type="text" runat="server" id="txtint" placeholder="60000" /></p>
                      <p>
                          <label class="col-form-label-lg text-white col-md-4">No of Year</label>
                  <input type="text" id="txtnoofyr" runat="server" placeholder="60000" />
                      </p>
                  </div>
                  <div class="in2">  <p><asp:Label ID="lblid" runat="server" CssClass="lbl" Text="Customer ID"></asp:Label></p>

                     <p><asp:Label ID="lblage" CssClass="col-form-label-lg lbl " runat="server" Text="Age"></asp:Label></p> 
                      <p><asp:Label ID="lblphone" CssClass="lbl" runat="server" Text="Phone"></asp:Label></p>
                    <p> <asp:Label ID="lblemail" CssClass="lbl" runat="server" Text="Email"></asp:Label></p>
                    <p> <asp:Label ID="lbldob" CssClass="lbl" runat="server" Text="Date of Birth"></asp:Label></p> 
                    <p></p>
                      <p>
                          <asp:Button ID="btnLoan" CssClass="btn btn2" runat="server" Text="Loan" OnClick="btnLoan_Click" />
                      </p>
                     
                  </div>
                 
              </div>
              
          </form>

       </div>
    </div>
</asp:Content>
