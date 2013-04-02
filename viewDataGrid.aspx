<%@ Page Title="" Language="VB" MasterPageFile="~/CountryMasterPage.master" AutoEventWireup="false" CodeFile="viewDataGrid.aspx.vb" Inherits="view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" 
    
        SelectCommand="SELECT [ID], [Name], [Code], [Capitol], [Language], [Continent] FROM [Countries]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" Height="246px" Width="699px"
        CssClass="cssgridview" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Country Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Code" HeaderText="Country Code" 
                SortExpression="Code" />
            <asp:BoundField DataField="Capitol" HeaderText="Country Capitol" 
                SortExpression="Capitol" />
            <asp:BoundField DataField="Language" HeaderText="Country Language" 
                SortExpression="Language" />
            <asp:BoundField DataField="Continent" HeaderText="Country Continent" 
                SortExpression="Continent" />
        </Columns>
    </asp:GridView>
    <br />
    <a href="./viewDataDetail.aspx">Details View<a>
</a></asp:Content>

