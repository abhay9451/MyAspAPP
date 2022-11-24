<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="MyAspAPP.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt-3">
        <div class="col-6 offset-3">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Add Employee</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label Text="" id="lblMessage" runat="server" />
                    </div>
                    <div class="form-group">
                        <label>Enter Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Enter Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Gender</label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                            <asp:ListItem Value="-1" Text="select" Selected="True"></asp:ListItem>
                            <asp:ListItem Value="Male" Text="male"></asp:ListItem>
                            <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                            <asp:ListItem Value="other" Text="other"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Enter Salary</label>
                        <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button Text="create" CssClass="btn btn-info" ID="btnAdd" runat="server"  OnClick="btnAdd_Click"/>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
