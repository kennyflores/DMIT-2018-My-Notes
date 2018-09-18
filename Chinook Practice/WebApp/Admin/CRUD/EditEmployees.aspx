<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditEmployees.aspx.cs" Inherits="WebApp.Admin.CRUD.EditEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="jumbotron">
            <h2>Manage Employees</h2>
        </div>
    </div>
    <div class="row">
        <asp:ListView ID="EmployeesListView" runat="server" DataSourceID="EmployeesDataSource" InsertItemPosition="LastItem">

            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:TextBox Text='<%# Bind("EmployeeId") %>' runat="server" ID="EmployeeIdTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("LastName") %>' runat="server" ID="LastNameTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="FirstNameTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("ReportsTo") %>' runat="server" ID="ReportsToTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("BirthDate") %>' runat="server" ID="BirthDateTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("HireDate") %>' runat="server" ID="HireDateTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("FullAddress") %>' runat="server" ID="FullAddressTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Country") %>' runat="server" ID="CountryTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("PostalCode") %>' runat="server" ID="PostalCodeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Fax") %>' runat="server" ID="FaxTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /></td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:TextBox Text='<%# Bind("EmployeeId") %>' runat="server" ID="EmployeeIdTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("LastName") %>' runat="server" ID="LastNameTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="FirstNameTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Title") %>' runat="server" ID="TitleTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("ReportsTo") %>' runat="server" ID="ReportsToTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("BirthDate") %>' runat="server" ID="BirthDateTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("HireDate") %>' runat="server" ID="HireDateTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("FullAddress") %>' runat="server" ID="FullAddress" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Country") %>' runat="server" ID="CountryTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("PostalCode") %>' runat="server" ID="PostalCodeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Fax") %>' runat="server" ID="FaxTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /></td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("EmployeeId") %>' runat="server" ID="EmployeeIdLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("FirstName") %>' runat="server" ID="FirstNameLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("ReportsTo") %>' runat="server" ID="ReportsToLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("BirthDate") %>' runat="server" ID="BirthDateLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("HireDate") %>' runat="server" ID="HireDateLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Address") %>' runat="server" ID="AddressLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("FullAddress") %>' runat="server" ID="FullAddressLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Country") %>' runat="server" ID="CountryLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("PostalCode") %>' runat="server" ID="PostalCodeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Fax") %>' runat="server" ID="FaxLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Email") %>' runat="server" ID="EmailLabel" /></td>
                    
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">EmployeeId</th>
                                    <th runat="server">LastName</th>
                                    <th runat="server">FirstName</th>
                                    <th runat="server">Title</th>
                                    <th runat="server">ReportsTo</th>
                                    <th runat="server">BirthDate</th>
                                    <th runat="server">HireDate</th>
                                    <th runat="server">Address</th>
                                    <th runat="server">Country</th>
                                    <th runat="server">PostalCode</th>
                                    <th runat="server">Phone</th>
                                    <th runat="server">Fax</th>
                                    <th runat="server">Email</th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder"></tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("EmployeeId") %>' runat="server" ID="EmployeeIdLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("FirstName") %>' runat="server" ID="FirstNameLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Title") %>' runat="server" ID="TitleLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("ReportsTo") %>' runat="server" ID="ReportsToLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("BirthDate") %>' runat="server" ID="BirthDateLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("HireDate") %>' runat="server" ID="HireDateLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("FullAddress") %>' runat="server" ID="FullAddressLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Country") %>' runat="server" ID="CountryLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("PostalCode") %>' runat="server" ID="PostalCodeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Phone") %>' runat="server" ID="PhoneLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Fax") %>' runat="server" ID="FaxLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Email") %>' runat="server" ID="EmailLabel" /></td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>

    <asp:ObjectDataSource ID="EmployeesDataSource" runat="server" DataObjectTypeName="ChinookBackend.Entities.Employee" DeleteMethod="DeleteEmployee" InsertMethod="AddEmployee" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllEmployees" TypeName="ChinookBackend.BLL.EmployeeController" UpdateMethod="UpdateEmployee"></asp:ObjectDataSource>
</asp:Content>
