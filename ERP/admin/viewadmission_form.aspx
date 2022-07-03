<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewadmission_form.aspx.cs" Inherits="admin_viewadmission_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">




    <div class="rowss">
        <div class="col-lg-12">
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            </div>
        </di>
     

    <div class="rows">

        <div class="col-lg-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title"> View Admission form</h4>
                  <p class="card-description">
                  
                  </p>
                  <div class="table-responsive pt-3">

        <div class="col-lg-12">

            <asp:GridView ID="grdadmission_form"  runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">                       
                        <ItemTemplate>
                            <%# Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="institute_id" HeaderText="institute_id" />
                    <asp:BoundField DataField="s_firstname" HeaderText="s_firstname" />
                    <asp:BoundField DataField="s_midname" HeaderText="s_midname" />
                    <asp:BoundField DataField="s_lastname" HeaderText="s_lastname" />
                    <asp:BoundField DataField="s_fathername" HeaderText="s_fathername" />
                    <asp:BoundField DataField="s_mothername" HeaderText="s_mothername" />
                    <asp:BoundField DataField="s_dob" HeaderText="s_dob" />
                    <asp:BoundField DataField="s_aadharno" HeaderText="s_aadharno" />
                    <asp:BoundField DataField="s_mobileno" HeaderText="s_mobileno" />
                    <asp:BoundField DataField="s_gardianname" HeaderText="s_gardianname" />
                    <asp:BoundField DataField="s_gardianmobileno" HeaderText="s_gardianmobileno" />
                    <asp:BoundField DataField="s_aadress" HeaderText="s_aadress" />
                    <asp:BoundField DataField="s_county_id" HeaderText="s_county_id" />
                    <asp:BoundField DataField="s_state_id" HeaderText="s_state_id" />
                    <asp:BoundField DataField="s_district_id" HeaderText="s_district_id" />
                    <asp:BoundField DataField="s_city" HeaderText="s_city" />
                    <asp:BoundField DataField="s_block" HeaderText="s_block" />
                    <asp:BoundField DataField="s_ps" HeaderText="s_ps" />
                    <asp:BoundField DataField="s_pin" HeaderText="s_pin" />
                    <asp:BoundField DataField="s_email" HeaderText="s_email" />
                    <asp:BoundField DataField="s_status" HeaderText="s_status" />
                    <asp:BoundField DataField="s_gender" HeaderText="s_gender" />
                   
                   <asp:TemplateField HeaderText="Edit">                        
                        <ItemTemplate>
                            <a href="#" onclick="return confirm('Are You Sure\nyou want to update this record')">
                                <asp:ImageButton ID="ImageButton2" ToolTip="Edit" CommandName="cmdedit" CausesValidation="false" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"institute_id") %>' ImageUrl="~/>
                                    images/file-icons/edit.png" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                       <asp:TemplateField HeaderText="Delete">                        
                        <ItemTemplate>
                            <a href="#" onclick="return confirm('Are You Sure\nyou want to delete this record')">
                                <asp:ImageButton ID="ImageButton1" ToolTip="Delete" CommandName="cmddelete" CausesValidation="false" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"institute_id") %>' ImageUrl="~/>
                                    images/file-icons/edit.png" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>


                   

                </Columns>
            </asp:GridView>

        </div>
                      </div>
                    </div>
                  </div></div>

    </div>

      <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
</asp:Content>

