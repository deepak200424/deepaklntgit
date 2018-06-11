using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class MonthlyInterestSummaryIndex : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["constr"]);
    clsCommonDataAccess clsdb = new clsCommonDataAccess();
    clsBSearchCustomer BL = new clsBSearchCustomer();
    SessionObject objLogin = new SessionObject();
    protected void Page_Load(object sender, EventArgs e)
    {
        clsCommonFunctions.ValidateSessionExpired(this, "SessionDetails");
        
        this.Form.DefaultButton = btnSubmit.UniqueID;
        objLogin = (SessionObject)Session["SessionDetails"];
        if (objLogin.WebAdmin.ToUpper() != "YES")
        {
            Session.Clear();
            Session.Abandon();            
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = BL.BL_BindDropDownWithMonth();
            ddlMonth.DataSource = ds.Tables[0];
            ddlMonth.DataTextField = "INT_MONTH";
            ddlMonth.DataBind();
            BindScheme();
        }
    }

    public void BindScheme()
    {
        DataSet ds = new DataSet();
        ds = BL.BL_getSchemeNamebyProductCode(objLogin.ProductCode);
        ddlScheme.DataSource = ds.Tables[0];
        ddlScheme.DataTextField = "Scheme_Desc";
        ddlScheme.DataValueField = "Scheme_Desc";
        ddlScheme.DataBind();
        ddlScheme.Items.Insert(0, "ALL");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("MonthlyInterestSummary.aspx?scheme_cd=" + ddlScheme.SelectedItem.ToString() + "&int_mon=" + ddlMonth.SelectedItem.ToString());
    }
}
