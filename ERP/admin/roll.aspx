<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="roll.aspx.cs" Inherits="admin_roll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="rows">
        <div class="col-2">

            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </div></div>

    <div class="rows">
        <div class="col-2">
            Role Code 
        </div>
        
         <div class="col-2">
             <asp:DropDownList ID="ddlstatus" CssClass="form-control" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>L1</asp:ListItem>
                <asp:ListItem>L2</asp:ListItem>
                <asp:ListItem>L3</asp:ListItem>
                <asp:ListItem>L4</asp:ListItem>
                <asp:ListItem>L5</asp:ListItem>
                <asp:ListItem>L6</asp:ListItem>
                <asp:ListItem>L7</asp:ListItem>
                <asp:ListItem>L8</asp:ListItem>
                <asp:ListItem>L9</asp:ListItem>
                <asp:ListItem>L10</asp:ListItem>
                <asp:ListItem>L11</asp:ListItem>
                <asp:ListItem>L12</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="col-2">
            Role Name
        </div>


        <div class="col-2">
             <asp:TextBox ID="txtrolename" CssClass="form-control" runat="server" MaxLength="15" placeholder="Role Name" > </asp:TextBox>
        </div>


        <div class="col-2">
            Status
        </div>

        <div class="col-2">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True" Value="1">YES</asp:ListItem>
                <asp:ListItem Value="0">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>





    </div>

     <div class="rows">


         <div class="col-4">
             <asp:Button ID="btnsubmit" runat="server" CssClass="primary" Text="Submit" OnClick="btnsubmit_Click" />
             <asp:Button ID="btnreset" runat="server" CssClass="primary" Text="Reset" OnClick="btnreset_Click" />

        </div>

         </div>



</asp:Content>

