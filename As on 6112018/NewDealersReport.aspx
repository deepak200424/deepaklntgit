<%@ Page Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true"
    CodeFile="NewDealersReport.aspx.cs" Inherits="NewDealersReport" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="upNewDealerRpt" runat="server">
        <ContentTemplate>
            <table class="pgHeight2" width="90%">
                <tr>
                    <td style="font-size: 16; color: Navy;" class="tdbg" align="left" colspan="5" valign="top">
                        <br />
                        <br />
                        New Dealers Details:
                    </td>
                </tr>
                <tr>
                    <td valign="top" >
                    <br />
                    <br />
                        <asp:GridView ID="grdNewUserRpt" runat="server" CellPadding="4" 
                            ForeColor="#333333" GridLines="None">
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#999999" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
