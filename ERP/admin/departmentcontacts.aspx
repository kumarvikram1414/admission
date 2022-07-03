<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="departmentcontacts.aspx.cs" Inherits="admin_departmentcontacts" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="row">
         
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row col-12 d-flex justify-content-center">
                    <div class="col-md-8 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title text-center mb-4">DEPARTMENT CONTACTS</h4>

                               <!-- <form class="forms-sample">-->
                                 <asp:Label ID="lblinstitute" runat="server" Text=""></asp:Label>
                                    <!--FormStart-->
                                <div class="col-20">
                                        <asp:Label ID="Label1" runat="server" Text="">Department Id</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Departmentid" CssClass="form-control" runat="server" placeholder="Enter your Department id"> </asp:TextBox>
                                        </div>
                                    </div>
                              
                                <div class="col-20">
                                        <asp:Label ID="Label8" runat="server" Text="">Institute id</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="institute_id" CssClass="form-control" runat="server" placeholder="Enter your institute id"> </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-20">
                                        <asp:Label ID="lblmsg" runat="server" Text="">First Name</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Fristname" CssClass="form-control" runat="server" placeholder="Enter your first name"> </asp:TextBox>
                                        </div>
                                    </div>
                                  <div class="col-20">
                                        <asp:Label ID="Label2" runat="server" Text="">Middle Name</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Middlename" CssClass="form-control" runat="server" placeholder="Enter your Middle Name"> </asp:TextBox>
                                        </div>
                                    </div>
                                  <div class="col-20">
                                        <asp:Label ID="Label3" runat="server" Text="">Last Name</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Lastname" CssClass="form-control" runat="server" placeholder="Enter your Last Name"> </asp:TextBox>
                                        </div>

                                    <div class="col-20">
                                        <asp:Label ID="Label6" runat="server" Text="">Mobile</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Mobile" CssClass="form-control" runat="server" placeholder="Enter your Mobile"> </asp:TextBox>
                                        </div>
                                    
                                      </div>  <div class="col-20">
                                        <asp:Label ID="Label4" runat="server" Text="">Email Id</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Emailid" CssClass="form-control" runat="server" placeholder="Enter your Email Id"> </asp:TextBox>
                                        </div>
                                           </div>  <div class="col-20">
                                        <asp:Label ID="Label7" runat="server" Text="">Age</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Age" CssClass="form-control" runat="server" placeholder="Enter your Age"> </asp:TextBox>
                                        </div>
                                    </div>
                                      </div>  <div class="col-20">
                                        <asp:Label ID="Label5" runat="server" Text="">Status</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="Status" CssClass="form-control" runat="server" placeholder="Enter your Status"> </asp:TextBox>
                                        </div>
                                    </div>      
          
                                      
                                  <asp:Button ID="submit" CssClass="btn btn-primary mr-2" runat="server" Text="Submit" OnClick="btnlogin_Click" />
          
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
   </div>
</asp:Content>

