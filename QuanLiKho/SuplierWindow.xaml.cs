using DataAccessLayer.Repository;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for SuplierWindow.xaml
    /// </summary>
    public partial class SuplierWindow : Window
    {
		private readonly ISupplierRepository supplierRepository;

		public SuplierWindow()
		{
			supplierRepository = new SupplierRepository();
			InitializeComponent();
			LoadSupplierList();

		}
		public void LoadSupplierList()
		{
			var list = supplierRepository.GetAllSuppliers();
			this.DataContext = new { List = list };
		}

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{
			LoadSupplierList();
		}

		private void Button_Click(object sender, RoutedEventArgs e)
		{

		}

		private void Button_Click_1(object sender, RoutedEventArgs e)
		{

		}

		private void Button_Click_2(object sender, RoutedEventArgs e)
		{

		}
	}
}
