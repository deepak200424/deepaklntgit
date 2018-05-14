using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class AgreementDetails : System.Web.UI.Page
{
    clsBSearchCustomer BL = new clsBSearchCustomer();
    decimal priceTotal = 0;
    SessionObject objLogin = new SessionObject();

    protected void Page_Load(object sender, EventArgs e)
    {
        clsCommonFunctions.ValidateSessionExpired(this, "SessionDetails");
        lbldate.Text = System.DateTime.Now.ToString("dd-MMMM-yyyy");
        string AgreementNo = Request.QueryString["agr_no"].ToString();
        DataSet ds = new DataSet();
        try
        {
            ds = BL.BL_getAgreementDetails(AgreementNo);
        }
        catch (Exception ex)
        {
            RegisterClientScriptBlock("focus", "<script>alert('" + ex.Message.ToString() + "');</script>");
        }

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[4].HorizontalAlign = HorizontalAlign.Right;
            priceTotal = priceTotal + Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "bill_amt"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[3].Text = "Total:";
            e.Row.Cells[4].HorizontalAlign = HorizontalAlign.Right;
            e.Row.Cells[4].Text = priceTotal.ToString("00.00");
        }
    }

}
