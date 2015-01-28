<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1_2_kassakvitto.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="TotalLiteral" runat="server">Total köpsumma:</asp:Literal>
        </div>
        <div>
            <asp:TextBox ID="InputTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="KrLabel" runat="server" Text="Kr"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mata in en köpsumma!" Display="Dynamic" ControlToValidate="InputTextBox" ></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mata in en köpsumma över 0 kr!" ControlToValidate="InputTextBox" Display="Dynamic" Type="Double" Operator="DataTypeCheck" ></asp:CompareValidator>
        </div>
        <div>
            <asp:Button ID="SendButton" runat="server" Text="Beräkna rabatt" OnClick="Button1_Click" />
        </div>

        <div id="SummaryDiv" runat="server">

            <h1>Kvitto</h1>

            <div>
                <p>Totalt:</p>
                <asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <div>
                <p>Rabattsats:</p>
                <asp:Label ID="DiscountPercentLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <div>
                <p>Rabbat:</p>
                <asp:Label ID="DiscoutLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <div>
                <p>Att betala:</p>
                <asp:Label ID="ToPayLabel" runat="server" Text="Label"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
