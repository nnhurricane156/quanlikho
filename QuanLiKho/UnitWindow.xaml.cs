using BusinessObject;
using DataAccessLayer.Repository;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace QuanLiKho
{
    public partial class UnitWindow : Window
    {
        private readonly IUnitRepository unitRepository;

        public ObservableCollection<Unit> UnitList { get; set; }

        public Unit SelectedUnit { get; set; }

        public UnitWindow()
        {
            unitRepository = new UnitRepository();
            InitializeComponent();
            LoadUnitList();
        }

        public void LoadUnitList()
        {
            UnitList = new ObservableCollection<Unit>(unitRepository.GetAllUnits());
            this.DataContext = this;
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            var unitName = UnitNameTextBox.Text;
            if (!string.IsNullOrEmpty(unitName))
            {
                Unit newUnit = new Unit { UnitName = unitName };
                unitRepository.AddUnit(newUnit);
                UnitList.Add(newUnit);
                UnitNameTextBox.Clear();
            }
            else
            {
                MessageBox.Show("Unit name cannot be empty.");
            }
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedUnit = SelectedUnit;
            if (selectedUnit != null)
            {
                selectedUnit.UnitName = UnitNameTextBox.Text;

                unitRepository.UpdateUnit(selectedUnit);

                var unitIndex = UnitList.IndexOf(selectedUnit);
                if (unitIndex >= 0)
                {
                    UnitList[unitIndex] = selectedUnit;
                }
            }
            else
            {
                MessageBox.Show("Please select a unit to edit.");
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedUnit = SelectedUnit;
            if (selectedUnit != null)
            {
                unitRepository.DeleteUnit(selectedUnit.UnitId);
                UnitList.Remove(selectedUnit);
            }
            else
            {
                MessageBox.Show("Please select a unit to delete.");
            }
        }

        private void UnitListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedUnit = (Unit)UnitListView.SelectedItem;
            if (selectedUnit != null)
            {
                SelectedUnit = selectedUnit;
                UnitNameTextBox.Text = selectedUnit.UnitName;
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            LoadUnitList();
        }
    }
}
