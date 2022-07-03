<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="branch.aspx.cs" Inherits="admin_branch" %>

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
                  <h4 class="card-title">Branch Details</h4>
                  
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName">Branch Name</label>
                      <input type="text" class="form-control" id="examplebranch" placeholder="Branch Name">

                    </div>
                       <div class="form-group">
                      <label for="Inputcourses">Courses</label>
        <asp:DropDownList ID="ddlcourses" cssclass="form-control" runat="server">
                <%--<asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>MBA</asp:ListItem>
                <asp:ListItem>Diploma</asp:ListItem>
                <asp:ListItem>B.ed</asp:ListItem>--%>
        </asp:DropDownList>
                     </div>
                    <div class="form-group">
                      <label for="exampleInputBranchhead">Branch Head</label>
                      <input type="text" class="form-control" id="txtbranchhead" placeholder="Name">
                    </div>
                    <div class="col-3">
                        Status
                    </div>

        <div class="col-2">
            <asp:RadioButtonList ID="rblbranchstatus" runat="server" RepeatDirection="Vertical">
                <asp:ListItem Selected="True" Value="1">YES</asp:ListItem>
                <asp:ListItem Value="0">No</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    

     <div class="rows">


         <div class="col-4">
             <asp:Button ID="btnsubmit" runat="server" CssClass="primary" Text="Submit" OnClick="btnsubmit_Click" />
             <asp:Button ID="btnreset" runat="server" CssClass="primary" Text="Reset" OnClick="btnreset_Click" />

        </div>

         </div>

                    
                   <%-- <button type="submit" class="btn btn-primary mr-2">Submit</button>
                    <button class="btn btn-light">Cancel</button>--%>
                      </form>
                </div>
              </div>
            </div>
            
            
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        
        <!-- partial -->
         </div>

   


</asp:Content>

