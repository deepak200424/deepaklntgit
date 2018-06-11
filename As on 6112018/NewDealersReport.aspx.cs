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

public partial class NewDealersReport : System.Web.UI.Page
{
    clsBSearchCustomer BL = new clsBSearchCustomer();
    SessionObject objLogin = new SessionObject();

    protected void Page_Load(object sender, EventArgs e)
    {
        clsCommonFunctions.ValidateSessionExpired(this, "SessionDetails");
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
            ds = BL.BL_GetNewDealerDetail(objLogin.ProductCode);
            grdNewUserRpt.DataSource = ds.Tables[0];
            grdNewUserRpt.DataBind();
        }
    }
}
