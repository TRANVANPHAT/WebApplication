<%@ Page Title="" Language="C#" MasterPageFile="~/Mas_admin.Master" AutoEventWireup="true" CodeBehind="danhmuc.aspx.cs" Inherits="Assignment_INF205.danhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="messResult" runat="server" Text=""></asp:Label>
        <div class="row-fluid">
            <!-- block -->
            <div class="block">
                <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">Danh mục sản phẩm</div>
                    <a class="btn btn-success pull-right" href="danhmucadd.aspx" role="button">Thêm</a>
                </div>
                <div class="block-content collapse in">
                    <div class="span12">

                        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="maLoai" DataSourceID="SqlDataSource1">
                            <Columns>
                                
                                <asp:HyperLinkField DataTextField="tenLoai" HeaderText="Tên loại sản phẩm" DataNavigateUrlFields="maLoai" DataNavigateUrlFormatString="danhmucedit.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                                <asp:HyperLinkField Text="Xóa" HeaderText="" DataNavigateUrlFields="maLoai" DataNavigateUrlFormatString="danhmuc.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" SelectCommand="SELECT * FROM [LoaiSanPham]"></asp:SqlDataSource>

                    </div>
                </div>
            </div>
            <!-- /block -->
        </div>

    </form>
</asp:Content>
