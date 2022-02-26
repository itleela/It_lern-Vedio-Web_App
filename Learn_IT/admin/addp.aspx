<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="addp.aspx.cs" Inherits="admin_addc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Product</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>

    <div class="row">

         
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Add New Product!</h1>
                            </div>
                          
                                <div class="card mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Select Category</h6>
                                </div>
                                <div class="card-body">
                                    <div class="dropdown no-arrow mb-4">
                                      
<asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-user" DataSourceID="SqlDataSource1" DataTextField="Cat_name" DataValueField="Cat_id">
                                    </asp:DropDownList>

                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                                </div>
                                   <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill Input" ControlToValidate="TextBox1" ForeColor="#6600CC" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user" placeholder="Enter Brand" ></asp:TextBox>
                                   
                                </div>
 <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fill Input" ControlToValidate="TextBox2" ForeColor="#6600CC" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-user" placeholder="Enter Model" ></asp:TextBox>
                                   
                                </div>

                                     <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Fill Input" ControlToValidate="TextBox3" ForeColor="#6600CC" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-user" placeholder="Enter Price" TextMode="Number" ></asp:TextBox>
                                   
                                </div>
                                     <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill Input" ControlToValidate="TextBox4" ForeColor="#6600CC" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="TextBox4" runat="server" class="form-control form-control-user" placeholder="Enter Quantity" TextMode="Number" ></asp:TextBox>
                                   
                                </div>

                                     <div class="form-group">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Fill Input" ControlToValidate="FileUpload1" ForeColor="#6600CC" Font-Bold="True" Font-Size="X-Large"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control form-control-user" />
                                </div>

                                </div>
                            </div>
                                
                                <br />  <br />  
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" class="btn btn-primary btn-user btn-block" />
                                 
         
                             
                        </div>
                    </div>
                </div>




       
    
</asp:Content>

