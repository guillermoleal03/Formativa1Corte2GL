<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Formativa1Corte2GL._Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- Estilos para el acordeón -->
    <style>
        /* Estilos del acordeón */
        .accordionHeader {
            border: 1px solid #2F4F4F;
            color: white; 
            background-color: #2E4d7B;
            font-family: Verdana, Arial;
            font-size: 13px; 
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }

        .accordionHeaderSelected {
            border: 1px solid #2F4F4F;
            color: white; 
            background-color: #5078B3;
            font-family: Verdana, Arial;
            font-size: 14px; 
            font-weight: bold;
            padding: 5px;
            margin-top: 5px;
            cursor: pointer;
        }

        .accordionContent {
            background-color: #D3DEEF;
            border: 1px dashed #2F4F4F;
            border-top: none;
            padding: 5px;
            padding-top: 10px;
        }
    </style>

    <!-- MultiView con dos vistas -->
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <!-- View 1: Con Calendario y botón -->
        <asp:View ID="View1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="Selecciona una fecha:"></asp:Label>
            <br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Cambiar a vista 2" OnClick="CambiarAVista2" />
        </asp:View>
        
        <!-- View 2: Con FileUpload y botón -->
        <asp:View ID="View2" runat="server">
            <asp:Label ID="Label2" runat="server" Text="Sube tu archivo:"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="ButtonGuardar" runat="server" Text="Guardar" OnClick="guardar" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Volver a vista 1" OnClick="CambiarAVista1" />
        </asp:View>
    </asp:MultiView>

    <!-- Acordeón con tres paneles -->
    <cc1:Accordion ID="MyAccordion"
        runat="Server" SelectedIndex="0"
        HeaderCssClass="accordionHeader"
        HeaderSelectedCssClass="accordionHeaderSelected"
        ContentCssClass="accordionContent" AutoSize="None"
        FadeTransitions="true" TransitionDuration="250"
        FramesPerSecond="40" RequireOpenedPane="false"
        SuppressHeaderPostbacks="true">
        <Panes>
            <cc1:AccordionPane ID="AccordionPane1" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent" runat="server">
                <Header> 
                    <asp:Label ID="Label10" runat="server" Text="Acordeon No. 1"></asp:Label> 
                </Header>
                <Content>
                    <asp:Label ID="Label18" SkinID="text" runat="server" Text="Este es el cuerpo de este acordeón. Puede insertar cualquier elemento ASP dentro de él"></asp:Label>
                </Content>
            </cc1:AccordionPane>
            
            <cc1:AccordionPane ID="AccordionPane2" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent" runat="server">
                <Header> 
                    <asp:Label ID="Label3" runat="server" Text="Acordeon No. 2"></asp:Label> 
                </Header>
                <Content>
                    <asp:Label ID="Label4" SkinID="text" runat="server" Text="Este es el cuerpo de este acordeón. Puede insertar cualquier elemento ASP dentro de él"></asp:Label>
                </Content>
            </cc1:AccordionPane>
            
            <cc1:AccordionPane ID="AccordionPane3" HeaderCssClass="accordionHeader" ContentCssClass="accordionContent" runat="server">
                <Header> 
                    <asp:Label ID="Label5" runat="server" Text="Acordeon No. 3"></asp:Label> 
                </Header>
                <Content>
                    <asp:Label ID="Label6" SkinID="text" runat="server" Text="Este es el cuerpo de este acordeón. Puede insertar cualquier elemento ASP dentro de él"></asp:Label>
                </Content>
            </cc1:AccordionPane>
        </Panes>
    </cc1:Accordion>

</asp:Content>
