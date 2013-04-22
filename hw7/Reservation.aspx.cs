using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS445HW7.hw7
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Title = "HW7 Form Demo - IS445 - Phuc Le";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
          Response.Write("<script>window.alert('Thank you for your reservation!');</script>");
          resetForm();
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            resetForm();
        }

        private void resetForm()
        {
            fullName.Text = "";
            email.Text = "";
            phoneNumber.Text = "";
            arrivalDate.Text = "";
            arrivalTime.Text = "";
            roomType.SelectedIndex = 0;
            GuestNumber.Text = "0";
            nightNumber.Text = "1";
            promotionCode.Text = "";
            note.Text = "";
            fullName.Focus();
        }
    }
}