<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MonthlyInterestSummary.aspx.cs"
    Inherits="MonthlyInterestSummary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        td, body
        {
            font-family: Tahoma, Arial, Verdana;
            font-size: 12px;
        }
        .style2
        {
            height: 298px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="1"
            style="vertical-align: middle">
            <tr>
                <td>
                    <p align="center">
                        <font color="#630042" size="3.12"><strong><font color="#153E7E">Monthly Interest Computation
                            Summary<br />
                            <br />
                        </font></strong></font>
                    </p>
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #153E7E; font-weight: 800">
                    Scheme:&nbsp<asp:Label ID="lblScheme" runat="server"></asp:Label>&nbsp;
                </td>
            </tr>
            <tr>
                <td align="left" style="color: #153E7E; font-weight: 800">
                    Month:&nbsp<asp:Label ID="lblMonth" runat="server"></asp:Label>&nbsp;
                </td>
                <td align="right" height="24" colspan="10" style="color: #153E7E; font-weight: 800;">
                    Report Date :
                    <asp:Label ID="lblreportdate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
             <tr>
                <td align="left" colspan="3">
                    <asp:Button ID="btnExportPDF" runat="server" Text="Export To Excel" CssClass="Buttonchangepass"
                        OnClick="btnExportPDF_Click" Width="119px" Height="25px" />
                    
                    
                </td>
            </tr>
            <tr>
                <td valign="top" align="center" colspan="11">
                    <asp:GridView ID="gvMonthlyinterestsummary" runat="server" AutoGenerateColumns="False"
                        Width="100%" CellPadding="4" GridLines="Both" ForeColor="#333333" ShowFooter="True"
                        OnRowDataBound="gvMonthlyinterestsummary_RowDataBound">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField HeaderText="customer_id" DataField="customer_id" />
                            <asp:BoundField HeaderText="Party Name" DataField="customer_name" FooterText="Totals:">
                                <FooterStyle HorizontalAlign="Right" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Normal Interest-1" DataField="Normal_Int1" />
                            <asp:BoundField HeaderText="Normal Interest-2" DataField="Normal_Int2" />
                            <asp:BoundField HeaderText="DPC" DataField="DPC_Interest" />
                            <asp:BoundField HeaderText="DPC Int Disc" DataField="DPC_Interest1" />
                            <asp:BoundField HeaderText="Total Interest" DataField="total_Interest" />
                        </Columns>
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
    </div>
    </form>
</body>
</html>
