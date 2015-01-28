using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_2_kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SummaryDiv.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsValid)
                {
                    var input = InputTextBox.Text;
                    Model.Receipt Receipt = new Model.Receipt(double.Parse(input));
                    Receipt.Calculate(double.Parse(input));

                    TotalLabel.Text = String.Format("{0:c}", Receipt.Subtotal);
                    DiscountPercentLabel.Text = String.Format("{0:p0}", Receipt.DiscountRate);
                    DiscoutLabel.Text = String.Format("{0:c}", Receipt.MoneyOff);
                    ToPayLabel.Text = String.Format("{0:c}", Receipt.Total);

                    SummaryDiv.Visible = true;
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError(String.Empty, ex.Message);
            }
        }
    }
}