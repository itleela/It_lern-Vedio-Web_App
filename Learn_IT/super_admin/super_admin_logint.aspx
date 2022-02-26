﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="super_admin_logint.aspx.cs" Inherits="admin_Alogint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Learn IT-Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
</head>
<body class="bg-gradient-danger">
    <form id="form1" runat="server">
          <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0" >
                        <!-- Nested Row within Card Body -->
                        <div class="row" >
                        
                            <div class="col-lg-6" style="margin-top:100px">
                               
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-danger mb-4">Welcome Learn IT Super Admin</h1>
                                    </div>
                                
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox1" class="form-control form-control-user" placeholder="Enter Email Address..."
                                                 runat="server"></asp:TextBox>
                                            
                                            <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="TextBox1" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox2" type="password" runat="server" Cssclass="form-control form-control-user" placeholder="Password"></asp:TextBox>
                                           <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="TextBox2" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                                        </div>
                                       
                                        <button type="submit" class="btn btn-danger btn-user btn-block" onserverclick="Submit_Click" runat="server">Submit</button>
                               <br />
                                   <a href="../Home.aspx" class="btn btn-danger ">
                                            Back to Home
                                        </a> <br /><br />
                                     <a href="/admin/register_exp.aspx" class="btn btn-danger ">
                                            New Registration!!Click Here
                                        </a>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    </form>
     <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</body>
</html>
