using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WCF_TEST.SinhVienService;

namespace WCF_TEST
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SinhVienClient sv = new SinhVienClient();
        

        private void Form1_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = sv.getData2("LoadSV");
            dataGridView3.DataSource = sv.getData2("Tim_mh");
            dataGridView4.DataSource = sv.getData2("LoadDiem");
            dataGridView5.DataSource = sv.getData2("LoadMH");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView2.DataSource = sv.getData("Tim_Que", textBox1.Text);
        }
    }
}
