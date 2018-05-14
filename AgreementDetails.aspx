<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgreementDetails.aspx.cs"
    Inherits="AgreementDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agreement Details</title>
    <style type="text/css">
        td, body
        {
            font-family: Tahoma, Arial, Verdana;
            font-size: 11px;
        }
        tr
        {
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <table border="0" cellpadding="0" cellspacing="1" style="width: 60%">
            <tr>
                <td align="left" valign="top">
                    <table border="0" align="center" cellpadding="0" cellspacing="1" style="width: 91%">
                        <tr>
                            <td height="170">
                                <p align="center">
                                    <font size="4"><strong><font color="#153E7E" size="3">Agreement Details </font></strong>
                                    </font>
                                </p>
                                <p align="right" style="width: 673px">
                                    <font color="#153E7E"><strong><font size="2">Report Date:
                                        <asp:Label ID="lbldate" ForeColor="#153E7E" runat="server" Text="Label"></asp:Label>
                                    </font></strong></font>
                                </p>
                                <div align="center" style="width: 684px">
                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" FooterText="Total"
                                        GGridLines="Both" AutoGenerateColumns="False" Width="668px" ShowFooter="True"
                                        OnRowDataBound="GridView1_RowDataBound" BorderStyle="Outset" BorderWidth="3px"
                                        BorderColor="#999999">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Outset" BorderWidth="3px"
                                            BorderColor="#999999" />
                                        <Columns>
                                            <asp:BoundField DataField="AgrSchNo" HeaderText="Agreement No" />
                                            <asp:BoundField DataField="disbursal_Date" HeaderText="Agreement Date" />
                                            <asp:BoundField DataField="DUE_DATE" HeaderText="Due Date" />
                                            <asp:BoundField DataField="Invoice_No" HeaderText="Invoice No" />
                                            <asp:BoundField DataField="bill_amt" HeaderText="Invoice Amt" />
                                        </Columns>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Outset"
                                            BorderWidth="3px" BorderColor="#999999"></FooterStyle>
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Wrap="False"
                                            BorderStyle="Outset" BorderWidth="3px" BorderColor="#999999" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#333333" BorderStyle="Outset" BorderWidth="3px"
                                            BorderColor="#999999" />
                                    </asp:GridView>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <font size="2"><strong>
                                    <br />
                                    <input type="button" value="Close" name="Close" onclick="window.close()" style="width: 63px"></strong></font>
                                <font size="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </strong></font>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" valign="top">
                                <div align="center">
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
