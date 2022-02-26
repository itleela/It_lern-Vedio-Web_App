<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_exp.aspx.cs" Inherits="admin_register_exp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
          <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0" >
                        <!-- Nested Row within Card Body -->
                        <div class="row" >
                        
                            <div class="col-lg-8">
                               
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome for Registering with us Learn IT Expert</h1>
                                    </div>
                                     <div class="form-group">
                                         <asp:TextBox ID="TextBox1" class="form-control form-control-user" placeholder="Enter Name..."
                                                 runat="server"></asp:TextBox>
                                            
                                            <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="TextBox1" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                                            

                                        </div>
            <div class="form-group">
                 <asp:TextBox ID="TextBox2" class="form-control form-control-user" placeholder="Enter Email Address..."
                                                 runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="TextBox2" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                                           
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox3" class="form-control form-control-user"  placeholder="Password" 
                                                 runat="server" TextMode="Password"></asp:TextBox>
                 <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="TextBox2" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                  
                                           
                                        </div>
                                    <div class="form-group">
                                            <asp:TextBox ID="TextBox4" class="form-control form-control-user" placeholder="Enter Mobile No..."
                                                 runat="server"></asp:TextBox>
                 <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="TextBox4" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                                        </div>
             
                                        <button type="submit" class="btn btn-primary btn-user btn-block" onserverclick="Submit_Click" runat="server">Submit</button>
          <br />
                                     <a href="/admin/Alogint.aspx" class="btn btn-primary ">
                                          Back To Login
                                        </a>


        </div></div></div></div></div></div></div></div>
    </form>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
</body>
</html>
