<%@ Page Title="" Language="C#" MasterPageFile="~/Mas_admin.Master" AutoEventWireup="true" CodeBehind="sanphamedit.aspx.cs" Inherits="Assignment_INF205.sanphamedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        <asp:Label ID="messResult" runat="server" Text=""></asp:Label>
        <div class="row-fluid">
            <!-- block -->
            <div class="block">
                <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">Sửa sản phẩm</div>
                    <input type="reset" class="btn btn-success pull-right" value="Làm mới" />
                    <asp:Button ID="btnThem" CssClass="btn btn-danger pull-right marginBtnLeft" runat="server" Text="Cập nhật" OnClick="btnThem_Click" />
                </div>
                <div class="block-content collapse in">
                    <div class="span12">
                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="txtTenSSP">Tên sản phẩm:</label>
                            <asp:TextBox ID="txtTenSSP" CssClass="form-control width97" placeholder="Tên sản phẩm" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="txtSoLuong">Số lượng:</label>
                            <asp:TextBox ID="txtSoLuong" runat="server" CssClass="form-control width97"></asp:TextBox>
                            <script type="text/javascript">
                                document.getElementById('<%=txtSoLuong.ClientID%>').type = 'number';
                                document.getElementById('<%=txtSoLuong.ClientID%>').min = 0;
                                document.getElementById('<%=txtSoLuong.ClientID%>').max = 1000;
                            </script>
                            
                        </div>
                        <div class="form-group has-success has-feedback col-md-12">
                            <label class="control-label" for="ddlLoaiSanPham">Loại sản phẩm :</label>
                            
                            <asp:DropDownList ID="ddlLoaiSanPham" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenLoai" DataValueField="maLoai" CssClass="width97"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" SelectCommand="SELECT * FROM [LoaiSanPham]"></asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>
            <!-- /block -->
        </div>

    </form>
</asp:Content>
