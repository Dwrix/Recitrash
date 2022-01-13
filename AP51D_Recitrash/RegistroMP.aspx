<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroMP.aspx.cs" Inherits="Reciclaje.WebForms.RegistroMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" class="tblRegistro">
        <tr>
            <td class="titregistro" colspan="2">Registro</td>

        </tr>
        <tr>
            <td class="datoregistro">Rut:</td>
            <td>
                <asp:TextBox ID="TxtRut" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtRut" ErrorMessage="Rut Obligatorio" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtRut" ErrorMessage="Rut Invalido" Display="Dynamic" ForeColor="red" ValidationExpression="^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]{1}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="datoregistro">Nombre:</td>
            <td>
                <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
            </td>
            <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNombre" ErrorMessage="Nombre Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="datoregistro">Correo:</td>
            <td>
                <asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>
            </td>
            <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCorreo" ErrorMessage="Correo Obligatorio" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCorreo" Display="Dynamic" ErrorMessage="Correo invalido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="datoregistro">Contraseña:</td>
            <td>
                <asp:TextBox ID="TxtContraseña" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtContraseña" ErrorMessage="Contraseña Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>       
                  
            </td>
        </tr>
         <tr>
            <td class="datoregistro">Confirmar Contraseña:</td>
            <td>
                <asp:TextBox ID="TxtConstraseña2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TxtContraseña" ControlToCompare="TxtConstraseña2" ErrorMessage="Contraseñas no coinciden" ForeColor="red"></asp:CompareValidator><br />
                
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="BntEnviar" runat="server" Text="Registrarse" OnClick="BntEnviar_Click" /></td>
            <td>
                <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label><br />
            </td>
        </tr>

    </table>

</asp:Content>
