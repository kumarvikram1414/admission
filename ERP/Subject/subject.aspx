<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="subject.aspx.cs" Inherits="Subject_subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 320px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="d-flex " style="font-family: 'Arial Black'"> 
                        &nbsp;&nbsp;&nbsp;<div ><a href="#"> Form </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                        </div>
                        <div><a href="ViewForm.aspx">View Form    </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                        </div>
                        <div class="auto-style1" ><a href="Modify.aspx" >Modify</a>  
                            <br />
                        </div>
        <div>
            
                                 <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
        </div>
                    </div>

    <asp:Label ID="lblsubject" runat="server" Text=""></asp:Label>
                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        
    <div class="col-md-12 grid-margin stretch-card">
          
              <div class="card">
                <div class="card-body">

                  
          <asp:Label ID="lblsubject_form" runat="server" Text="">test</asp:Label>                                     

                  <h4 class="card-title">Subject</h4>

                  <form class="forms-sample">
                            
                    <div class="form-group row">
                      <label for="text" class="col-sm-3 col-form-label">Subject code</label>
                      <div class="col-sm-9">
                       
                           <asp:TextBox ID="subjectcode" CssClass="form-control" runat="server" placeholder="Enter subject code"> </asp:TextBox>
                                       
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="text" class="col-sm-3 col-form-label">Course code</label>
                      <div class="col-sm-9">
                      
                          <asp:TextBox ID="courseid" CssClass="form-control" runat="server" placeholder="Enter Coursee code"> </asp:TextBox>
                                       
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="text" class="col-sm-3 col-form-label">Branch ID</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="branchid" CssClass="form-control" runat="server" placeholder="Enter Branch ID"> </asp:TextBox>
                            
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="text" class="col-sm-3 col-form-label">Semester ID</label>
                      <div class="col-sm-9">
                        <asp:TextBox ID="semid" CssClass="form-control" runat="server" placeholder="Enter Semester ID"> </asp:TextBox>
                        
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="text" class="col-sm-3 col-form-label">Date</label>
                      <div class="col-sm-9">
                        <asp:TextBox Textmode="Date" ID="dateofentry" CssClass="form-control" runat="server" placeholder=""> </asp:TextBox>
                        
                      </div>
                    </div>


                    <div class="col">
                        <p class="mb-2">Status</p>
                      <label class="toggle-switch toggle-switch-success">
                        
                         <asp:TextBox ID="status" CssClass="form-control" runat="server" placeholder=""> </asp:TextBox>
                        
                        <span class="toggle-slider round"></span>
                      </label>
                    </div>


                   <asp:Button ID="submit" CssClass="btn btn-primary mr-2" runat="server" Text="Submit" OnClick="btnlogin_Click" />
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
            </div>
  

</asp:Content>

