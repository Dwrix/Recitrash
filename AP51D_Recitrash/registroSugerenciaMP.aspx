<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="registroSugerenciaMP.aspx.cs" Inherits="Reciclaje.WebForms.registroSugerenciaMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        #fondo {
            position: fixed;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            overflow: hidden;
            padding: 0px;
            margin: 0px;
            background-color: gray;
            opacity: 0.8;
            z-index: 2;
        }

        #imgcargando {
            position: fixed;
            top: 0%;
            left: 35%;
            width: 30%;
            height: 80%;
            z-index: 3;
            background-image: url("Img/loader.gif");
            background-repeat: no-repeat;
            background-position: center;
        }
        

        .auto-style6 {
            text-align: center;
            height: 38px;
        }
        .auto-style7 {
            width: 208px;
            height: 96px;
        }
        .auto-style8 {
            height: 96px;
        }
        .auto-style9 {
            text-align: center;
            height: 32px;
        }
        .auto-style10 {
            width: 208px;
            height: 32px;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            text-align: center;
            height: 37px;
        }
        .auto-style13 {
            width: 208px;
            height: 37px;
        }
        .auto-style19 {
            height: 72px;
        }
        .auto-style20 {
            width: 208px;
            height: 72px;
        }
        

        .auto-style21 {
            text-align: center;
            margin-bottom: 20px;
            height: 51px;
        }
        .auto-style22 {
            text-align: center;
            height: 11px;
        }
        .auto-style23 {
            width: 208px;
            height: 11px;
        }
        .auto-style24 {
            height: 11px;
        }
        .auto-style25 {
            text-align: center;
            height: 22px;
        }
        .auto-style26 {
            width: 208px;
            height: 22px;
        }
        .auto-style27 {
            height: 22px;
        }
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

    <h2  >Sugerencias y Reclamos <br />Bienvenido:&nbsp;
        <asp:LinkButton ID="LnkUser" runat="server" CausesValidation="false" OnClick="LnkUser_Click">LinkButton</asp:LinkButton>
        </h2>

        <table align="center" class="tblsugerencia">
            <tr>
                <td colspan="2" class="auto-style21"><strong>Registrar Sugerencia o Reclamo</strong></td>
            </tr>
            
            <tr>
                <td class="auto-style22">Asunto</td>
                <td class="auto-style23"  >
                    <asp:TextBox ID="TxtAsunto" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style24">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtAsunto" ErrorMessage="Asunto Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style12">Tema</td>
                <td class="auto-style13"  >
                    <asp:DropDownList ID="DrpTema" runat="server" >
                        
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Fecha</td>
                <td class="auto-style10" >
                    <asp:TextBox ID="TxtFecha" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style11">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtFecha" Display="Dynamic" ErrorMessage="Fecha Obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>


                </td>
            </tr>
            <tr>
                <td class="auto-style25">Descripcion</td>
                <td class="auto-style26" >
                    <asp:TextBox ID="TxtDescripcion" runat="server" Height="91px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    
                </td>
                <td class="auto-style27">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDescripcion" ErrorMessage="Descripcion Obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style19"> 
                  
                </td>
                <td class="auto-style20">
                    <asp:Button ID="BtnRegistro" runat="server" Text="Registrar" OnClick="BtnRegistro_Click" /><br />
                    <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label><br />
                    <asp:LinkButton ID="LnkListado" runat="server" CausesValidation="false" OnClick="LnkListado_Click">Ver mis Sugerencias</asp:LinkButton>
                </td>
            </tr>
            
        </table>
            </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
            <ProgressTemplate>
                <div id="fondo"></div>
                <div id="imgcargando"></div>
            </ProgressTemplate>
        </asp:UpdateProgress>

</asp:Content>
