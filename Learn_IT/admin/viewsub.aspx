<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewsub.aspx.cs" Inherits="admin_viewc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container-fluid">

                    <!-- Page Heading -->
                  

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Viewers Subscription List</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                         
                                            <th>Video Name</th>
                                              <th>Video Description</th>
                                            <th>Subscription Date</th>
                                            
                                            <th>Expiry Date</th>
                                            <th>Action</th>
                                        
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                         
                                            <th>Video Name</th>
                                            <th>Video Description</th>
                                            <th>Subscription Date</th>
                                            
                                            <th>Expiry Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("v_name") %></td>
                                              <td><%# Eval("v_desc") %></td>
                                             <td><%# Eval("Sub_date") %></td>
                                            <td><%# Eval("Exp_date") %></td>
                                            <td></td>
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

