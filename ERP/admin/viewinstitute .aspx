<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewinstitute.aspx.cs" Inherits="admin_viewinstitute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="rows">
        <div class="col-lg-12">
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>

            <asp:GridView ID="grdinstitute" CssClass="table table-bordered" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="grdinstitute_PageIndexChanging" OnRowCommand="grdinstitute_RowCommand" OnSelectedIndexChanged="grdinstitute_SelectedIndexChanged" OnSelectedIndexChanging="grdinstitute_SelectedIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">                       
                        <ItemTemplate>
                            <%# Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Institute_Name" HeaderText="Institute Name" />
                    <asp:BoundField DataField="Tag_Line" HeaderText="Tag Line" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="District" HeaderText="District" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                   

                      <asp:TemplateField HeaderText="Edit">                        
                        <ItemTemplate>
                            <a href="#" onclick="return confirm('Are You Sure\nyou want to update this record')">
                                <asp:ImageButton ID="ImageButton2" ToolTip="Edit" CommandName="cmdedit" CausesValidation="false" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"Institute_Name") %>' ImageUrl="~/>
                                    images/file-icons/delete1.png" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Delete">                        
                        <ItemTemplate>
                            <a href="#" onclick="return confirm('Are You Sure\nyou want to delete this record')">
                                <asp:ImageButton ID="ImageButton1" ToolTip="Delete" CommandName="cmddelete" CausesValidation="false" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"Institute_Name") %>' ImageUrl="~/>
                                    images/file-icons/delete1.png" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>
            </asp:GridView>

            </div>
        </div>
     

    <div class="rows">

        <div class="col-lg-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title"> View Institute Details</h4>
                  <p class="card-description">
                  
                  </p>
                  <div class="table-responsive pt-3">

        <div class="col-lg-12">

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

