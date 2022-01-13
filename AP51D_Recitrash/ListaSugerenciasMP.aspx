<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListaSugerenciasMP.aspx.cs" Inherits="Reciclaje.WebForms.ListaSugerenciasMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <style type="text/css">
        .auto-style1 {
            margin: auto;
            text-align: center;
            background-color: lightgray;
        }
        .auto-style2 {
            width: 902px;
            height: 156px;
            text-align: center;
            margin: 12px auto auto auto;
        }
        .auto-style3 {
            margin-right: 0px;
            margin-top: 0px;
        }
        .bus {
            margin: auto;
        }
        .auto-style22 {
            width: 169px;
            text-align: left;
        }
        .auto-style33 {
            width: 238px;
            text-align: left;
        }
        .auto-style66 {
            margin: auto;
            width: 308px;
            text-align: center;
            height: 69px;
        }
        .auto-style67 {
            margin: auto;
            text-align: center;
            width: 526px;
            height: 252px;
        }
        .auto-style68 {
            margin: auto;
            text-align: center;
            background-color: lightgray;
            width: 155px;
        }
        
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

    </style>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="auto-style68">
                    <asp:LinkButton ID="LnkNuevo" runat="server" OnClick="LnkNuevo_Click">Nueva Sugerencia</asp:LinkButton>
            
                </div>
                <div class="auto-style2">
                    <br />
                    <asp:GridView ID="GrdSugerencia" runat="server" CellPadding="4" CssClass="auto-style3" ForeColor="#333333" GridLines="None" Height="132px" Width="900px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>

                <br /><br />
                <section class="auto-style66">
                    <asp:TextBox ID="TxtBuscar" placeholder="Ingrese código" runat="server"></asp:TextBox>
                    <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
                    <br />

                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LnkNuevo_Click">Agregar Nuevo reclamo</asp:LinkButton>
                    <br />
                    <asp:Label ID="LbMensaje1" runat="server" Text=""></asp:Label>
                    <br />
                </section>

                <div class="auto-style67 ayuda-bottom">

                    <asp:Panel ID="Panel1" Visible="false" runat="server" Height="354px" Width="509px">
                        <table class="auto-style1" align="center">
                            <tr>
                                <td colspan="2" class="auto-style4">Detalles de Reclamos</td>
                            </tr>
                          
                            <tr>

                                <td class="auto-style22">Asunto:</td>
                                <td class="auto-style33">
                                    <asp:HiddenField ID="Lbid" runat="server" />
                                    <asp:TextBox ID="TxtAsunto" Enabled="false" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Tema:</td>
                                <td class="auto-style33">
                                    
                                    <asp:Label ID="LbTema" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Fecha:</td>
                                <td class="auto-style33">
                                    <asp:Label ID="Lbfecha" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">Descripcion</td>
                                <td class="auto-style33">

                                    <asp:TextBox ID="TxtDescripcion" Enabled="false" runat="server" Height="30px" Width="261px" TextMode="MultiLine"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style22">
                                    <asp:LinkButton ID="LnkEditar" runat="server" OnClick="LnkEditar_Click">Modificar</asp:LinkButton>
                                </td>
                                <td class="auto-style33">
                                    <asp:Button ID="BtnModificar" Visible="false" runat="server" Text="Modificar" OnClick="BtnModificar_Click" />
                                   
                                    <asp:Button ID="BtnEliminar" Visible="false" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" />
                                    <br />
                                    <asp:Label ID="LbMensaje2" runat="server" Text=""></asp:Label>
                                </td>

                            </tr>

                        </table>
                    </asp:Panel>
                    
                </div>
            </ContentTemplate>
        
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
            <ProgressTemplate>
                <div id="fondo"></div>
                <div id="imgcargando"></div>
            </ProgressTemplate>
        </asp:UpdateProgress>

</asp:Content>
