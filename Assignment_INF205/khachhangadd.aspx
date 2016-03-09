<%@ Page Title="" Language="C#" MasterPageFile="~/Mas_admin.Master" AutoEventWireup="true" CodeBehind="khachhangadd.aspx.cs" Inherits="Assignment_INF205.khachhangadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        <asp:Label ID="messResult" runat="server" Text=""></asp:Label>
        <div class="row-fluid">
            <!-- block -->
            <div class="block">
                <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">Thêm khách hàng</div>
                    <input type="reset" class="btn btn-success pull-right" value="Làm mới" />
                    <asp:Button ID="btnThem" CssClass="btn btn-danger pull-right marginBtnLeft" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                </div>
                <div class="block-content collapse in">
                    <div class="span12">
                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="txtTen">Họ và Tên:</label>
                            <asp:TextBox ID="txtTen" CssClass="form-control width97" placeholder="Họ và Tên" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="txtDiaChi">Địa chỉ:</label>
                            <asp:TextBox ID="txtDiaChi" CssClass="form-control width97" placeholder="Địa chỉ" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="txtEmail">Email:</label>
                            <asp:TextBox ID="txtEmail" CssClass="form-control width97" placeholder="Email" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="txtSDT">Số điện thoại:</label>
                            <asp:TextBox ID="txtSDT" CssClass="form-control width97" placeholder="Số điện thoại" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /block -->
        </div>

    </form>
</asp:Content>
