Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.Mvc
Imports GridView.Summary.Models

Namespace GridView.Summary.Controllers
	<HandleError> _
	Public Class GridViewController
		Inherits Controller
		Public Function Index() As ActionResult
			Return Summary()
		End Function
		Public Function Summary() As ActionResult
			Return View("Summary", NorthwindDataProvider.GetInvoices())
		End Function
		Public Function SummaryPartial() As ActionResult
			Return PartialView("SummaryPartial", NorthwindDataProvider.GetInvoices())
		End Function
	End Class
End Namespace
