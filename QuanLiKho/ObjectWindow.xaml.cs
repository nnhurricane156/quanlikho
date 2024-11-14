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
    /// Interaction logic for ObjectWindow.xaml
    /// </summary>
    public partial class ObjectWindow : Window
    {
		private readonly IObjectRepository objectRepository;

		public ObjectWindow()
		{
			objectRepository = new ObjectRepository();
			InitializeComponent();
			LoadSupplierList();

		}
		public void LoadSupplierList()
		{
			var list = objectRepository.GetAllObject();
			this.DataContext = new { List = list };
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
