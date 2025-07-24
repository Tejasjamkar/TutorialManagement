<%@ Page Title="" Language="C#" MasterPageFile="~/tms_site.Master" AutoEventWireup="true" CodeBehind="tutor_signup.aspx.cs" Inherits="tms_project.tutor_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" style="box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -webkit-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75); -moz-box-shadow: -2px 2px 29px 1px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="jumbotron bg-primary text-white text-center">Tutor SignUp</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="Nametextbox" CssClass="form-control" placeholder="Enter Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Nametextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>


                <br />
                <asp:TextBox ID="surnametxt" CssClass="form-control" placeholder="Enter Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="surnametxt" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Surname is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GenderDropDownList1" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select Gender" ControlToValidate="GenderDropDownList1" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Gender is Required"></asp:RequiredFieldValidator>

                <br />

                <asp:TextBox ID="Agetextbox" CssClass="form-control" placeholder="Enter an Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Agetextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be within 20 to 80" ForeColor="Red" ControlToValidate="Agetextbox" Display="Dynamic" MaximumValue="80" MinimumValue="20" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                <br />
                <asp:TextBox ID="emailtextbox" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="emailtextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="emailtextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Email is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:DropDownList ID="Marital_status" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Marital Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Separated</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" InitialValue="Select Marital Status" ControlToValidate="Marital_status" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Marital Status is Required"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-4">


                <asp:TextBox ID="Countrytextbox" CssClass="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="Countrytextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Countryname is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="Citytextbox" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="Citytextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="Addresstext" TextMode="MultiLine" Rows="6" Columns="20" CssClass="form-control" placeholder="Enter Full Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="Addresstext" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="Qualification" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Masters</asp:ListItem>
                    <asp:ListItem>Mphil</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" InitialValue="Select Qualification" ControlToValidate="Qualification" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Qualification is Required"></asp:RequiredFieldValidator>

                <br />


            </div>
            <div class="col-md-4">
                <asp:TextBox ID="Degreetextbox" CssClass="form-control" placeholder="Enter Degree" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="Degreetextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Degree is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="Experiencetextbox" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>Below 1 year</asp:ListItem>
                    <asp:ListItem>1 year</asp:ListItem>
                    <asp:ListItem>2 year</asp:ListItem>
                    <asp:ListItem>3 year</asp:ListItem>
                    <asp:ListItem>4 year</asp:ListItem>
                    <asp:ListItem>5+ year</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" InitialValue="Select Experience" ControlToValidate="Experiencetextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Experience is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="Contacttextbox" CssClass="form-control" placeholder="Enter Contact" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="Contacttextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Contact No. is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="UsernametextBox" CssClass="form-control" placeholder="Enter a Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="UsernametextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="PasswordtextBox" CssClass="form-control" placeholder="Enter a Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="PasswordtextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordtextBox" runat="server" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ErrorMessage="Please Enter Strong Password" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="Confirmpassword" CssClass="form-control" placeholder="Re-enter Passsword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="Confirmpassword" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="Confirmpassword" ControlToCompare="PasswordtextBox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Both Password Must Be Identical"></asp:CompareValidator>

            </div>
        </div>
        <br />
        <div class="row">

            <div class="col-md-4 mx-auto">

                <asp:Button ID="Tutorsignupbutton" OnClick="Tutorsignupbutton_Click" runat="server" Text="Signup" CssClass="btn btn-primary btn-block" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto text-center">


                <a href="student_signup.aspx" class="btn btn-success">SignUp as Student</a>
                <a href="tutor_signup.aspx" class="btn btn-info">SignUp as Tutor</a>
            </div>
        </div>
        <br />
    </div>


    <br />


</asp:Content>
