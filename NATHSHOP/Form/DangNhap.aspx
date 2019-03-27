<%@ Page Title="" Language="C#" MasterPageFile="~/Form/GiaoDien.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="NATHSHOP.Form.DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style>
		.dd {
			color: red;
			text-decoration: none;
		}

		.auto-style1 {
			width: 503px;
		}
	</style>
		<asp:ScriptManager ID="ScriptManager1" runat="server">
		</asp:ScriptManager>
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
			<ContentTemplate>
				<div class="container container__small">
					<h1 class="display-4">Login</h1>
					<!-- <form class=""> -->
					<div class="form-group">
						<label for="txtTendangnhap">User name: </label>
						<!-- <input type="text" class="form-control" id="username"> -->
						<asp:TextBox ID="txtTendangnhap" runat="server" CssClass="form-control"></asp:TextBox>
					</div>
					<div class="form-group">
						<label for="txtMatkhau">Password: </label>
						<!-- <input type="text" class="form-control" id="password"> -->
						<asp:TextBox ID="txtMatkhau" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
					</div>
					<!-- <button type="Submit" class="btn btn-primary">Submit</button> -->

					<asp:Button ID="bttDN" runat="server" OnClick="bttDN_Click" Text="Đăng Nhập" CssClass="btn btn-primary" />
					<div id="dn_message">
						<asp:Label ID="lblThongbao" runat="server" CssClass="login_message"></asp:Label><br />
						<asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Vui lòng nhập tên đăng nhập"
							ControlToValidate="txtTendangnhap" ForeColor="Red"></asp:RequiredFieldValidator><br />
						<asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="Vui lòng nhập mật khẩu"
							ControlToValidate="txtMatkhau" ForeColor="Red"></asp:RequiredFieldValidator>
					</div>
					<!-- </form> -->
					<p class="text-md-right">
						<asp:HyperLink ID="hplQuenmatkhau" runat="server" NavigateUrl="QuenMatKhau.aspx">Quên mật khẩu ?</asp:HyperLink>
					</p>
					<p class="text-md-right">
						<asp:HyperLink ID="hplDangki" runat="server" NavigateUrl="DangKi.aspx">Chưa có tài khoản ?</asp:HyperLink>
					</p>
				</div>
			</ContentTemplate>
		</asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
