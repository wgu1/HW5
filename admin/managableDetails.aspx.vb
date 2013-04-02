
Partial Class viewDataDetail
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delCountry As String = e.Values("Name").ToString()
        

        Label1.Text = "The record <span class=deletedCountries>" & delCountry & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./editDatabase.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./editDatabase.aspx")
    End Sub
End Class
