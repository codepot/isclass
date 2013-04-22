<%@ Page Title="" Language="C#" MasterPageFile="~/hw7/Hw7.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="IS445HW7.hw7.Reservation" Theme="HW7Them2" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="welcome">
        <asp:Label ID="WelcomeLabel" runat="server" Text="Welcome to my Web Form"></asp:Label>
    </p>
    <p class="belowWelcomeLine">
        <asp:Label ID="Label2" runat="server" Text="A demo form for hotel reservation"></asp:Label>
    </p>
    <fieldset>
        <legend>Customer Information:</legend>
        <label for="fullName">Full name:</label><asp:TextBox ID="fullName" runat="server" placeholder="Firstname Lastname" required="required"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="error" runat="server" ID="requireField" ControlToValidate="fullName" ErrorMessage="Full name is required!" /><br />
        <br />
        <label for="email">Email address:</label>
        <asp:TextBox ID="email" runat="server" type="email" required="required"></asp:TextBox>
        <br />
        <br />
        <label for="phoneNumber">Phone:</label>
        <asp:TextBox ID="phoneNumber" runat="server" type="tel" pattern='\d{3}[\-]\d{3}[\-]\d{4}' title='in U.S. Format. Ex: 123-456-7890' required="required"></asp:TextBox>
        <br />
        <br />
    </fieldset>
    <br />
    <fieldset>
        <legend>Room Information:</legend>
        <label for="arrivalDate">Arrival date:</label>
        <asp:TextBox runat="server" ID="arrivalDate" type="date" required="required"></asp:TextBox>
        <br />
        <br />
        <label for="arrivalTime">Arrival time:</label>

        <asp:TextBox ID="arrivalTime" runat="server" type="time" required="required"></asp:TextBox><br />
        <br />
        <label for="roomType">Select Room Type:</label>
        <asp:DropDownList ID="roomType" runat="server"> 
            <asp:ListItem>Luxury</asp:ListItem>           
            <asp:ListItem>Standard</asp:ListItem>
            <asp:ListItem>Economic</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <label for="nightNumber">Number of Nights (valid number is 1 to 30):</label>
        <asp:TextBox ID="nightNumber" runat="server" numeric="true" type="number" min="1" max="30" value="1"></asp:TextBox>
        <br />
        <asp:RangeValidator CssClass="error" ID="between1and30" ControlToValidate="nightNumber" MinimumValue="1" MaximumValue="30"
            Type="Integer" EnableClientScript="false" Text="valid number is 1 to 30!" runat="server" />
        <br />
        <label for="GuestNumber">Number of Guests (the maximum guests is 3):</label>&nbsp;
                <asp:TextBox ID="GuestNumber" runat="server" numeric="true" type="number" min="0" max="3" value="0"></asp:TextBox>
        <asp:RangeValidator CssClass="error" ID="maxIs3" ControlToValidate="GuestNumber" MinimumValue="0" MaximumValue="3"
            Type="Integer" EnableClientScript="false" Text="valid number is 0 to 3!" runat="server" />
    </fieldset>
    <br />
    <fieldset>
        <legend>Other Information:</legend>
        <label for="promotionCode">Promo Code:</label>
        <asp:TextBox ID="promotionCode" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator CssClass="error" ID="promotionCodeFormat" pattern="[a-zA-Z0-9]{4}" runat="server" ControlToValidate="promotionCode" ErrorMessage="enter 4 alpha/number only" ValidationExpression="[a-zA-Z0-9]{4}">enter 4 plain-only letters</asp:RegularExpressionValidator>
        <br />
        <br />
        <label for="notes">Special note:</label><br />
        <asp:TextBox ID="note" runat="server" Rows="5" TextMode="MultiLine" Width="250px" placeholder="enter your note here."></asp:TextBox>

    </fieldset>
    <div>
        <br />
        &nbsp;<asp:Button ID="ResetButton" runat="server" Text="Reset" type="reset" OnClick="ResetButton_Click" UseSubmitBehavior="false" CausesValidation="false" class="btnDecor"/>
        &nbsp;<asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" type="submit" class="btnDecor"/>
    </div>
</asp:Content>
