<%@ Page Title="" Language="VB" MasterPageFile="~/CountryMasterPage.master" AutoEventWireup="false" CodeFile="editDatabase.aspx.vb" Inherits="admin_editDatabase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" 
        DeleteCommand="DELETE FROM [Countries] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [Countries] ([Name], [Code], [Capitol], [Language], [Continent]) VALUES (@Name, @Code, @Capitol, @Language, @Continent)" 
        SelectCommand="SELECT * FROM [Countries]" 
        UpdateCommand="UPDATE [Countries] SET [Name] = @Name, [Code] = @Code, [Capitol] = @Capitol, [Language] = @Language, [Continent] = @Continent WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Code" Type="Int32" />
            <asp:Parameter Name="Capitol" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="Continent" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Code" Type="Int32" />
            <asp:Parameter Name="Capitol" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="Continent" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1" Height="262px" Width="348px"
        CssClass="cssgridview" AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Country Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Code" HeaderText="Country Code" 
                SortExpression="Code" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                DataNavigateUrlFormatString="managableDetails.aspx?ID={0}" 
                Text="View Details" />
        </Columns>
    </asp:GridView>
</asp:Content>

