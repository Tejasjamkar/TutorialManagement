<%@ Page Title="" Language="C#" MasterPageFile="~/tms_site.Master" AutoEventWireup="true" CodeBehind="tutor_login.aspx.cs" Inherits="tms_project.tutor_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
 <div class="container">
     <div class="row">
         <div class="col-md-4 mx-auto" style="box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);">
             <br />
             <div class="jumbotron text-center text-white bg-primary">
                 <h2>Tutor Login</h2>
             </div>
             <asp:TextBox ID="Usernametxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Usernametxt" ForeColor="Red" SetFocusOnError="true" runat="server" Display="Dynamic" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>
             <br />
             <asp:TextBox ID="Passwordtxt" placeholder="Enter Password" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Passwordtxt" ForeColor="Red" SetFocusOnError="true" runat="server" Display="Dynamic" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>

             <br />
             <asp:Button ID="tutot_loginbtn" OnClick="tutot_loginbtn_Click" Text="login" runat="server" CssClass="btn btn-primary btn-block" />
             <div class="text-center">

                 <a href="student_login.aspx" class="text-center">Login as Student</a>
             </div>
             <br />
         </div>
     </div>
 </div>
 <br />
</asp:Content>
