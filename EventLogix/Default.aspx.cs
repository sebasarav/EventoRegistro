using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventLogix
{
    public partial class Default : Page
    {
        // Get information of the event selected in the dropdown list
        private string GetInfoEvent(string codEvent)
        {
            switch (codEvent)
            {
                case "Congreso":
                    return "📅 Fecha: 15 de agosto, 2026 &nbsp;|&nbsp; 📍 Sede Central UNED, San José";
                case "Seminario":
                    return "📅 Fecha: 22 de agosto, 2026 &nbsp;|&nbsp; 📍 Sede Pérez Zeledón UNED, Pérez Zeledón";
                case "Taller":
                    return "📅 Fecha: 5 de setiembre, 2026 &nbsp;|&nbsp; 📍 Sede Parrita UNED, Parrita";
                case "Charla":
                    return "📅 Fecha: 12 de setiembre, 2026 &nbsp;|&nbsp; 📍 Sede Ciudad Neily UNED, Corredores";
                default:
                    return string.Empty;
            }
        }

        // Load the page and hide the event information panel on first load
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlInfoEvent.Visible = false;
            }
        }
        // When the user selects an event from the dropdown list, show the corresponding information
        protected void ddlEvent_SelectedIndexChanged(object sender, EventArgs e)
        {
            string info = GetInfoEvent(ddlEvent.SelectedValue);

            if (!string.IsNullOrEmpty(info))
            {
                lblInfoEvent.Text = info;
                pnlInfoEvent.Visible = true;
            }
            else
            {
                pnlInfoEvent.Visible = false;
            }
        }

        // Custom validation to ensure that the user has accepted the terms and conditions
        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        // When the user clicks the login button, validate the form and save the information in session variables
        // before redirecting to the confirmation page
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Session["Nombre"] = txtName.Text.Trim();
                Session["Correo"] = txtMail.Text.Trim();
                Session["Telefono"] = txtPhoneNumber.Text.Trim();
                Session["Evento"] = ddlEvent.SelectedItem.Text;
                Session["Modalidad"] = rblModality.SelectedValue;
                Session["FechaRegistro"] = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
                Response.Redirect("ConfirmHub.aspx");
            }
        }

        // Clear all form fields and hide the event information panel
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtMail.Text = string.Empty;
            txtPhoneNumber.Text = string.Empty;
            ddlEvent.SelectedIndex = 0;
            rblModality.SelectedIndex = 0;
            chkTerms.Checked = false;
            pnlInfoEvent.Visible = false;
            lblInfoEvent.Text = string.Empty;
        }
    }
}
