using BusinessObject;
using DataAccessLayer.Repository;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanLiKho
{
    /// <summary>
    /// Interaction logic for UserWindow.xaml
    /// </summary>
    public partial class UserWindow : Window
    {
		private readonly ICustomerRepository customerRepository;

		public UserWindow()
		{
			customerRepository = new CustomerRepository();
			InitializeComponent();
			LoadCustomerList();
		}


		public void LoadCustomerList()
		{
			var list = customerRepository.GetAllCustomers();
			this.DataContext = new { List = list };
		}

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{
			LoadCustomerList();
		}

		private void Button_Click(object sender, RoutedEventArgs e)
		{

        }

		private void Button_Click_1(object sender, RoutedEventArgs e)
		{

		}

		//Delete
		private void Button_Click_2(object sender, RoutedEventArgs e)
		{
			try
			{
				if (!string.IsNullOrEmpty(txtCustomerId.Text))
				{
					Customer g = customerRepository.GetCustomerById(Int32.Parse(txtCustomerId.Text));
					customerRepository.DeleteCustomer(g.CustomerId);
				}
				else
				{
					MessageBox.Show("You must select a Customer!");
				}
			}
			catch (Exception ex)
			{

			}
			finally
			{
				LoadCustomerList();
			}
		}

		private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
		{
			
		}

		
	}
}
