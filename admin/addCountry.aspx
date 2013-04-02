<%@ Page Title="" Language="VB" MasterPageFile="~/CountryMasterPage.master" AutoEventWireup="false" CodeFile="addCountry.aspx.vb" Inherits="admin_addCountry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" 
        DeleteCommand="DELETE FROM [Countries] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [Countries] ([Name], [Code], [Capitol], [Language], [Continent]) VALUES (@Name, @Code, @Capitol, @Language, @Continent)" 
        SelectCommand="SELECT * FROM [Countries] WHERE ([ID] = @ID)" 
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
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
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
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
        Height="55px" Width="308px"
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
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

