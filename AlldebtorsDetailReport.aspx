<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlldebtorsDetailReport.aspx.cs"
    Inherits="AlldebtorsDetailReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Debtors Detail Report</title>
    <style type="text/css">
        td, body
        {
            color: #000000;
            font-family: Tahoma, Arial, Verdana;
            font-size: 12px;
        }
        .Buttonchangepass
        {
            background-image: url(  'Images/Btn.png' );
            background-color: Transparent;
            width: 100px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table align="center" width="100%">
            <tr>
                <td height="130" colspan="4">
                    <p align="center">
                        <font size="4" color="#153E7E" face="Arial, Helvetica, sans-serif"><strong>Debtor detail
                            Report<br />
                            (Scheme :
                            <asp:Label ID="lblScheme" runat="server"></asp:Label>)</strong></font></p>
                    <p align="center">
                        <font color="#153E7E" size="2"><strong><font face="Arial, Helvetica, sans-serif">&nbsp;As
                            on
                            <asp:Label ID="lblfrmdate" runat="server"></asp:Label>
                            &nbsp;</font></strong></font></p>
                    <p align="right">
                        <font size="2" color="#153E7E" face="Arial, Helvetica, sans-serif"><strong>Report Date:&nbsp;
                            <asp:Label ID="lblrptdate" runat="server"></asp:Label>
                        </strong></font>
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnExportPDF" runat="server" Text="Export To Excel" CssClass="Buttonchangepass"
                        OnClick="btnExportPDF_Click" Width="117px" />
                </td>
            </tr>
            <tr>
                <td valign="top" align="center" class="style2">
                    <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" EmptyDataText="No records available"
                        Width="947px" CellPadding="4" ForeColor="#333333" OnRowDataBound="Gridview1_RowDataBound"
                        GridLines="Vertical" BorderStyle="Outset" BorderWidth="3px" BorderColor="#999999">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Outset" BorderWidth="3px"
                            BorderColor="#999999" />
                        <Columns>
                            <asp:TemplateField HeaderText="Sr.No">
                                <ItemTemplate>
                                    <asp:Label ID="lblSerial" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="mp_party_name" HeaderText="Dealer Name " />
                            <asp:BoundField DataField="AGRSCHNO" HeaderText="Agreement No " />
                            <asp:BoundField DataField="Disbursal_Date" HeaderText="Disbursal Date" />
                            <asp:BoundField DataField="bill_due_dt" HeaderText="Due Date" />
                            <asp:BoundField DataField="delayDays" HeaderText="Due Days" />
                            <asp:BoundField DataField="bill_no" HeaderText="Bill NO" />
                            <asp:BoundField DataField="Amt_Finance" HeaderText="Amt Financed">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="debtors" HeaderText="Overdue Amount">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CHARGE_DESC" HeaderText="Over due For" />
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Outset"
                            BorderWidth="3px" BorderColor="#999999" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="Black" />
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
