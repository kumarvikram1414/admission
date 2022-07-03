<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="admission_form.aspx.cs" Inherits="admin_admission_form" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row col-16 d-flex justify-content-center">
                    <div class="col-md-16 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title text-center mb-4">Admission form</h4>

                               <!-- <form class="forms-sample">-->
                                 <asp:Label ID="lbladmission_form" runat="server" Text=""></asp:Label>
                                 <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
                                    <!--FormStart-->
                                   <div class="row col-12">
                               
                           
                                    <div class="col-4">
                                        <asp:Label ID="lblmsg" runat="server" Text="">First Name</asp:Label>
                                        <div class="col-6">
                                            <asp:TextBox ID="firstname" CssClass="form-control" runat="server" placeholder="Enter your first name"> </asp:TextBox>
                                        </div>
                                    </div>
                          
                                    <div class="col-4">
                                        <asp:Label ID="Label2" runat="server" Text="">Middle Name</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="midname" CssClass="form-control"  runat="server"  placeholder="Enter your Middle name"> </asp:TextBox>
                                        </div>
                                    </div>
                                   
                                    <div class="col-4">
                                        <asp:Label ID="Label3" runat="server" Text="">Last Name</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="lastname" CssClass="form-control"  runat="server"  placeholder="Enter your Last name"> </asp:TextBox>
                                        </div>
                                    </div>

                                </div>

                       <div class="row col-12">

                                    <div class="clo-6">
                                        <asp:Label ID="Label4" runat="server" Text="">Father Name</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="fathername" CssClass="form-control"  runat="server" MaxLength="200" placeholder="Enter your Father Name"> </asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="col-6">
                                        <asp:Label ID="Label5" runat="server" Text="">Mother Name</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="mothername" CssClass="form-control" runat="server"  placeholder="Enter your Mother Name"> </asp:TextBox>
                                        </div>
                                    </div>
                                    </div>
                                 <div class="row col-12">
                                    <div class="col-4">
                                        <asp:Label ID="Label6" runat="server" Text="">DOB</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="dob" CssClass="form-control"  runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-4">
                                        <asp:Label ID="Label7" runat="server" Text="">Adhar no.</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="adharno" CssClass="form-control" runat="server"  placeholder="Enter Adhar no."> </asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-4">
                                        <asp:Label ID="Label8" runat="server" Text="">Mobile no.</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="mobileno" CssClass="form-control" runat="server"  placeholder="Enter Mobile no."> </asp:TextBox>
                                        </div>
                                    </div>
                                     </div>
                                <div class="row col-12">

                                    <div class="col-6">
                                        <asp:Label ID="Label9" runat="server" Text="">Guardian Name</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="guardianname" CssClass="form-control"  runat="server"  placeholder="Enter Guardian Name"> </asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-6">
                                        <asp:Label ID="Label10" runat="server" Text="">Guardian Mobile No.</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="guardianmobileno" CssClass="form-control" runat="server"  placeholder="Enter Guardian Mobile No."> </asp:TextBox>
                                        </div>
                                    </div>
                                    </div>
                                 <div class="row col-12">
                                    <div class="col-6">
                                        <asp:Label ID="Label11" runat="server" Text="">Address</asp:Label>
                                        <div class="col-10">
                                            <asp:TextBox ID="address" CssClass="form-control" runat="server"  placeholder="Enter your Address"> </asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-6">
                                        
                           Country
                     </div>
        <div class="col-10">
            <asp:RadioButtonList ID="country" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="India" Value="1">YES</asp:ListItem>
                <asp:ListItem Value="Out of India">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>
                      
                                    </div>
                                    
                                    <div class="col-20">
                                        <div class="col-100">
                          State 
                       </div>
        
         <div class="col-100">
             <asp:DropDownList ID="state" CssClass="form-control" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>6</asp:ListItem>
                 <asp:ListItem>Andhra Pradesh</asp:ListItem>
                 <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                 <asp:ListItem>Assam</asp:ListItem>
                 <asp:ListItem>Bihar</asp:ListItem>
                 <asp:ListItem>Chhattisgarh</asp:ListItem>
                 <asp:ListItem>Goa</asp:ListItem>
                 <asp:ListItem>Gujarat</asp:ListItem>
                 <asp:ListItem>Haryana</asp:ListItem>
                 <asp:ListItem>Himachal Pradesh</asp:ListItem>
                 <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Mizoram</asp:ListItem>
                <asp:ListItem>Nagaland</asp:ListItem>
                <asp:ListItem>Odisha</asp:ListItem>
                <asp:ListItem>Rajasthan</asp:ListItem>
                <asp:ListItem>Sikkim</asp:ListItem>
                  <asp:ListItem>Tamil Nadu</asp:ListItem>
               <asp:ListItem>Telangana</asp:ListItem>
                  <asp:ListItem>Uttar Pradesh</asp:ListItem> 
                 <asp:ListItem>Uttarakhand</asp:ListItem>
                  <asp:ListItem>West Benhal</asp:ListItem>
            </asp:DropDownList>
        </div>
                     
                                    </div>

                                    <div class="col-20">
                                         <div class="col-100">
                           District
                     </div>
        
         <div class="col-100">
             <asp:DropDownList ID="district" CssClass="form-control" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>Bokaro</asp:ListItem>
                <asp:ListItem>Chatra</asp:ListItem>
                <asp:ListItem>Deoghar</asp:ListItem>
                <asp:ListItem>Dhanbad</asp:ListItem>
                <asp:ListItem>Dumka</asp:ListItem>
                <asp:ListItem>Garwa</asp:ListItem>
                <asp:ListItem>Giridih</asp:ListItem>
                <asp:ListItem>Gumla</asp:ListItem>
                <asp:ListItem>Hazaribag</asp:ListItem>
                <asp:ListItem>Jamtara</asp:ListItem>
                <asp:ListItem>Koderma</asp:ListItem>
                  <asp:ListItem>Latehar</asp:ListItem>
               <asp:ListItem>Lohardaga</asp:ListItem>
                <asp:ListItem>Palamu</asp:ListItem>
                <asp:ListItem>Ramgarh</asp:ListItem>
                <asp:ListItem>Ranchi</asp:ListItem>
                <asp:ListItem>Sahibganj</asp:ListItem>
                <asp:ListItem>Simdega</asp:ListItem>
               
                  
            </asp:DropDownList>
             </div>
                                    </div>

                                    <div class="col-20">
                                       <div class="col-100">
                           City
                     </div>
        
         <div class="col-100">
             <asp:DropDownList ID="city" CssClass="form-control" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Ranchi</asp:ListItem>
                <asp:ListItem>Jamshedpur</asp:ListItem>
                <asp:ListItem>Gaya</asp:ListItem>
                <asp:ListItem>Jammu</asp:ListItem>
                <asp:ListItem>Dehradun</asp:ListItem>
                <asp:ListItem>Noida</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Chandigarh</asp:ListItem>
                <asp:ListItem>Allahabad</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                  <asp:ListItem>Bangalore</asp:ListItem>
               <asp:ListItem>Hyderabad</asp:ListItem>
                  <asp:ListItem>Chennai</asp:ListItem>
                  <asp:ListItem>Kolkata</asp:ListItem>
            </asp:DropDownList>
        </div>
                                    </div>

                                    <div class="col-20">
                                        <asp:Label ID="Label16" runat="server" Text="">BLock</asp:Label>
                                        <div class="col-100">
                                            <asp:TextBox ID="block" CssClass="form-control" runat="server" MaxLength="300" placeholder="Enter your BLock"> </asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="col-20">
                                        <asp:Label ID="Label17" runat="server" Text="">PS</asp:Label>
                                        <div class="col-100">
                                            <asp:TextBox ID="ps" CssClass="form-control" runat="server" MaxLength="300" placeholder="Enter your PO"> </asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-20">
                                        <asp:Label ID="Label18" runat="server" Text="">Pin</asp:Label>
                                        <div class="col-100">
                                            <asp:TextBox ID="pin" CssClass="form-control" runat="server" MaxLength="300" placeholder="Enter your pin"> </asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-20">
                                        <asp:Label ID="Label19" runat="server" Text="">Email</asp:Label>
                                        <div class="col-100">
                                            <asp:TextBox ID="email" CssClass="form-control" runat="server" MaxLength="300" placeholder="Enter your Email"> </asp:TextBox>
                                        </div>
                                    </div>

        <div class="col-4">
            status
        </div>

        <div class="col-2">
            <asp:RadioButtonList ID="status" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="1">YES</asp:ListItem>
                <asp:ListItem Value="0">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="col-4">
            gender
        </div>

        <div class="col-2">
            <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="Male">YES</asp:ListItem>
                <asp:ListItem Value="Female">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>
 <div class="col-20">
                                        <asp:Label ID="Label12" runat="server" Text="">Users</asp:Label>
                                        <div class="col-100">
                                            <asp:TextBox ID="users" CssClass="form-control" runat="server" MaxLength="300" placeholder="Enter users name"> </asp:TextBox>
                                        </div>
                                    </div>
                                     
                                  <asp:Button ID="submit" CssClass="btn btn-primary mr-2" runat="server" Text="Submit" OnClick="btnlogin_Click" />
          
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
                                        </div>
                                        <!--Formend-->
                                        </div>
                               <!-- </form>-->
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:../../partials/_footer.html -->

            <!-- partial -->
        </div>

    </div>

</asp:Content>

