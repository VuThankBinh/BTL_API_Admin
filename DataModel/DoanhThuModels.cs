namespace API_Admin.ModelsThongKe
{
    public class DoanhThuModels
    {
        public string Month { get; set; }
        public string DoanhThu { get; set; }

        public DoanhThuModels(string month, string doanhThu)
        {
            Month = month;
            DoanhThu = doanhThu;
        }
    }
}
