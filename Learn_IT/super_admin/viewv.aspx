<%@ Page Title="" Language="C#" MasterPageFile="~/super_admin/admin.master" AutoEventWireup="true" CodeFile="viewv.aspx.cs" Inherits="admin_viewc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container-fluid">

                    <!-- Page Heading -->
                  

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Viewers List</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                          <th>Name & Email</th>
                                            <th>Full Address</th>
                                            <th>Mobile</th>
                                            
                                            <th>Gender</th>
                                            <th>Qualification</th>
                                           
                                          
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name & Email</th>
                                            <th>Full Address</th>
                                            <th>Mobile</th>
                                            
                                            <th>Gender</th>
                                            <th>Qualification</th>
                                            
                                          
                                        </tr>
                                    </tfoot>
                                    <tbody>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("Name") %> <br /> { <%# Eval("Email") %> }</td>
                                            <td><%# Eval("Address") %>,<%# Eval("city") %>,<br /><%# Eval("State") %> <br /><%# Eval("Country") %>-<%# Eval("Pincode") %></td>
                                            <td><%# Eval("Phone_number") %></td>
                                            <td> <%# Eval("Gender") %></td>
                                            
                                            <td><%# Eval("occupation") %></td>
                                             </tr>
                                      
                                       </ItemTemplate>
                                       </asp:Repeater>
                                  
                                       
                                       
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


</asp:Content>

