<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FillableForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <h1><small>Select a fillable form.</small></h1>
        <h2><small>Each fillable form is its own distinct field set on mouseover.</small></h2>
        <h3><small>Also, each field set's input prompt can be selected on double click.</small></h3>

        <!--Search the field sets within the current page-->

        <!--Dropdown-->
        <div class="col-md-10 field-set fillable-font" for="Dropdown">    
            <asp:Label ID="Label1" AssociatedControlID="Dropdown" runat="server" Text="Dropdown:"></asp:Label><br />
            <asp:DropDownList ID="Dropdown" runat="server" Width="45%"></asp:DropDownList>
            <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Submit_Click" />
            <br />
            <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="Dropdown"></asp:RequiredFieldValidator>
        </div>

        <!--Search(Partial text)-->
        <div class="col-md-10 field-set fillable-font" for="">
            <asp:Label ID="Label3" AssociatedControlID="SearchText" runat="server" Text="Search:"></asp:Label><br />
            <asp:TextBox ID="SearchText" runat="server" Width="268px"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-primary" />
        </div>

        <!--Multi-Select-->
        <div class="col-md-10 field-set fillable-font">
            <asp:Label ID="Label2" AssociatedControlID="Dropdown" runat="server" Text="Multi-select"> </asp:Label><br />
            <asp:ListBox ID="Multiselect" runat="server" CssClass="multiselect"></asp:ListBox>
            <br />
            <asp:Button ID="SubmitMulti" runat="server" Text="Submit" CssClass="btn btn-primary" />
        </div>

        <!--Radio-->
        <div class="col-md-10 field-set fillable-font">
            <asp:Label ID="Label4" runat="server" Text="Radio Buttons (Yes/No)"></asp:Label><br />
            <asp:RadioButton ID="RadioYes" runat="server" GroupName="Radio" />
            <asp:Label ID="Label5" AssociatedControlID="RadioYes" runat="server" Text="Yes"></asp:Label><br />
            <asp:RadioButton ID="RadioNo" runat="server" GroupName="Radio" />
            <asp:Label ID="Label6" AssociatedControlID="RadioNo" runat="server" Text="No" ></asp:Label>
            <br />
            <asp:Button ID="SubmitRadio" runat="server" Text="Submit" CssClass="text-right btn btn-primary"/>
            <br />
        </div>

    </div>
    <div class="row">
        <div class="col-sm-1 navbar-fixed-"
    </div>

    <script type="text/javascript">
    $(document).ready(function() {
        $('#example-getting-started').multiselect();
    });
    </script>
    
    

    </div>
    </div>
</asp:Content>
