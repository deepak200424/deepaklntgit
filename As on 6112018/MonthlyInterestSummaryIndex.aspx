<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master"
    AutoEventWireup="true" CodeFile="MonthlyInterestSummaryIndex.aspx.cs" Inherits="MonthlyInterestSummaryIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center" class="pgHeight2">
        <asp:Panel ID="pnlMonthlyIntrstSmmry" GroupingText="Select Month & Scheme to see Monthly Interest Summary"
            runat="server">
            <table>
                <tr>
                    <td colspan="2">
                        <strong></strong>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td style="width: 127px">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td style="width: 127px">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td align="left" style="width: 127px">
                        <asp:Label ID="lblScheme" runat="server"><strong>Select Scheme</strong></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlScheme" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td style="width: 127px">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td align="left" style="width: 127px">
                        <asp:Label ID="lblMonth" runat="server"><strong>Select Month</strong></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlMonth" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td style="width: 127px">
                    </td>
                    <td>
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td style="width: 127px">
                    </td>
                    <td align="left">
                        <br />
                        <asp:Button CssClass="Buttonchangepass" ID="btnSubmit" runat="server" Text="Submit"
                            OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        The report will be displayed in a new window. Kindly ensure that Popups are enabled.
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>