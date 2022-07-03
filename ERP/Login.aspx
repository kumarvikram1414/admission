﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>ERP Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="../../vendors/typicons/typicons.css">
  <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/ldesign.jpg" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager id="cc" runat="server"></asp:ScriptManager>
        <div>
            <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
            
                <img src="../../images/citlogo.jpg" align="center" alt="logo">
              </div>
             <h4>LOGIN</h4>
              <h6 class="font-weight-light">Sign in to continue.</h6>
                <h5> <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></h5>
              <form class="pt-3">
                <div class="form-group">
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg" placeholder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvusername" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please Enter Valid Username"></asp:RequiredFieldValidator>
                    </div>

                <div class="form-group">
                    <asp:TextBox ID="TextPassword" Textmode="Password" runat="server" CssClass="form-control form-control-lg" placeholder="Password"></asp:TextBox>
                  </div>
                <div class="mt-3">
                <asp:Button ID="btnlogin" CssClass="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" runat="server" Text="SIGN IN" OnClick="btnlogin_Click" />
                  <%--<a class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</a>--%>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      Keep me signed in
                    </label>
                  </div>
                  <a href="#" class="auth-link text-black">Forgot password?</a>
                </div>
             
                <div class="text-center mt-4 font-weight-light">
                  Don't have an account <a href="register.html" class="text-primary">Create</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
  <!-- endinject -->
        </div>
    </form>
</body>
</html>
