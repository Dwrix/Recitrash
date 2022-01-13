<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="indexMP.aspx.cs" Inherits="Reciclaje.indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="contenedor ayuda-top ayuda-borde ayuda-bottom">
        <div class="servicios ayuda-padding ">
            <section class="servicio ayuda-altura servicio-contenedores">
                <a href="ContenedoresMP.aspx" class="boton">Contenedores</a>

            </section>

            <section class="servicio ayuda-altura servicio-informaciones">
                <a href="#" class="boton">Informaciones</a>
            </section>

            <section class="servicio ayuda-altura servicio-contacto">
                <a href="registroSugerenciaMP.aspx" class="boton">Contacto</a>
            </section>
        </div>
    </main>

</asp:Content>
