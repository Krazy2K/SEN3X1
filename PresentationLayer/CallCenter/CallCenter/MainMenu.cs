﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CallCenter
{
    public partial class MainMenu : Form
    {
        public MainMenu()
        {
            InitializeComponent();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void btnClose_Click(object sender, EventArgs e)
        {
           
            Environment.Exit(0);
        }

        private void btnExisitng_Click(object sender, EventArgs e)
        {
            ExistingCustomer existingCustomer = new ExistingCustomer();
            existingCustomer.Show();
            this.Hide();

        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            NewCustomer newCustomer = new NewCustomer();
            newCustomer.Show();
            this.Hide();
        }

        private void NewCustomerBtn_Click_1(object sender, EventArgs e)
        {
            NewCustomer newcustomer = new NewCustomer();
            newcustomer.Show();
            this.Hide();
        }
    }
}
