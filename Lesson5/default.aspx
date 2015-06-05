<%@ Page Title="Input validation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Lesson5._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>ASP.NET input validation</h3>
    <h6>ALL the feild are required</h6>
    <div class="four group">
        <label for="txtitems" class="col-sm-3">Name: </label>
        <asp:TextBox ID="txtitems" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtitems" cssclass="label label-danger"></asp:RequiredFieldValidator>
        
    </div>
    
    <div class="four group">
        <label for="txtPassword" class="col-sm-3">Password: </label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtitems" cssclass="label label-danger" Display="Dynamic" />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Pass word is not match" CssClass="labe label-danger" ControlToCompare="txtComfrim" Type="String" Operator="Equal"></asp:CompareValidator>
    </div>
    
    <div class="four group">
        <label for="txtComfrim" class="col-sm-3">Password: </label>
        <asp:TextBox ID="TextConfirms" runat="server" TextMode="Password"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtitems" cssclass="label label-danger" />
    </div>
    
    <div class="four group">
        <label for="txtAge" class="col-sm-3">Age: </label>
        <asp:TextBox ID="txtAge" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtitems" cssclass="label label-danger" />
        <asp:CompareValidator  runat="server" ErrorMessage="Enter a number between 1 to 120" CssClass="labe label-danger" MinimuValue ="1" MaxiumValue ="120" Type="Integer" Display="Dynamic" 
    
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-btn-priamry" OnClick="btnSubmit_Click"/>
    <asp:Label ID="lblmessage" runat="server"></asp:Label>
</asp:Content>
