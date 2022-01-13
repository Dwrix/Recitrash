<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContenedoresMP.aspx.cs" Inherits="Reciclaje.WebForms.ContenedoresMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 42%;
        }
        .auto-style3 {
            width: 65px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>

    <h2 class="auto-style4">Solicitud Contenedores
        <asp:LinkButton ID="LnkUser" runat="server">LinkButton</asp:LinkButton>
        </h2>
        <table align="center" class="tblcontenedores">
            
            <tr>
                <td class="datocontenedor">Tipo de Contenedor</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Pack Completo</asp:ListItem>
                        <asp:ListItem Value="Vidrio">Vidrio</asp:ListItem>
                        <asp:ListItem>Plastico</asp:ListItem>
                        <asp:ListItem>Organicos</asp:ListItem>
                        <asp:ListItem>Papel</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="datocontenedor">Dirección:</td>
                <td>
                    <asp:TextBox ID="TxtDireccion" runat="server" Width="228px"></asp:TextBox>
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtDireccion" ErrorMessage="Dirección Obligatorio" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="datocontenedor" >Motivo:</td>
                <td>
                    <asp:TextBox ID="TxtMotivo" runat="server" TextMode="MultiLine" Height="63px" Width="234px"></asp:TextBox>
                </td>
                <td>     
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtMotivo" ErrorMessage="Motivo Obligatorio" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                   
                </td>
            </tr>
            <tr>              
                <td>
                    
                </td>
                <td>
                    <asp:Button ID="BtnEnviar" runat="server" Text="Enviar" OnClick="BtnEnviar_Click" />
                    
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td><asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label></td>
            </tr>>
        </table>
</asp:Content>
