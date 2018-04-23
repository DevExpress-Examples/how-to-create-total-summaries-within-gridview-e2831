<%@ Control Language="vb" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<%
	Html.DevExpress().GridView(Function(settings) AnonymousMethod1(settings)).Bind(Model).Render()
%>


private bool AnonymousMethod1(object settings)
{
	settings.Name = "dxGridView";
	settings.CallbackRouteValues = New { Control = "GridView", Action = "SummaryPartial" };
	settings.Columns.Add("ShipName");
	settings.Columns.Add("Quantity");
	settings.Settings.ShowFooter = True;
	settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Count, "ShipName");
	settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Min, "Quantity");
	settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Average, "Quantity");
	settings.TotalSummary.Add(DevExpress.Data.SummaryItemType.Max, "Quantity");
	Return True;
}