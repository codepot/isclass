using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS445_Web.HW6
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string name = NameTextBox.Text;
            string cardType = CardTypeDropDownList.SelectedValue;
            string cardNumber = CardNumberTextBox.Text;
            string expireDate = ExpireDateCalendar.SelectedDate.ToShortDateString();
            NameLabel.Text = name;
            CardTypeLabel.Text = cardType;
            CardNumberLabel.Text = cardNumber;
            ExpireLabel.Text = expireDate;
        }

       
    }
}