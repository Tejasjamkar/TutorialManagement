﻿<%@ Page Title="" Language="C#" MasterPageFile="~/tms_site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="tms_project.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    function SuccessContact()
    {
        Swal.fire({
            title: "Success",
            text: "Form has been Submitted Successfully!!",
            icon: "success"
        });
    }

    function ErrorContact() {
        Swal.fire({
            title: "Failure",
            text: "Form insertion Failed!!",
            icon: "error"
        });
    }
</script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Contact</h2>
                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li>Contact</li>
                </ol>
            </div>

        </div>
    </section>
    <!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
        <div class="container">

            <div class="row">

                <div class="col-lg-6">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="info-box">
                                <i class="bx bx-map"></i>
                                <h3>Our Address</h3>
                                <p>A108 Adam Street, New York, NY 535022</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-envelope"></i>
                                <h3>Email Us</h3>
                                <p>info@example.com<br>
                                    contact@example.com</p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info-box">
                                <i class="bx bx-phone-call"></i>
                                <h3>Call Us</h3>
                                <p>+1 5589 55488 55<br>
                                    +1 6678 254445 41</p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6">
                   
                        <div class="form-row">
                            <div class="col-md-6 form-group">
                                <%--                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />--%>
                                <asp:TextBox ID="nametextbox" type="text" name="name" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" ControlToValidate="nametextbox"   ForeColor="Red" SetFocusOnError="true" display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                                </div>
                            <div class="col-md-6 form-group">
                                <%--                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />--%>
                                <asp:TextBox ID="emailtextbox" runat="server" type="email" class="form-control" name="email" placeholder="Your Email"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="Requiredfieldvalidator2" ControlToValidate="emailtextbox"   ForeColor="Red" SetFocusOnError="true" display="Dynamic" runat="server" ErrorMessage="email  is Required"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="emailtextbox" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" runat="server" ErrorMessage="Invalid email!!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                        </div>
                        <div class="form-group">
                            <%-- <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />--%>
                           <%-- <asp:TextBox ID="subjecttextbox" runat="server" type="text" class="form-control" placeholder="Subject"></asp:TextBox>--%>
                            <asp:DropDownList ID="SubjectDropDownList" class="form-control" runat="server">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Suggestion</asp:ListItem>
                                <asp:ListItem>Complaint</asp:ListItem>
                                <asp:ListItem>Feedback</asp:ListItem>
                            </asp:DropDownList>
                                 <asp:RequiredFieldValidator InitialValue="Select" ID="Requiredfieldvalidator3" ControlToValidate="SubjectDropDownList"   ForeColor="Red" SetFocusOnError="true" display="Dynamic" runat="server" ErrorMessage="subject  is Required"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <%-- <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>--%>
                            <asp:TextBox ID="messagetextbox" TextMode="MultiLine" class="form-control" Columns="50" Rows="5" runat="server" type="text" placeholder="Message"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="Requiredfieldvalidator4" ControlToValidate="messagetextbox"   ForeColor="Red" SetFocusOnError="true" display="Dynamic" runat="server" ErrorMessage="email  is Required"></asp:RequiredFieldValidator>

                            </div>
                        <%--<div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>--%>
                        <div class="text-center">

                            <asp:Button CssClass="btn btn-info" ID="submitbutton" runat="server" Text="Submit" OnClick="submitbutton_Click" />
                        </div>
                 
                </div>

            </div>

        </div>
    </section>
    <!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
    <section class="map mt-2">
        <div class="container-fluid p-0">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3024.2219901290355!2d-74.00369368400567!3d40.71312937933185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a23e28c1191%3A0x49f75d3281df052a!2s150%20Park%20Row%2C%20New%20York%2C%20NY%2010007%2C%20USA!5e0!3m2!1sen!2sbg!4v1579767901424!5m2!1sen!2sbg" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
        </div>
    </section>
    <!-- End Map Section -->

</asp:Content>
