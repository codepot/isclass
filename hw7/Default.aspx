<%@ Page Title="" Language="C#" MasterPageFile="~/hw7/Hw7.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IS445HW7.hw7.Default" Theme="HW7Theme"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="welcome">
    <asp:Label ID="WelcomeLabel" runat="server"  Text="Welcome to my home page"></asp:Label>
    </p>
    <p class="belowWelcomeLine">
    <asp:Label ID="Label2" runat="server"  Text="Please click a link to visit other page"></asp:Label>
    </p>
</asp:Content>
