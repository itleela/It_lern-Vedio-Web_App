<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewp.aspx.cs" Inherits="admin_viewp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container-fluid">

                    <!-- Page Heading -->
                  

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Product List</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Category Name</th>
                                            <th>Product Barnd</th>
                                            <th>Model</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Image</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Category Name</th>
                                            <th>Product Barnd</th>
                                            <th>Model</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Image</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("Cat_name") %></td>
                                            <td><%# Eval("P_brand") %></td>
                                            <td><%# Eval("P_ model") %></td>
                                            <td> <%# Eval("P_price") %></td>
                                            <td><%# Eval("P_quantity") %></td>
                                            <td>  <asp:Image ID="Image1" runat="server" class="img-responsive" ImageUrl='<%# Eval("P_image") %>' Height="50px" Width="50px" />
</td>
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

