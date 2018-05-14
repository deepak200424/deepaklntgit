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

public partial class admin_AdminLogin : System.Web.UI.Page
{
    clsBSearchCustomer BL = new clsBSearchCustomer();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Form.DefaultButton = btnLogin.UniqueID;
        txtLoginID.Focus();
        if (Session["SessionDetails"] != null)
        {
            Session.Remove("SessionDetails");
        }
        if (!IsPostBack)
        {
            txtLoginID.Focus();
        }
    }
    protected void btnLogin_Click(object sender, ImageClickEventArgs e)
    {
        SessionObject objLogin = new SessionObject();
        DataSet ds = new DataSet();
        string susername = txtLoginID.Text.Trim().ToString();
        string spassword = txtPwd.Text.Trim().ToString();
        ds = BL.BL_getAdminDtl(susername);
        if (ds.Tables[0].Rows.Count == 1)
        {
            DataRow drlogin = ds.Tables[0].Rows[0];
            if (drlogin["sPassword"].ToString() == spassword)
            {
                objLogin.UserType = "Admin";
                objLogin.UserName = susername;
                objLogin.WebAdmin = "Yes";
                objLogin.ProductCode = "DLFIN";
                Session["SessionDetails"] = objLogin;
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblErr.Visible = true;
                lblErr.Text = "Incorrect Login Details";
            }
        }
        else
        {
            lblErr.Visible = true;
            lblErr.Text = "Incorrect Login Details";
        }
    }
}
