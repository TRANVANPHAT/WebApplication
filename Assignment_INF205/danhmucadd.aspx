<%@ Page Title="" Language="C#" MasterPageFile="~/Mas_admin.Master" AutoEventWireup="true" CodeBehind="danhmucadd.aspx.cs" Inherits="Assignment_INF205.danhmucadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        <asp:Label ID="messResult" runat="server" Text=""></asp:Label>
        <div class="row-fluid">
            <!-- block -->
            <div class="block">
                <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">Thêm danh mục</div>
                    <input type="reset" class="btn btn-success pull-right" value="Làm mới" />
                    <asp:Button ID="btnThem" CssClass="btn btn-danger pull-right marginBtnLeft" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                </div>
                <div class="block-content collapse in">
                    <div class="span12">
                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="txtDanhMuc">Tên danh mục:</label>
                            <asp:TextBox ID="txtDanhMuc" CssClass="form-control width97" placeholder="Tên danh mục" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /block -->
        </div>

    </form>
</asp:Content>
