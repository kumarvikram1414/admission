<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="docs.aspx.cs" Inherits="admin_docs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <!-- <style type="text/css">
        .auto-style1 {
            margin-bottom: 0.75rem;
            width: 311px;
        }
    </style>-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
                        <div class="card">
              
     <div class="col-12 grid-margin">
          
         <asp:Label ID="lbldocs" runat="server" Text=""></asp:Label>
             
                <div class="card-body">  
                      <div class="bg-light">
                  <h4 class="auto-style1 text-center" >Qualification and Documnets</h4>
                            </div>
                  <p class="card-description">
                    Qualification Type
                  </p>
                   <select class="form-control" id="Qualification" >
                       <option>10th</option>
                       <option>12th</option>
                       <option>Diploma</option>
                       <option>Graduation</option>
                       <option>B.tech</option>
                       
                       </select>
                    </div>
                  
                    <div class="form-group">
                      <label for="Marks" style="font-family: 'Yu Gothic UI Semibold'">Total Marks</label>
                      <input type="text" class="form-control" id="Marks" placeholder="total marks ">
                    </div>
                    <div class="form-group">
                      <label for="Obtain" style="font-family: 'Yu Gothic UI Semibold'">Marks obtain</label>
                      <input type="text" class="form-control" id="Obtain" placeholder="marks obtain ">
                    </div>
                    <div class="form-group">
                      <label for="Division " style="font-family: 'Yu Gothic UI Semibold'">Division</label>
                        <select class="form-control" id="Division">
                            <option>1st</option>
                            <option>2nd</option>
                            <option>3rd</option>
                        </select>
                      </div>
                 
                  
                  <div class="form-group">
                      <label for="CGPA" style="font-family: 'Yu Gothic UI Semibold'">CGPA</label>
                      <input type="text" class="form-control" id="CGPA" placeholder="10.00">
                    </div>
                  <div class="form-group">
                      <label for="percentage " style="font-family: 'Yu Gothic UI Semibold'">percentage</label>
                      <input type="text" class="form-control" id="percentage" placeholder="%">
                    </div>


                    <div class="form-group">
                      <label style="font-family: 'Yu Gothic UI Semibold'">File upload</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                        </span>
                      </div>
                    </div>
                    
                  <a class="btn btn-primary mr-2" href="demoapplicationform.aspx">Back</a>
                    <a class="btn btn-light" href="payment_details.aspx">Next</a>
                  </form>
                </div>
            </div>

</asp:Content>

