using BusinessObject;
using DataAccessLayer.Repository;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
    /// Interaction logic for CustomerWindow.xaml
    /// </summary>
    public partial class CustomerWindow : Window
    {
        private CustomerRepository _customerRepository = new();
        public CustomerWindow()
        {
            InitializeComponent();
        }

        public void FillDataGrid(List<Customer> arr)
        {
            CustomerDataGrid.ItemsSource = null;
            CustomerDataGrid.ItemsSource = arr;
        }

        private void Grid_Loaded(object sender, RoutedEventArgs e)
        {
            CustomerDataGrid.ItemsSource = _customerRepository.GetAllCustomers();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
        }
    }

}
