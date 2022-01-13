<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="loginMP.aspx.cs" Inherits="Reciclaje.WebForms.loginMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <table align="center" class="tblogin">
            <tr>
                <td colspan="2" text-align="center"><strong>LOGIN</strong></td>
            </tr>
            <tr>
                <td class="tduserpw">Correo:</td>
                <td>
                    <asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="Correo Obligatorio" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCorreo" Display="Dynamic" ErrorMessage="Correo invalido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="tduserpw">Contraseña:</td>
                <td>
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Contraseña Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>       
                  
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnLogin" runat="server" Text="Ingresar" OnClick="BtnLogin_Click" />
                    <br />
                    <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2"><a href="RegistroMP.aspx">Crear Cuenta</a></td>
            </tr>
        </table>
        

</asp:Content>
