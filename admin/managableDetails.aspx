<%@ Page Title="" Language="VB" MasterPageFile="~/CountryMasterPage.master" AutoEventWireup="false" CodeFile="managableDetails.aspx.vb" Inherits="viewDataDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_HW5 %>" 
            SelectCommand="SELECT * FROM [Countries] WHERE ([ID] = @ID)" 
            DeleteCommand="DELETE FROM [Countries] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Countries] ([Name], [Code], [Capitol], [Language], [Continent]) VALUES (@Name, @Code, @Capitol, @Language, @Continent)" 
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
        <asp:DetailsView ID="DetailsView1" runat="server" 
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
                <asp:BoundField DataField="ID" HeaderText="ID" 
                    SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Code" HeaderText="Code" 
                    SortExpression="Code" />
                <asp:BoundField DataField="Capitol" HeaderText="Capitol" 
                    SortExpression="Capitol" />
                <asp:BoundField DataField="Language" HeaderText="Language" 
                    SortExpression="Language" />
                <asp:BoundField DataField="Continent" HeaderText="Continent" 
                    SortExpression="Continent" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <a href="./editDatabase.aspx">Back</a>
</asp:Content>

