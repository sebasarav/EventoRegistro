using System;
using System.Web.UI;

namespace EventoRegistro
{
    public partial class Confirmacion : Page
    {
        // Load the page and display the information stored in session variables
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nombre"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                lblResName.Text = Server.HtmlEncode(Session["Nombre"].ToString());
                lblResMail.Text = Server.HtmlEncode(Session["Correo"].ToString());
                lblResPhoneNumber.Text = Server.HtmlEncode(Session["Telefono"].ToString());
                lblResEvent.Text = Server.HtmlEncode(Session["Evento"].ToString());
                lblResModality.Text = Server.HtmlEncode(Session["Modalidad"].ToString());
                lblResDate.Text = Server.HtmlEncode(Session["FechaRegistro"].ToString());
                lblMessage.Text = $"Su registro ha sido recibido correctamente. " +
                                  $"Se enviará una confirmación al correo: <strong>{Server.HtmlEncode(Session["Correo"].ToString())}</strong>";
            }
        }

        // When the user clicks the back button, clear the session and redirect to the main page
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}
