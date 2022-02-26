<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="exp_change_password.aspx.cs" Inherits="admin_exp_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-6" style="margin-top:100px">
                               
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Change Pssword</h1>
                                    </div>
                                
                                        <div class="form-group">
                                            <asp:TextBox ID="oldpasswordtxt" Type="Password" class="form-control form-control-user" placeholder="Enter old password"
                                                 runat="server"></asp:TextBox>
                                            
                                            <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="oldpasswordtxt" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="newpasswordtxt" type="password" runat="server" Cssclass="form-control form-control-user" placeholder="New password"></asp:TextBox>
                                           <asp:requiredfieldvalidator runat="server" errormessage="This field is Required" ControlToValidate="newpasswordtxt" Font-Italic="True" ForeColor="Red"></asp:requiredfieldvalidator>
                                 
                                        </div>
                                    <asp:Button ID="btn_change_pass" runat="server" class="btn btn-primary btn-user btn-block" Text="Update Password" OnClick="btn_change_pass_Click"  causesvalidation="false"/>
                                       
                              
                                   
                                </div>
                            </div>
</asp:Content>

 