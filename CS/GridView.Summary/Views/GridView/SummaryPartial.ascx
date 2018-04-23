<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<%
    Html.DevExpress().GridView(settings => {
        settings.Name = "dxGridView";
        settings.CallbackRouteValues = new { Control = "GridView", Action = "SummaryPartial" };
        
        settings.Columns.Add("ShipName");
        settings.Columns.Add("Quantity");

        settings.Settings.ShowFooter = true;
        settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Count, "ShipName");
        settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Min, "Quantity");
        settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Average, "Quantity");
        settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Max, "Quantity");
    })
    .Bind(Model)
    .Render();
%>
