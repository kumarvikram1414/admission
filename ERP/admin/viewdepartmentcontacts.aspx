<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewdepartmentcontacts.aspx.cs" Inherits="admin_viewdepartmentcontacts" %>

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
                  <h4 class="card-title"> View Department Contacts</h4>
                  <p class="card-description">
                  
                  </p>
                  <div class="table-responsive pt-3">

        <div class="col-lg-12">

            <asp:GridView ID="grddepartmentcontacts"  runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">                       
                        <ItemTemplate>
                            <%# Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:BoundField DataField="Department_Id" HeaderText="Department_Id" />
                    <asp:BoundField DataField="institute_id" HeaderText="institute_id" />
                    <asp:BoundField DataField="Frist_Name" HeaderText="Frist_Name" />
                    <asp:BoundField DataField="Middle_Name" HeaderText="Middle_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" />
                    <asp:BoundField DataField="Age" HeaderText="Age" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />

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
