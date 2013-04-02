
Partial Class admin_addCountry
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./editDatabase.aspx")
    End Sub
End Class
