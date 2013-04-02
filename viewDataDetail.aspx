<%@ Page Title="" Language="VB" MasterPageFile="~/CountryMasterPage.master" AutoEventWireup="false" CodeFile="viewDataDetail.aspx.vb" Inherits="viewDataDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" 
            SelectCommand="SELECT * FROM [Countries]"></asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
            Height="16px" Width="340px"
            CssClass="cssdetailsview"
              HeaderStyle-CssClass="header"
              FieldHeaderStyle-CssClass="fieldheader"
              ItemStyle-CssClass="item"
              AlternatingRowStyle-CssClass="altrow"
              CommandRowStyle-CssClass="command"
              PagerStyle-CssClass="pager">
            <Fields>
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
            </Fields>
        </asp:DetailsView>
        <br />
        <a href="./viewDataGrid.aspx">Grid View<a>
</asp:Content>

