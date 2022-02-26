<%@ Page Title="" Language="C#" MasterPageFile="~/super_admin/admin.master" AutoEventWireup="true" CodeFile="viewvi.aspx.cs" Inherits="admin_viewc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container-fluid">

                    <!-- Page Heading -->
                  

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Viewers Videos 
                                List
                            </h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                         
                                            <th>Video Name</th>
                                            <th>Description</th>
                                            
                                            <th>Cost</th>
                                          
                                            <th>Uploading Date</th>
                                            <th>Poster</th>
                                            <th>Video</th>
                                        
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                           <th>Video Name</th>
                                            <th>Description</th>
                                            
                                            <th>Cost</th>
                                            
                                            <th>Uploading Date</th>
                                            <th>Poster</th>
                                            <th>Video</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("v_name") %> </td>
                                            <td><%# Eval("v_desc") %></td>
                                            <td><%# Eval("Cost") %>/-</td>
                                            <td> <%# Eval("Upload_date") %> & No of days:<%# Eval("nofday") %></td>
                                            <td>    <asp:Image ID="Image2" runat="server"  ImageUrl=' <%# Eval("poster") %>' width="200" height="150" />   </td>
                                            <td>  <video width="200" height="150" controls  poster=' <%# Eval("poster") %>'   runat="server">
                                
                                                  <source src='<%#Eval("Upload_File") %>' type="video/mp4" runat="server">
                                            </video> </td>
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

