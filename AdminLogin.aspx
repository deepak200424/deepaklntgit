<%@ Page Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminLogin.aspx.cs" Inherits="admin_AdminLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript" language="javascript">
 function checknput() {
            if ($("#<%=txtLoginID.ClientID%>").val() == '') {
                $("#<%=txtLoginID.ClientID%>").focus();
                alert("Login ID Required!");
                return false;
            }
            else if ($("#<%=txtPwd.ClientID%>").val() == '') {
                $("#<%=txtPwd.ClientID%>").focus();
                alert("Password Required!");
                return false;
            }
            return true;
        }
    </script>

    <table align="center" style="height: 425px">
        <tr>
            <td>
            </td>
            <td>
                <br />
                <br />
                <br />
                <br />
                In case of difficulties in Log in and to view reports,<a href="help.aspx" rel=""> Click
                    here for help</a>
            </td>
        </tr>
        <tr>
            <td align="center"  valign="top" colspan="3" >
                <table align="right" valign="middle">
                    <tr>
                        <td class="tdside">
                            &nbsp;
                        </td>
                        <td align="right">
                            <table border="0">
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" style="font-weight: bold; color: gray; font-size: medium;">
                                        &nbsp;Admin Login
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 20%; color: Gray;">
                                        <b>Login ID</b>
                                    </td>
                                    <td align="left" style="width: 278px">
                                        <asp:TextBox ID="txtLoginID" runat="server" Width="90%" CssClass="TextBox"></asp:TextBox>&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="color: gray;">
                                        <b>Password</b>
                                    </td>
                                    <td align="left" style="width: 278px;">
                                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="90%" CssClass="TextBox"></asp:TextBox>&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="right">
                                        <asp:ImageButton ImageUrl="~/Images/btnLogin.png" Height="39px" runat="server" OnClick="btnLogin_Click"
                                            ID="btnLogin" OnClientClick="javascript:return checknput();" ImageAlign="AbsMiddle"
                                            Width="84px" />
                                        <br />
                                        <asp:Label ID="lblErr" runat="server" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
