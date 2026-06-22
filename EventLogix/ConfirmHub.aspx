<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmHub.aspx.cs" Inherits="EventoRegistro.Confirmacion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Confirm Hub</title>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        
        <div class="header">
            <h1>Sistema de Registro a Eventos Académicos</h1>
            <h2>UNED – Escuela de Ciencias Exactas y Naturales</h2>
        </div>

        <div class="conteiner">

            
            <div class="confirm-icon">✅</div>
            <h3 style="text-align:center; color:#2e7d32;">¡Registro completado exitosamente!</h3>

            
            <asp:Label ID="lblMessage" runat="server" CssClass="message-confirm" />

            <!-- Summary registration -->
            <div class="resume">
                <h4>Resumen de su registro:</h4>
                <table class="table-resume">
                    <tr>
                        <td class="td-label">Nombre:</td>
                        <td><asp:Label ID="lblResName" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="td-label">Correo electrónico:</td>
                        <td><asp:Label ID="lblResMail" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="td-label">Teléfono:</td>
                        <td><asp:Label ID="lblResPhoneNumber" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="td-label">Evento seleccionado:</td>
                        <td><asp:Label ID="lblResEvent" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="td-label">Modalidad:</td>
                        <td><asp:Label ID="lblResModality" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="td-label">Fecha y hora de registro:</td>
                        <td><asp:Label ID="lblResDate" runat="server" /></td>
                    </tr>
                </table>
            </div>
            <!-- Back Home page -->
            <div class="field-button">
                <asp:Button ID="btnBack" runat="server" Text="← Registrar otro participante"
                    CssClass="btn-primary" OnClick="btnBack_Click"
                    CausesValidation="false" />
            </div>

        </div>

        <div class="footer">
            <p>UNED &copy; 2026 – Programación Avanzada en Web</p>
        </div>

    </form>
</body>
</html>