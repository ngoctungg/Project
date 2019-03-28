<%@ Page Title="" Language="C#" MasterPageFile="~/Form/GiaoDien.Master" AutoEventWireup="true" CodeBehind="DangKi.aspx.cs" Inherits="NATHSHOP.Form.DangKi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div  class="container-fluid">
            <h3 class="text-center" style="color:#031583;"><span">Đăng Kí Thành Viên</span></h3>
            <h2 style="color:Red;" class="text-center">Thông Tin Đăng Kí Thành Viên</h2>
            <br />
            <div class="">

				<div class="form-group">
					  <asp:Label CssClass="form" ID="lblTendangnhap" runat="server" Text="Tên đăng nhập"
                                ForeColor="black"></asp:Label>
                      <asp:TextBox CssClass="form-control" ID="txtTendangnhap" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="rfvTendangnhap" runat="server"
                                ErrorMessage="Chưa nhập tên đăng nhập" ControlToValidate="txtTendangnhap"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblUsername" runat="server" ForeColor="Red"></asp:Label>
				</div>
				<div class="form-group">
					   <asp:Label CssClass="" ID="lblMatkhau" runat="server" Text="Mật khẩu" ForeColor="black"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtMatkhau" runat="server" 
                                TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server"
                                ErrorMessage="Chưa nhập mật khẩu" ControlToValidate="txtMatkhau"
                                ForeColor="Red"></asp:RequiredFieldValidator>
				</div>
				<div class="form-group">
					<asp:Label ID="lblNhaplaimatkhau" runat="server" Text="Nhập lại mật khẩu"
                                ForeColor="black"></asp:Label>

                            <asp:TextBox CssClass="form-control" ID="txtNLMatkhau" runat="server"  
                                TextMode="Password"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="rfvNLMatkhau" runat="server"
                                ErrorMessage="Chưa nhập mật khẩu lần 2" ControlToValidate="txtNLMatkhau"
                                ForeColor="Red"></asp:RequiredFieldValidator><br />
                            <asp:CompareValidator ID="cvMatkhau" runat="server"
                                ErrorMessage="Mật khẩu không khớp" ControlToCompare="txtMatkhau"
                                ControlToValidate="txtNLMatkhau" ForeColor="Red"></asp:CompareValidator>
				</div>
				<div class="form-group">
					        <asp:Label ID="Label4" runat="server" Text="Họ tên" ForeColor="black"></asp:Label>
                            <asp:TextBox CssClass="form-control" ID="txtHoten" runat="server"  ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvHoten" runat="server"
                                ErrorMessage="Chưa nhập họ tên" ControlToValidate="txtHoten"
                                ForeColor="Red"></asp:RequiredFieldValidator>
				</div>
				<div class="form-group">
					        <asp:Label ID="Label5" runat="server" Text="Giới tính" ForeColor="black"></asp:Label>
                            <asp:RadioButtonList CssClass="form-radius" ID="rblGioitinh" runat="server" ForeColor="black">
                                <asp:ListItem>Nam</asp:ListItem>
                                <asp:ListItem>Nữ</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfvGioitinh" runat="server"
                                ErrorMessage="Chưa chọn giới tính" ControlToValidate="rblGioitinh"
                                ForeColor="Red"></asp:RequiredFieldValidator>
				</div>
                      <div class="form-group">
					       
                            <asp:Label ID="Label6" runat="server" Text="Địa chỉ" ForeColor="black"></asp:Label>
            
                            <asp:TextBox CssClass="form-control" ID="txtDiachi" runat="server"  ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDiachi" runat="server"
                                ErrorMessage="Chưa nhập địa chỉ" ControlToValidate="txtDiachi"
                                ForeColor="Red"></asp:RequiredFieldValidator>
				</div>
          <div class="form-group">
					       
                            <asp:Label ID="Label7" runat="server" Text="Email" ForeColor="black"></asp:Label>

                            <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"  ></asp:TextBox>

                            <asp:RegularExpressionValidator ID="rexEmail" runat="server"
                                ErrorMessage="Nhập sai email"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ControlToValidate="txtEmail" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                                ControlToValidate="txtEmail" ErrorMessage="Chưa nhập email"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblEmail" runat="server" ForeColor="Red"></asp:Label>
				</div>  
				<div class="form-group">
					       
                                 <asp:Label ID="lblDienthoai" runat="server" Text="Số điện thoại" ForeColor="black"></asp:Label></td>

                            <asp:TextBox CssClass="form-control" ID="txtDienthoai" runat="server"  ></asp:TextBox>

                            <asp:CompareValidator ID="cvSodienthoai" runat="server"
                                ControlToValidate="txtDienthoai" ErrorMessage="Chỉ nhập số"
                                ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
               
                            <asp:RequiredFieldValidator ID="rfvSodienthoai" runat="server"
                                ControlToValidate="txtDienthoai" ErrorMessage="Chưa nhập số điện thoại"
                                ForeColor="Red"></asp:RequiredFieldValidator>
				</div>		
				<div class="form-group">
                            <asp:Button ID="btnXacnhan" runat="server" Text="Xác nhận" ForeColor="Black"
                                Height="35px" Width="102px" CssClass="btn btn-info right" OnClick="btnXacnhan_Click" />
                            <asp:Label ID="lblThongBao" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label>
				</div>
                      
            </div>

            <div>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>


        </div>

    <br class="clear" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
