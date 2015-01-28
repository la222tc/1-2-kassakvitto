<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <%-- Formulär för beräkning av köpsumman --%>
        <div>
            <asp:Literal ID="TotalLiteral" runat="server">Total köpsumma:</asp:Literal>
        </div>
        <div>
            <asp:TextBox ID="InputTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="KrLabel" runat="server" Text="Kr"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mata in en köpsumma!" Display="Dynamic" ControlToValidate="InputTextBox" ></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mata in en köpsumma över 0 kr!" ControlToValidate="InputTextBox" Display="Dynamic" Type="Double" Operator="GreaterThan" EnableViewState="True" ValueToCompare="0"></asp:CompareValidator>
        </div>
        <div>
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="Button1_Click" />
        </div>

        <%-- Visning av kvitto. Beräkningen av köpsumman --%>
        <asp:Panel id="SummaryDiv" runat="server" visible="false">
            <h1>Kvitto</h1>

            <div>
                <asp:literal runat="server">Totalt:</asp:literal>
                <asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <div>
                <asp:literal runat="server">Rabattsats:</asp:literal>
                <asp:Label ID="DiscountPercentLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <div>
                <asp:literal runat="server">Rabbat:</asp:literal>
                <asp:Label ID="DiscoutLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <div>
                <asp:literal runat="server">Att betala:</asp:literal>
                <asp:Label ID="ToPayLabel" runat="server" Text="Label"></asp:Label>
            </div>
        </asp:Panel>
    </form>
</body>
</html>
