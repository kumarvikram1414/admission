<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="admin_course" %>

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
                  <h4 class="card-title">Course Details</h4>
                  
                  <form class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName">Name</label>
                      <input type="text" class="form-control" id="txtname" placeholder="Course Name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputDuration">duration</label>
                      <input type="email" class="form-control" id="exampleInputDuration" placeholder="Duration">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputCoursecode">Course Code</label>
                      <input type="password" class="form-control" id="exampleInputCoursecode" placeholder="course code">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputDepartment">Department</label>
                      <input type="password" class="form-control" id="exampleInputDepartment" placeholder="department">
                    </div>
                    <div class="form-check form-check-flat form-check-primary">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input">
                        Remember me
                      </label>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                    <button class="btn btn-light">Cancel</button>
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

    </div>
</asp:Content>

