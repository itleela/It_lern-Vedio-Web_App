<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewo.aspx.cs" Inherits="admin_viewo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid">

                    <!-- Page Heading -->
                  

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Coustomers List</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr> <th>Given By</th> 
                                            <th>Product Name</th> 
								<th>Image</th>
								<th>Qty</th>
								<th>Unit Price</th>
								<th>Sub Total</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Given By</th> 
                                            <th>Product Name</th> 
								<th>Image</th>
								<th>Qty</th>
								<th>Unit Price</th>
								<th>Sub Total</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
                                        <tr> <td><%# Eval("C_id") %> </td>
                                              <td><%# Eval("P_brand") %> </td>
					      
					     <td>       <asp:Image ID="Image1" runat="server" class="img-responsive" ImageUrl='<%# Eval("P_image") %>' Height="50px" Width="50px" />

                                    
						</td>
						<td>

                            <%# Eval("Car_qu") %>
									</td>
					         <td><%# Eval("Car_price") %> /-</td>
                              <td><%# Convert.ToDecimal(Eval("Car_price")) * Convert.ToDecimal( Eval("Car_qu")) %> /-</td>
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

