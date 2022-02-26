<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="addv.aspx.cs" Inherits="admin_addv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
        .auto-style4 {
            height: 26px;
        }
         .auto-style9 {
             width: 432px;
             text-align: left;
             height: 33px;
         }
         .auto-style10 {
             height: 33px;
         }
         .auto-style13 {
             width: 432px;
             text-align: left;
             height: 44px;
         }
         .auto-style14 {
             height: 44px;
         }
         .auto-style15 {
             width: 432px;
             text-align: left;
             height: 42px;
         }
         .auto-style16 {
             height: 42px;
         }
         .auto-style17 {
             margin-left: 54px;
         }
         .auto-style20 {
             color: #fff;
             background-color: #4e73df;
             width: 567px;
             height: 467px;
             margin-left: 287px;
         }
         .auto-style21 {
             height: 26px;
             width: 432px;
             text-align: left;
         }
         .auto-style24 {
             margin-left: 93px;
         }
    </style>

     <div class="container-fluid">

                    <!-- Page Heading -->
                  

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Add Vedio</h6>
                        </div>
                        <div class="card-body">
                            <h1 class="text-center">Add Vedio</h1>
                            <div class="table-responsive">




       <div class="text-justify">
      <table class="auto-style20" align="center">
      <tr>
          <td class="auto-style13">
              <asp:Label ID="Label1" runat="server" Text="Adding_video_name" ForeColor="#FFFFCC" Font-Size="15pt" Font-Italic="True"></asp:Label>
          </td>
          
     <td class="auto-style14"><asp:TextBox ID="v_name" runat="server" CssClass="auto-style17" Width="282px" BackColor="#6666FF" BorderColor="#FFFFCC" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
         <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Firle is required" ControlToValidate="v_name" ForeColor="Red"></asp:RequiredFieldValidator>
    
     </td>
      </tr>


      <tr>
          <td class="auto-style21">
          <asp:Label ID="Label2" runat="server" Text="Video_Discription:"  ForeColor="#FFFFCC" Font-Size="15pt" Font-Italic="True"></asp:Label>
              
          </td>
          <td class="auto-style4">
              <asp:TextBox ID="v_desc" runat="server" CssClass="auto-style17" Width="282px" BackColor="#6666FF" BorderColor="#FFFFCC" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
           <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Firle is required" ControlToValidate="v_desc" ForeColor="Red"></asp:RequiredFieldValidator>
    
          </td>
      </tr>


     


      <tr>
          <td class="auto-style9">
              <asp:Label ID="Label4" runat="server" Text="Vedio Cost:"  ForeColor="#FFFFCC" Font-Size="15pt" Font-Italic="True"></asp:Label>
          </td>
          <td class="auto-style10">
              <asp:TextBox ID="v_cost" runat="server" CssClass="auto-style17" Width="282px" BackColor="#6666FF" BorderColor="#FFFFCC" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
           <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Firle is required" ControlToValidate="v_cost" ForeColor="Red"></asp:RequiredFieldValidator>
    
          </td>
      </tr>
<tr>
          <td class="auto-style9">
              <asp:Label ID="Label6" runat="server" Text="Number of Days Active:"  ForeColor="#FFFFCC" Font-Size="15pt" Font-Italic="True"></asp:Label>
          </td>
          <td class="auto-style10">
              <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" CssClass="auto-style17" Width="282px" BackColor="#6666FF" BorderColor="#FFFFCC" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
           <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Firle is required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
    
          </td>
      </tr>


      <tr>


          <td class="auto-style15">
              <asp:Label ID="Label5" runat="server" Text="Upload_date:" ForeColor="#FFFFCC" Font-Size="15pt" Font-Italic="True"></asp:Label>
          </td>
          <td class="auto-style16">
              <asp:TextBox ID="u_date" runat="server" TextMode="Date" CssClass="auto-style17" Width="282px" BackColor="#6666FF" BorderColor="#FFFFCC" BorderStyle="Solid" BorderWidth="1px" ></asp:TextBox>
          
           <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Firle is required" ControlToValidate="u_date" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
      </tr>
              <tr>
            <td class="auto-style21">
              <asp:Label ID="Label3" runat="server" Text="Upload_Poster_File:" ForeColor="#FFFFCC" Font-Size="15pt" Font-Italic="True"></asp:Label>
          </td>
          <td>
              <asp:FileUpload ID="FileUpload1"  runat="server"  CssClass="auto-style17" Width="282px" BackColor="#6666FF" BorderColor="#FFFFCC" BorderStyle="Solid" BorderWidth="1px" />
           <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This Firle is required" ControlToValidate="FileUpload1" ForeColor="Red"></asp:RequiredFieldValidator>
    
          </td>
      </tr>

    


        <tr>
            <td class="auto-style21">
              <asp:Label ID="Label7" runat="server" Text="Upload_File:" ForeColor="#FFFFCC" Font-Size="15pt" Font-Italic="True"></asp:Label>
          </td>
          <td>
              <asp:FileUpload ID="video_upload"  runat="server"  CssClass="auto-style17" Width="282px" BackColor="#6666FF" BorderColor="#FFFFCC" BorderStyle="Solid" BorderWidth="1px"  />
           <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Firle is required" ControlToValidate="video_upload" ForeColor="Red"></asp:RequiredFieldValidator>
    
          </td>
      </tr>


        <tr>
            <td class="auto-style21" colspan="2">
               <asp:Button  id="submitbutton" runat="server" Text="SUBMIT"  Width="381px" OnClick="submitbutton_Click" BackColor="White" BorderColor="#0033CC" BorderStyle="Solid" BorderWidth="2px" CssClass="auto-style24" Font-Bold="True" Font-Italic="True" Font-Size="15pt" ForeColor="Blue" Height="50px"></asp:Button>
  </td>
          <td>
       
            </td>
      </tr>
      </table>
           </div>
       
</div>

                </div>
                        </div>
         </div>
    




       
    
</asp:Content>

