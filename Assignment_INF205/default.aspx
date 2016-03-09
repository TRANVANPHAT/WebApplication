<%@ Page Title="" Language="C#" MasterPageFile="~/Mas_admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment_INF205._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <asp:Label ID="messResult" runat="server" Text=""></asp:Label>
        <div class="row-fluid">
            <!-- block -->
            <div class="block">
                <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">Sản phẩm</div>
                    <a class="btn btn-success pull-right" href="sanphamadd.aspx" role="button">Thêm</a>
                </div>
                <div class="block-content collapse in">
                    <div class="span12">
                        <asp:GridView ID="tbSanPham" CssClass="table success" runat="server" AutoGenerateColumns="False" DataKeyNames="maSP" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:HyperLinkField DataTextField="tenSP" HeaderText="Tên sản phẩm" DataNavigateUrlFields="maSP" DataNavigateUrlFormatString="sanphamedit.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                                <asp:BoundField DataField="soLuong" HeaderText="Số lượng" SortExpression="soLuong" />

                                <asp:HyperLinkField Text="Xóa" DataNavigateUrlFields="maSP" DataNavigateUrlFormatString="default.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>

                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
            <!-- /block -->
        </div>

    </form>

</asp:Content>
