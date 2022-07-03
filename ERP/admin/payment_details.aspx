<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master"  AutoEventWireup="true" CodeFile="payment_details.aspx.cs" Inherits="admin_payment_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class ="row">
        

   <div class="main-panel">
            <div class="content-wrapper">
                <div class="row col-12 d-flex justify-content-center">
                    <div class="col-md-8 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title text-center mb-4">Payment details</h4>

                               <!-- <form class="forms-sample">-->
                                 <asp:Label ID="lblinstitute" runat="server" Text=""></asp:Label>
                                    <!--FormStart-->
                                     
                                
                                    <div class="col-20">
      
                                        <asp:Label ID="lblmsg" runat="server" Text="">payment method</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="paymentmathod" CssClass="form-control" runat="server" placeholder="payment method"> </asp:TextBox>
                                        </div>
                                    </div>
                                 <div class="col-20">
      
                                 <asp:Label ID="Label1" runat="server" Text="">payment amount</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="paymentamount" CssClass="form-control" runat="server" placeholder="payment amount"> </asp:TextBox>
                                        </div>
                                    </div>
                                 
                                 <div class="col-20">
      
                         <asp:Label ID="Label3" runat="server" Text="">payment date</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="paymentdate" CssClass="form-control" runat="server" placeholder="payment date"> </asp:TextBox>
                                        </div>
                                    </div>
                                 <div class="col-20">
      
                      <asp:Label ID="Label4" runat="server" Text="">payment maker name</asp:Label>
                                        <div class="col-60">
                                            <asp:TextBox ID="paymentmakername" CssClass="form-control" runat="server" placeholder="payment maker name"> </asp:TextBox>
                                        </div>
                                    </div>
                                       <div class="col-3">
                                            status
                                       </div>

        <div class="col-3">
            <asp:RadioButtonList ID="status" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="1">YES</asp:ListItem>
                <asp:ListItem Value="0">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>

   
                    <button class="btn btn-light"><a href="docs.aspx">Back</a></button>
                                  <asp:Button Text="Submit" runat="server" OnClick="btnlogin_Click"></asp:Button>
          
                 
                </div>
              </div>
</div>
</div>
</div>
       </div>
        </div>
</asp:content>