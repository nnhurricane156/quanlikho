using System;
using System.Linq;
using System.Windows;
using BusinessObject;
using DataAccessLayer.DAO;

namespace QuanLiKho
{
    public partial class OutputWindow : Window
    {
        private OutputInfo selectedOutputInfo;

        public OutputWindow()
        {
            InitializeComponent();
            LoadObjectNames();
            LoadOutputInfos();
        }

        // Load danh sách vật tư vào ComboBox
        private void LoadObjectNames()
        {
            cbObjectName.ItemsSource = ObjectDAO.Instance.GetAll();
        }

        // Load danh sách OutputInfo vào DataGrid
        private void LoadOutputInfos()
        {
            dgOutputInfo.ItemsSource = OutputDAO.Instance.GetAll().ToList();
        }

        // Khi chọn một dòng trong DataGrid
        private void dgOutputInfo_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            selectedOutputInfo = dgOutputInfo.SelectedItem as OutputInfo;

            if (selectedOutputInfo != null)
            {
                cbObjectName.SelectedValue = selectedOutputInfo.ObjectId;
                dpOutputDate.SelectedDate = selectedOutputInfo.OutputDate.ToDateTime(TimeOnly.MinValue);
                txtCount.Text = selectedOutputInfo.Count.ToString();
                txtStatus.Text = selectedOutputInfo.Status;

                // Lấy thông tin InputInfo thông qua ObjectId (khóa ngoại)
                var inputInfo = InputDAO.Instance.GetByObjectId(selectedOutputInfo.ObjectId);
                if (inputInfo != null)
                {
                    // Hiển thị giá trị InputPrice và OutputPrice từ InputInfo
                    txtInputPrice.Text = inputInfo.InputPrice.ToString();
                    txtOutputPrice.Text = inputInfo.OutputPrice.ToString();
                }
            }
        }

        // Thêm mới OutputInfo
        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            var newOutputInfo = new OutputInfo
            {
                ObjectId = (int)cbObjectName.SelectedValue,
                Count = int.Parse(txtCount.Text),
                OutputDate = DateOnly.FromDateTime(dpOutputDate.SelectedDate.Value),
                Status = txtStatus.Text
            };

            OutputDAO.Instance.Add(newOutputInfo);
            LoadOutputInfos();
        }

        // Sửa thông tin OutputInfo
        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            if (selectedOutputInfo != null)
            {
                selectedOutputInfo.ObjectId = (int)cbObjectName.SelectedValue;
                selectedOutputInfo.Count = int.Parse(txtCount.Text);
                selectedOutputInfo.OutputDate = DateOnly.FromDateTime(dpOutputDate.SelectedDate.Value);
                selectedOutputInfo.Status = txtStatus.Text;

                // Cập nhật thông tin OutputInfo, không thay đổi InputPrice và OutputPrice
                OutputDAO.Instance.Update(selectedOutputInfo);
                LoadOutputInfos();
            }
        }

        // Xóa OutputInfo
        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (selectedOutputInfo != null)
            {
                OutputDAO.Instance.Delete(selectedOutputInfo.OutputInfoId);
                LoadOutputInfos();
            }
        }
    }
}
