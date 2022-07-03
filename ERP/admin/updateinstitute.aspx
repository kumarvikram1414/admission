<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="updateinstitute.aspx.cs" Inherits="admin_updateinstitute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class ="row">
 

    <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Update Institute Details</h4>

                    <div class="col-2">
         <asp:Label ID="lblinstitute" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
        </div>
                  
                  <%--<form class="forms-sample">--%>
                         <div class="form-group">
                             <label for="exampleInputName"> Institute Name</label>
                             <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                      
                        </div>
                         <div class="form-group">
                              <label for="exampleInputEmail1">Tag Line</label>
                                 <asp:TextBox ID="txttagline" CssClass="form-control" runat="server"></asp:TextBox>
                         </div>
                    
                         <div class="form-group">
                              <label for="exampleInputAddress">Address</label>
                              <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server"></asp:TextBox>
                         </div>
                         <div class="form-group">
                              <label for="exampleInputCity">City</label>
                              <asp:TextBox ID="txtcity" CssClass="form-control" runat="server"></asp:TextBox>
                         </div>


                         <div class="form-group">
                              <label for="exampleInputDistrict">District</label>
                             <asp:TextBox ID="txtdistrict" CssClass="form-control" runat="server"></asp:TextBox>
                         </div>
                         <div class="form-group">
                             <label for="exampleInputState">State</label>
                             <asp:TextBox ID="txtstate" CssClass="form-control" runat="server"></asp:TextBox>
                         </div>
                          <div class="form-group">
                               <label for="exampleInputCountry">Country</label>
                                 <asp:TextBox ID="txtcountry" CssClass="form-control" runat="server"></asp:TextBox>
                          </div>

                             <div class="form-group">
                                 <label for="exampleInputPin">Pin</label>
                                 <asp:TextBox ID="txtpin" CssClass="form-control" runat="server"></asp:TextBox>
                             </div>

                      <div class="form-group">
                             <label for="exampleInputPhone">Phone</label>
                             <asp:TextBox ID="txtphone" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                      <div class="form-group">
                            <label for="exampleInputEmail">Email</label>
                             <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                     </div>
                      <div class="form-group">
                               <label for="exampleInputWebsite">Website</label>
                                <asp:TextBox ID="txtwebsite" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                      <div class="form-group">
                                 <label for="exampleInputCollegecode">College Code</label>
                                 <asp:TextBox ID="txtcollegecode"  CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                     <div class="form-group">
                             <label for="exampleInputContactperson">Contact Person</label>
                             <asp:TextBox ID="txtcontactperson" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                      <div class="form-group">
                             <label for="exampleInputUniversity">University</label>
                             <asp:TextBox ID="txtuniversity" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                      <div class="form-group">
                             <label for="exampleInputUgc">UGC APPROVED</label>
                             <asp:RadioButtonList ID="rblugc" CssClass="form-control" runat="server">
                                  <asp:ListItem Selected="True" Value="1">YES</asp:ListItem>
                                  <asp:ListItem Value="0">No</asp:ListItem>
                             </asp:RadioButtonList>
                    </div>
                      <div class="form-group">
                              <label for="exampleInputAicte">AICTE</label>
                                 <asp:RadioButtonList ID="rblaicte" CssClass="form-control" runat="server">
                                      <asp:ListItem Selected="True" Value="1">YES</asp:ListItem>
                                     <asp:ListItem Value="0">No</asp:ListItem>
                                 </asp:RadioButtonList>
                    </div>
                      <div class="form-group">
                                 <label for="exampleInputDepartment">status</label>
                                 <asp:RadioButtonList ID="rblstatus"  CssClass="form-control" runat="server">
                                 <asp:ListItem Selected="True" Value="1">YES</asp:ListItem>
                                  <asp:ListItem Value="0">No</asp:ListItem>
                                 </asp:RadioButtonList>
                    </div>
                      
                   
                      <div class="form-group">
                      <label for="exampleInputDoe">DOE</label>
                     <asp:TextBox ID="txtdoe" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputuser">User</label>
                      <asp:TextBox ID="txtuser"  CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                      <div class="form-check form-check-flat form-check-primary">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input">
                         confirm
                      </label>
                    </div>
                               <div class="col-4">
             <asp:Button ID="submit" CssClass="btn btn-primary mr-2" runat="server" Text="Submit" OnClick="submit_Click" />
          
             <asp:Button ID="btncancel" runat="server" CssClass="btn btn-light" Text="Cancel" OnClick="btncancel_Click" />

        </div>

                    
                  <%--</form>--%>
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
