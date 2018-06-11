using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Configuration;

public partial class MonthlyInterestSummary : System.Web.UI.Page
{

    double TotalNormal_int1, TotalNormal_int2, TotalDPC_interest, TotalDPC_interest1, total_interest;
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["constr"]);
    SessionObject objLogin = new SessionObject();
    clsBSearchCustomer BL = new clsBSearchCustomer();

    protected void Page_Load(object sender, EventArgs e)
    {
        clsCommonFunctions.ValidateSessionExpired(this, "SessionDetails");
        objLogin = (SessionObject)Session["SessionDetails"];
        lblScheme.Text = Request.QueryString[0];
        lblMonth.Text = Request.QueryString[1];
        BindGridMonthlyInterestSummary();
        lblreportdate.Text = DateTime.Now.ToString("dd-MMMM-yyyy");
    }

    public override void VerifyRenderingInServerForm(Control control)
    {

    }    

    protected void btnExportPDF_Click(object sender, EventArgs e)
    {
        string filename = "";
        filename = "MonthlyIntrst" + "" + DateTime.Now.Date.Day + DateTime.Now.Month + DateTime.Now.Year;
        string attachment = "attachment; filename=" + filename + ".xls";
        Response.ClearContent();
        Response.AddHeader("content-disposition", attachment);
        Response.ContentType = "application/ms-excel";
        StringWriter sWriter = new StringWriter();
        HtmlTextWriter htwWriter = new HtmlTextWriter(sWriter);
        GridView grd = new GridView();
        grd = gvMonthlyinterestsummary ;
        grd.FooterStyle.BackColor = System.Drawing.Color.White;
        grd.FooterStyle.ForeColor = System.Drawing.Color.Black;
        grd.HeaderStyle.BackColor = System.Drawing.Color.White;
        grd.HeaderStyle.ForeColor = System.Drawing.Color.Black;
        grd.GridLines = GridLines.None;
        grd.RowStyle.BackColor = System.Drawing.Color.White;
        gvMonthlyinterestsummary.RenderControl(htwWriter);
        Response.Write(sWriter.ToString());
        Response.End();
        //pnlSOADtl.Visible = false;
    }

    public void BindGridMonthlyInterestSummary()
    {
        DataSet ds = new DataSet();        
        ds = BL.BL_GetMonthlyInterestSummary(lblScheme.Text, lblMonth.Text);
        gvMonthlyinterestsummary.DataSource = ds.Tables[0];
        gvMonthlyinterestsummary.DataBind();
        
    }

    protected void gvMonthlyinterestsummary_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            TotalNormal_int1 = TotalNormal_int1 + Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Normal_Int1"));
            TotalNormal_int2 = TotalNormal_int2 + Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Normal_Int2"));
            TotalDPC_interest = TotalDPC_interest + Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "DPC_Interest"));
            TotalDPC_interest1 = TotalDPC_interest1 + Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "DPC_Interest1"));
            total_interest = total_interest + Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "total_Interest"));

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[2].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[2].Text = TotalNormal_int1.ToString("00.00");
            e.Row.Cells[3].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[3].Text = TotalNormal_int2.ToString("00.00");
            e.Row.Cells[4].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[4].Text = TotalDPC_interest.ToString("00.00");
            e.Row.Cells[5].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[5].Text = TotalDPC_interest1.ToString("00.00");
            e.Row.Cells[6].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[6].Text = total_interest.ToString("00.00");

        }
    }

}
