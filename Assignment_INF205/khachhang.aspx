<%@ Page Title="" Language="C#" MasterPageFile="~/Mas_admin.Master" AutoEventWireup="true" CodeBehind="khachhang.aspx.cs" Inherits="Assignment_INF205.khachhang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="messResult" runat="server" Text=""></asp:Label>
    <div class="row-fluid">
            <!-- block -->
            <div class="block">
                <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">Khách hàng</div>
                    <a class="btn btn-success pull-right" href="khachhangadd.aspx" role="button">Thêm</a>
                </div>
                <div class="block-content collapse in">
                    <div class="span12">
                       
                        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataKeyNames="maKH" DataSourceID="SqlDataSource1">
                            <Columns>
                               
                                <asp:HyperLinkField DataTextField="tenKH" HeaderText="Họ và tên" DataNavigateUrlFields="maKH" DataNavigateUrlFormatString="khachhangedit.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                                <asp:BoundField DataField="diaChi" HeaderText="Địa chỉ" SortExpression="diaChi" />
                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                <asp:BoundField DataField="dienThoai" HeaderText="Điện thoại" SortExpression="dienThoai" />
                                <asp:HyperLinkField Text="Xóa" DataNavigateUrlFields="maKH" DataNavigateUrlFormatString="khachhang.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" SelectCommand="SELECT * FROM [KhachHang]"></asp:SqlDataSource>
                       
                    </div>
                </div>
            </div>
            <!-- /block -->
        </div>
    </form>
</asp:Content>
