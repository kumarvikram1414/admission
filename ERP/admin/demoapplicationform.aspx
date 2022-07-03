<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="demoapplicationform.aspx.cs" Inherits="admin_demoapplicationform" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



   <div class="col-12 grid-margin">
                <div class="card">
                    <div class="card-body">
                        <div class="bg-light">
                            <h4 class="card-title text-center">Admission Form</h4>
                        </div>
                        <form class="form-sample">
                            <!-- <p class="card-description">
                            Personal info
                          </p> -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group row">
                                        <div class="col-sm-12 d-flex">
                                            <label class="col-sm-5 col-form-label">First Name</label>
                                            <input type="text" class="form-control" placeholder="First name" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group row">

                                        <div class="col-sm-12 d-flex">
                                            <label class="col-sm-5 col-form-label">Middle Name</label>
                                            <input type="text" class="form-control" placeholder="Middle name" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group row">
                                        <div class="col-sm-12 d-flex">
                                            <label class="col-sm-5 col-form-label">Last Name</label>
                                            <input  type="text" class="form-control" placeholder="Last name" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Adhar No.</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="Enter Adhar no" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Mobile No.</label>
                                        <div class="col-sm-9">
                                            <input type="text"class="form-control" placeholder="Enter Mobile no." />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="Enter Father email" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Date of Birth</label>
                                        <div class="col-sm-9">
                                            <input type="date"class="form-control" placeholder="dd/mm/yy" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Father Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="Enter Father Name" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Mother Name</label>
                                        <div class="col-sm-9">
                                            <input type="text"class="form-control" placeholder="Enter Mother Name" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Father Contact</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" placeholder="Enter Father Contact No" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Mother Contact</label>
                                        <div class="col-sm-8">
                                            <input type="text"class="form-control" placeholder="Enter Mother Contact No" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Father Occupation</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" placeholder="Enter Father Occupation" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Mother Occupation</label>
                                        <div class="col-sm-8">
                                            <input type="text"class="form-control" placeholder="Enter Mother Occupation" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Father Email</label>
                                        <div class="col-sm-8">
                                            <input type="email" class="form-control" placeholder="Enter Father email" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Mother Email</label>
                                        <div class="col-sm-8">
                                            <input type="email"class="form-control" placeholder="Enter Mother email" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Is Alive Father</label>
                                        <div class="col-sm-4">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="father"
                                                        id="membershipRadios1" value="yes" >
                                                    Yes
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="father"
                                                        id="membershipRadios2" value="no" checked>
                                                   No
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Is Alive Mother</label>
                                        <div class="col-sm-4">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="mother"
                                                        id="membershipRadios3" value="yes" >
                                                    Yes
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="mother"
                                                        id="membershipRadios4" value="no" checked>
                                                    No
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <p class="card-description">
                                Permanent Address
                            </p>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Address</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="enter your address"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">City</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="enter your city" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Block</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="enter your block"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">PS</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="enter your ps"/>
                                        </div>
                                    </div>
                               
                            </div>
                                </div>
                            <div class="row">
                                  <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Country</label>
                                        <div class="col-sm-9">
                                            <select class="form-control">
                                                <option>India</option>
                                                <option>America</option>
                                                <option>Italy</option>
                                                <option>Russia</option>
                                                <option>Britain</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                             
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">State</label>
                                        <div class="col-sm-9">
                                            <select class="form-control">
                                                <option>Jharkhand</option>
                                                <option>Bihar</option>
                                                <option>Chhattisgarh</option>
                                                <option>Odisha</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                </div>
                               <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">District</label>
                                        <div class="col-sm-9">
                                            <select class="form-control">
                                                <option>Ranchi</option>
                                                <option>Garwa</option>
                                                <option>Ramgarh</option>
                                                <option>Hazaribag</option>
                                                <option>Dhanbad</option>
                                                <option>Lohardaga</option>
                                            </select>
                                        </div>
                                    </div>
                               </div>
                                 <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">PIN</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" placeholder="enter your pin"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class="card-description">
                                Local Guardian Info
                            </p>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Guardian Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" placeholder="enter Guardian Name"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Guardian Mobile No.</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" placeholder="Enter Guardian Mobile No."/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class="card-description">
                               Academic Details
                            </p>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Course</label>
                                        <div class="col-sm-9">
                                            <select class="form-control">
                                                <option disabled>Select Course</option>
                                                <option>B.TECH</option>
                                                <option>M.TECH</option>
                                                <option>PHD</option>
                                                
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-3 col-form-label">Branch</label>
                                        <div class="col-sm-9">
                                            <select class="form-control">
                                                <option disabled>Select Branch</option>
                                                <option>CSE</option>
                                                <option>ECE</option>
                                                <option>CIVIL</option>
                                                <option>MECHANICAL</option>
                                                <option>EEE</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Admission Type</label> <div class="col-sm-8">
                                           <select class="form-control">
                                                <option disabled>Select Admission Type</option>
                                                <option>Regular</option>
                                                <option>Lateral Entry</option>
                                              
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Admission Sourse</label>
                                        <div class="col-sm-8">
                                           <select class="form-control">
                                                <option disabled>Select admission source</option>
                                                <option>JEE main</option>
                                                <option>JCECE</option>
                                              
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                               
                    <button type="Submit" class="btn btn-primary mr-2"><a href="docs.aspx">NEXT</a></button>
                    <button class="btn btn-light">Cancle</button>
                        </form>
                    </div>
                </div>
            </div>
       
   
 
    </asp:Content>