<%@ Page Title="" Language="C#" MasterPageFile="~/Mas_admin.Master" AutoEventWireup="true" CodeBehind="hoadon.aspx.cs" Inherits="Assignment_INF205.hoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <div class="row-fluid">
            <!-- block -->
            <div class="block">
                <div class="navbar navbar-inner block-header">
                    <div class="muted pull-left">Hóa đơn</div>
                </div>
                <div class="block-content collapse in">
                    <div class="span12">

                        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:HyperLinkField DataTextField="tenKH"  HeaderText="Họ và tên" DataNavigateUrlFields="maKH" DataNavigateUrlFormatString="KeywordSrchSumDtl.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                                <asp:BoundField DataField="dienThoai" HeaderText="Điện thoại" SortExpression="dienThoai" />
                                <asp:BoundField DataField="diaChi" HeaderText="Địa chỉ" SortExpression="diaChi" />
                                <asp:CheckBoxField DataField="trangThai" HeaderText="Trạng thái" SortExpression="trangThai" />
                                <asp:BoundField DataField="ngayLapHoaDon" HeaderText="Ngày mua" SortExpression="ngayLapHoaDon" />
                                <asp:HyperLinkField Text="Sửa" DataNavigateUrlFields="maKH" DataNavigateUrlFormatString="KeywordSrchSumDtl.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                                <asp:HyperLinkField Text="Xóa" DataNavigateUrlFields="maKH" DataNavigateUrlFormatString="KeywordSrchSumDtl.aspx?id={0}" HeaderStyle-VerticalAlign="Bottom" ItemStyle-HorizontalAlign="center">
                                    <HeaderStyle VerticalAlign="Bottom"></HeaderStyle>

                                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                </asp:HyperLinkField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Assignment_INF205ConnectionString %>" SelectCommand="SELECT k.maKH, k.tenKH, k.dienThoai, k.diaChi, h.trangThai, h.ngayLapHoaDon FROM KhachHang k, HoaDon h WHERE k.maKH = h.maHD"></asp:SqlDataSource>

                    </div>
                </div>
            </div>
            <!-- /block -->
        </div>

    </form>
</asp:Content>
