<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IS445_Web.HW6.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 80px;
            text-align: left;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 93px;
        }
        .auto-style9 {
            width: 99px;
        }
        .auto-style10 {
            width: 85px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="224px" Width="610px" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <FinishNavigationTemplate>
                <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
            </FinishNavigationTemplate>
            <WizardSteps>
                <asp:WizardStep runat="server" StepType="Start" title="User Information">
                    <h1>A Demo of Wizard Server Control</h1>
                    <table style="width: 100%; height: 169px;">
                        <tr>
                            <td class="auto-style2">Name:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="NameTextBox" runat="server" Width="164px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Address:</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="AddressTextBox" runat="server" Height="86px" Rows="4" Width="222px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>

                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" title="Payment Information">
                    <h1>Payment Information</h1>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style4">Card Type:</td>
                            <td class="auto-style10">
                                <asp:DropDownList ID="CardTypeDropDownList" runat="server">
                                    <asp:ListItem>Visa</asp:ListItem>
                                    <asp:ListItem>Master</asp:ListItem>
                                    <asp:ListItem>Amex</asp:ListItem>
                                    <asp:ListItem>Discovery</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Card Number:</td>
                            <td class="auto-style10">
                                <asp:TextBox ID="CardNumberTextBox" runat="server" Width="211px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">Expire on:</td>
                            <td class="auto-style10">
                                <asp:Calendar ID="ExpireDateCalendar" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="285px">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                            </td>
                        </tr>
                    </table>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete">
                <h1>Payment Summary:</h1>
                    <p>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style9">Name on card:</td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Card Type:</td>
                                <td>
                                    <asp:Label ID="CardTypeLabel" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Card Number:</td>
                                <td>
                                    <asp:Label ID="CardNumberLabel" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Expire Date:</td>
                                <td>
                                    <asp:Label ID="ExpireLabel" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <h5>will be charged for the your payment.</h5>
                        <p>
                        </p>
                        <p>
                        </p>
                    </p>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
