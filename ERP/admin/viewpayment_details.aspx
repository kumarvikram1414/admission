<%@Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewpayment_details.aspx.cs" Inherits="admin_viewpayment_details" %>
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
                  <h4 class="card-title">View Payment Details </h4>
                  <p class="card-description">
                  
                  </p>
                  <div class="table-responsive pt-3">

        <div class="col-lg-12">

            <asp:GridView ID="grdpayment_details"  runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="S.No">                       
                        <ItemTemplate>
                            <%# Container.DataItemIndex+1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="institute_id" HeaderText="institute_id" />
                    <asp:BoundField DataField="payment_mathord" HeaderText="payment_mathord" />
                    <asp:BoundField DataField="payment_amount" HeaderText="payment_amount" />
                    <asp:BoundField DataField="payment_date" HeaderText="payment_date" />
                    <asp:BoundField DataField="payment_maker_name" HeaderText="payment_maker_name" />
                    <asp:BoundField DataField="status" HeaderText="status" />
                   
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

