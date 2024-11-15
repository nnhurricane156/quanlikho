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
    /// Interaction logic for UnitWindow.xaml
    /// </summary>
    public partial class UnitWindow : Window
    {
		private readonly IUnitRepository unitRepository;

		public UnitWindow()
        {
			unitRepository = new UnitRepository();
            InitializeComponent();
			LoadUnitList();

		}
		public void LoadUnitList()
		{
			var list = unitRepository.GetAllUnits();			 
			this.DataContext = new { List = list } ;
		}

		private void Window_Loaded(object sender, RoutedEventArgs e)
		{
			LoadUnitList();		
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

		private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
		{

		}

		
	}
}
