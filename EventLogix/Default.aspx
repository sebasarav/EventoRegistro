<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EventLogix.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro de Evento Académico</title>
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="header">
            <h1>Sistema de Registro a Eventos Académicos</h1>
            <h2>UNED – Escuela de Ciencias Exactas y Naturales</h2>
        </div>

        <div class="conteiner">
            <h3>Formulario de Registro de Participante</h3>

            <!-- Summary of validation errors -->
            <asp:ValidationSummary ID="vsSummary" runat="server"
                HeaderText="Por favor corrija los siguientes errores:"
                CssClass="validation-summary"
                DisplayMode="BulletList" />

            <!-- Field name -->
            <div class="field">
                <asp:Label ID="lblName" runat="server" Text="Nombre completo:" CssClass="label" AssociatedControlID="txtName" />
                <asp:TextBox ID="txtName" runat="server" CssClass="input-text" MaxLength="100" placeholder="Ej: Juan Pérez Rodríguez" />
                <asp:RequiredFieldValidator ID="rfvName" runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="El nombre completo es obligatorio."
                    Text="*" CssClass="error" />
            </div>

            <!-- Field mail -->
            <div class="field">
                <asp:Label ID="lblMail" runat="server" Text="Correo electrónico:" CssClass="label" AssociatedControlID="txtMail" />
                <asp:TextBox ID="txtMail" runat="server" CssClass="input-text" MaxLength="150" placeholder="usuario@correo.com" />
                <asp:RequiredFieldValidator ID="rfvMail" runat="server"
                    ControlToValidate="txtMail"
                    ErrorMessage="El correo electrónico es obligatorio."
                    Text="*" CssClass="error" />
                <asp:RegularExpressionValidator ID="revMail" runat="server"
                    ControlToValidate="txtMail"
                    ErrorMessage="Ingrese un correo electrónico válido."
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Text="*" CssClass="error" />
            </div>

            <!-- Field phone number -->
            <div class="field">
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Número de teléfono:" CssClass="label" AssociatedControlID="txtPhoneNumber" />
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="input-text" MaxLength="8" placeholder="88887777" />
                <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
                    ControlToValidate="txtPhoneNumber"
                    ErrorMessage="El número de teléfono es obligatorio."
                    Text="*" CssClass="error" />
                <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server"
                    ControlToValidate="txtPhoneNumber"
                    ErrorMessage="El teléfono debe tener exactamente 8 dígitos numéricos."
                    ValidationExpression="[0-9]{8}"
                    Text="*" CssClass="error" />
            </div>

           <!-- Field event -->
            <div class="field">
                <asp:Label ID="lblEvent" runat="server" Text="Evento académico:" CssClass="label" AssociatedControlID="ddlEvent" />
                <asp:DropDownList ID="ddlEvent" runat="server" CssClass="input-select"
                    AutoPostBack="true"
                    OnSelectedIndexChanged="ddlEvent_SelectedIndexChanged">
                    <asp:ListItem Value="">-- Seleccione un evento --</asp:ListItem>
                    <asp:ListItem Value="Congreso">Congreso de Ingeniería Informática 2026</asp:ListItem>
                    <asp:ListItem Value="Seminario">Seminario de Desarrollo Web Avanzado</asp:ListItem>
                    <asp:ListItem Value="Taller">Taller de Inteligencia Artificial</asp:ListItem>
                    <asp:ListItem Value="Charla">Charla sobre Ciberseguridad</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvEvent" runat="server"
                    ControlToValidate="ddlEvent"
                    InitialValue=""
                    ErrorMessage="Debe seleccionar un evento académico."
                    Text="*" CssClass="error" />
            </div>

            <!-- Field event information -->
            <div class="field">
                <asp:Panel ID="pnlInfoEvent" runat="server" CssClass="info-event" Visible="false">
                    <asp:Label ID="lblInfoEvent" runat="server" />
                </asp:Panel>
            </div>

            <!-- Field modality -->
            <div class="field">
                <asp:Label ID="lblModality" runat="server" Text="Modalidad de participación:" CssClass="label" />
                <asp:RadioButtonList ID="rblModality" runat="server" CssClass="radio-group" RepeatDirection="Horizontal">
                    <asp:ListItem Value="Presencial" Selected="True">Presencial</asp:ListItem>
                    <asp:ListItem Value="Virtual">Virtual</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <!-- Field terms and conditions -->
            <div class="field">
                <asp:CheckBox ID="chkTerms" runat="server"
                    Text=" Acepto los términos y condiciones del evento."
                    CssClass="checkbox" />
                <asp:CustomValidator ID="cvTerms" runat="server"
                    ErrorMessage="Debe aceptar los términos y condiciones para continuar."
                    Text="*"
                    OnServerValidate="cvTerms_ServerValidate"
                    CssClass="error" />
            </div>

            <!-- Field login-->
            <div class="field-button">
                <asp:Button ID="btnLogin" runat="server" Text="Registrarme"
                    CssClass="btn-primary" OnClick="btnLogin_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Limpiar formulario"
                    CssClass="btn-secondary" OnClick="btnClear_Click"
                    CausesValidation="false" />
            </div>

        </div>

        <div class="footer">
            <p>UNED &copy; 2026 – Programación Avanzada en Web</p>
        </div>

    </form>
</body>
</html>
