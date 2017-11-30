using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Globalization;
using System.Threading;//virgül hatasını gidermek için
namespace SqlProjeNotHesabı
{
    public partial class FrmNotHesabı : Form
    {
        public FrmNotHesabı()
        {
            InitializeComponent();
        }

        SqlConnection baglan = new SqlConnection("Server=HP-BILGISAYAR\\SQLEXPRESS;Database=SqlProjeNotHesabı;User Id=sa;Password=12;");
        double vize, vizecombobox;
        double fınal, finalcombobox;
        double odev, odevcombobox;
        double ort;


        private void VeriGoster()
        {
            listView1.Items.Clear();

            if (baglan.State == ConnectionState.Closed)
                baglan.Open();
            SqlCommand komut = new SqlCommand("Select * from Notlar", baglan);
            komut.Connection = baglan;
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                ListViewItem ekle = new ListViewItem();
                ekle.Text = oku["id"].ToString();
                ekle.SubItems.Add(oku["OgrenciNumarası"].ToString());
                ekle.SubItems.Add(oku["AdSoyad"].ToString());
                ekle.SubItems.Add(oku["DersAdı"].ToString());
                ekle.SubItems.Add(oku["Vize"].ToString());
                ekle.SubItems.Add(oku["VizeYuzdesi"].ToString());
                ekle.SubItems.Add(oku["Final"].ToString());
                ekle.SubItems.Add(oku["FinalYuzdesi"].ToString());
                ekle.SubItems.Add(oku["Odev"].ToString());
                ekle.SubItems.Add(oku["OdevYuzdesi"].ToString());
                ekle.SubItems.Add(oku["Ortalama"].ToString());
                ekle.SubItems.Add(oku["HarfNotu"].ToString());
                ekle.SubItems.Add(oku["Sonuc"].ToString());
                listView1.Items.Add(ekle);
            }

            komut.Dispose();
            oku.Close();
            oku.Dispose();
            baglan.Close();
        }

        public void OrtalamaHesabı()
        {

            ort = double.Parse(textBox6.Text);
            if (ort >= 90 && ort <= 100)
                textBox7.Text = ("AA");
            if (ort >= 85 && ort < 90)
                textBox7.Text = ("BA");
            if (ort >= 80 && ort < 85)
                textBox7.Text = ("BB");
            if (ort >= 70 && ort < 80)
                textBox7.Text = ("CB");
            if (ort >= 60 && ort < 70)
                textBox7.Text = ("CC");
            if (ort >= 55 && ort < 60)
                textBox7.Text = ("DC");
            if (ort >= 50 && ort < 55)
                textBox7.Text = ("DD");
            if (ort >= 40 && ort < 50)
                textBox7.Text = ("FD");
            if (ort >= 0 && ort < 40)
                textBox7.Text = ("FF");
        }

        public void SonucHesabı()
        {

            if (ort >= 50 && ort <= 100)
                textBox8.Text = "GEÇTİ";
            else
                textBox8.Text = "KALDI";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (baglan.State == ConnectionState.Closed) baglan.Open();
            try
            {
                if (textBox1.Text != "" | textBox2.Text != "" | textBox3.Text != "" | textBox4.Text != "" | textBox5.Text != "" | comboBox1.Text != "" | comboBox2.Text != "" | comboBox3.Text != "" | label11.Text != "" | label12.Text != "" | label13.Text != "")

                    textBox6.Text = (double.Parse(label11.Text) + double.Parse(label12.Text) + double.Parse(label13.Text)).ToString();
                OrtalamaHesabı();
                SonucHesabı();
                string sql = "Insert Into Notlar(OgrenciNumarası,AdSoyad,DersAdı,Vize,VizeYuzdesi,Final,FinalYuzdesi,Odev,OdevYuzdesi,Ortalama,HarfNotu,Sonuc) Values  (" + textBox1.Text.ToString() + ",'" + textBox2.Text.ToString() + "','" + label23.Text.ToString() + "'," + textBox3.Text.ToString() + "," + comboBox1.Text.ToString() + "," + textBox4.Text.ToString() + "," + comboBox2.Text.ToString() + "," + textBox5.Text.ToString() + "," + comboBox3.Text.ToString() + "," + Convert.ToDecimal(textBox6.Text.ToString() == "" ? "0" : textBox6.Text.ToString()) + ",'" + textBox7.Text.ToString() + "','" + textBox8.Text.ToString() + "')";
                SqlCommand komut = new SqlCommand(sql, baglan);
                komut.ExecuteNonQuery();//veri gösterme
                baglan.Close();
            }
            catch (Exception)
            {
                MessageBox.Show("Alanları boş bırakmayın!!!!");
            }
            listView1.Items.Clear();
        }


        private void FrmNotHesabı_Load(object sender, EventArgs e)
        {
            label23.Text = comboBox4.Text.ToString();
            

            //virgül yerinee nokta
            Thread.CurrentThread.CurrentCulture = new CultureInfo("tr-TR");
            Thread.CurrentThread.CurrentUICulture = new CultureInfo("tr-TR");
            System.Threading.Thread.CurrentThread.CurrentCulture.NumberFormat.NumberDecimalSeparator = ".";
            label21.Text = "";
            label22.Text = "";
            label11.Text = "";
            label12.Text = "";
            label13.Text = "";

            for (int i = 0; i <= 100; i = i + 5)
            {
                comboBox1.Items.Add(i);
                comboBox2.Items.Add(i);
                comboBox3.Items.Add(i);



            }


        }



        private void textBox3_TextChanged(object sender, EventArgs e)
        {//vize not hesabı
            if (textBox3.Text != "" && comboBox1.Text != "")
            {
                if (vize < 100 || vize > 0)
                {

                    vize = double.Parse(textBox3.Text);
                    vizecombobox = double.Parse(comboBox1.Text);
                    double a = vize * vizecombobox;
                    double vizenot = a / 100;
                    label11.Text = vizenot.ToString();
                }


            }
            else
            {
                label11.Text = "";
            }
        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {//final not hesabı
            if (textBox4.Text != "" && comboBox2.Text != "")
            {
                if (fınal < 100 || fınal > 0)
                {
                    fınal = double.Parse(textBox4.Text);
                    finalcombobox = double.Parse(comboBox2.Text);
                    double b = fınal * finalcombobox;
                    double finalnot = b / 100;
                    label12.Text = finalnot.ToString();

                }
                else
                    MessageBox.Show("Hata");
            }
            else
            {
                label12.Text = "";
            }
        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {//ödev not hesabı
            if (textBox5.Text != "" && comboBox3.Text != "")
            {
                if (odev < 100 || odev > 0)
                {
                    odev = double.Parse(textBox5.Text);
                    odevcombobox = double.Parse(comboBox3.Text);
                    double c = odev * odevcombobox;
                    double odevnot = c / 100;
                    label13.Text = odevnot.ToString();

                }
                else

                    MessageBox.Show("Hata");
            }
            else
            {
                label13.Text = "";
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {

            label15.Visible = false;
            label14.Visible = false;
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
            textBox6.Clear();
            textBox7.Clear();
            textBox8.Clear();
            comboBox1.Text = "";
            comboBox2.Text = "";
            comboBox3.Text = "";
            listView1.Items.Clear();
        }


        private void button2_Click_1(object sender, EventArgs e)
        {

            VeriGoster();
            baglan.Close();
        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            label15.Visible = true;
            label14.Visible = true;
            listView1.Items.Clear();
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
            textBox6.Clear();
            textBox7.Clear();
            textBox8.Clear();
            comboBox1.Text = "";
            comboBox2.Text = "";
            comboBox3.Text = "";
            VeriGoster();
        }



        //focus tıklanılan  yerde imlecin kalmasını sağlar


        private void textBox3_Leave(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(textBox3.Text) < 0 || Convert.ToInt32(textBox3.Text) > 100)
                {
                    MessageBox.Show("Değer 0-100 arasında olmalı");
                    textBox3.Text = "";
                    textBox3.Focus();
                }
            }
            catch
            {
                if (textBox3.Text != "")
                    MessageBox.Show("Sayısal değer gir");
                textBox3.Text = "";



            }
        }

        private void textBox4_Leave(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(textBox4.Text) < 0 || Convert.ToInt32(textBox4.Text) > 100)
                {
                    MessageBox.Show("Değer 0-100 arasında olmalı");
                    textBox4.Text = "";
                    textBox4.Focus();
                }
            }
            catch
            {
                if (textBox4.Text != "")
                    MessageBox.Show("Sayısal değer gir");
                textBox4.Text = "";

            }
        }

        private void textBox5_Leave(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(textBox5.Text) < 0 || Convert.ToInt32(textBox5.Text) > 100)
                {
                    MessageBox.Show("Değer 0-100 arasında olmalı");
                    textBox5.Text = "";

                }
            }
            catch
            {
                if (textBox5.Text != "")
                    MessageBox.Show("Sayısal değer gir");
                textBox5.Text = "";


            }
        }

        private void comboBox1_Leave(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(comboBox1.Text) < 0 || Convert.ToInt32(comboBox1.Text) > 100)
                {
                    MessageBox.Show("Değer 0-100 arasında olmalı");
                    comboBox1.Text = "";

                }
            }
            catch
            {
                if (comboBox1.Text != "")
                    MessageBox.Show("Sayısal değer gir");
                comboBox1.Text = "";

            }
        }

        private void comboBox2_Leave(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToInt32(comboBox2.Text) < 0 || Convert.ToInt32(comboBox2.Text) > 100)
                {
                    MessageBox.Show("Değer 0-100 arasında olmalı");
                    comboBox2.Text = "";
                    comboBox2.Focus();

                }
            }
            catch
            {
                if (comboBox2.Text != "")
                    MessageBox.Show("Sayısal değer gir");
                comboBox2.Text = "";

            }
        }

        private void comboBox3_Leave(object sender, EventArgs e)
        {


            try
            {
                if (Convert.ToInt32(comboBox3.Text) < 0 || Convert.ToInt32(comboBox3.Text) > 100)
                {
                    MessageBox.Show("Değer 0-100 arasında olmalı");
                    comboBox3.Text = "";
                    comboBox3.Focus();

                }
            }
            catch
            {
                if (comboBox3.Text != "")
                    MessageBox.Show("Sayısal değer gir");
                comboBox3.Text = "";


            }
        }

        private void groupBox3_Leave(object sender, EventArgs e)
        {


            if (int.Parse(comboBox1.Text) + int.Parse(comboBox2.Text) + int.Parse(comboBox3.Text) != 100)
            {
                MessageBox.Show("Yüzdelik dilim hatası");
                comboBox1.Text = "";
                comboBox2.Text = "";
                comboBox3.Text = "";
            }
        }

        int id = 0;
        private void button6_Click(object sender, EventArgs e)
        {

            label15.Visible = true;
            label14.Visible = true;
            baglan.Open();
            SqlCommand komut = new SqlCommand("Delete From Notlar where id=(" + id + ")", baglan);
            komut.ExecuteNonQuery();
            baglan.Close();


        }


        private void listView1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            id = int.Parse(listView1.SelectedItems[0].SubItems[0].Text);
            label15.Text = listView1.SelectedItems[0].SubItems[0].Text;
            //değerler sırasyla texboxa tekrardan yazdırılıyor.
            textBox1.Text = listView1.SelectedItems[0].SubItems[1].Text;
            textBox2.Text = listView1.SelectedItems[0].SubItems[2].Text;
            textBox3.Text = listView1.SelectedItems[0].SubItems[3].Text;
            comboBox1.Text = listView1.SelectedItems[0].SubItems[4].Text;
            textBox4.Text = listView1.SelectedItems[0].SubItems[5].Text;
            comboBox2.Text = listView1.SelectedItems[0].SubItems[6].Text;
            textBox5.Text = listView1.SelectedItems[0].SubItems[7].Text;
            comboBox3.Text = listView1.SelectedItems[0].SubItems[8].Text;
        }


        private void button8_Click(object sender, EventArgs e)
        {
            this.Close();
        }



        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            e.Handled = !char.IsLetter(e.KeyChar) && !char.IsControl(e.KeyChar)
                    && !char.IsSeparator(e.KeyChar);
        }



        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            // Rakam alanında "," serbest bırakılmıştır.
            e.Handled = !char.IsDigit(e.KeyChar) && !char.IsControl(e.KeyChar);

        }



        private void button7_Click(object sender, EventArgs e)
        {

            label15.Visible = true;
            label14.Visible = true;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            label15.Visible = true;
            label14.Visible = true;

            baglan.Open();
            SqlCommand komut = new SqlCommand("Update Notlar set OgrenciNumarası=" + textBox1.Text.ToString() + " , AdSoyad='" + textBox2.Text.ToString() + "' , Vize= " + textBox3.Text.ToString() + " , VizeYuzdesi=" + comboBox1.Text.ToString() + ", Final=" + textBox4.Text.ToString() + ",FinalYuzdesi=" + comboBox2.Text.ToString() + ",Odev=" + textBox5.Text.ToString() + ",OdevYuzdesi=" + comboBox3.Text.ToString() + " where id=" + id + "", baglan);
            komut.ExecuteNonQuery();
            baglan.Close();
            VeriGoster();
        }
        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dersAKTS = 0; double dersDonem = 0;
            string sql = "Select * from Ders where DersAdi='" + comboBox4.SelectedItem.ToString() + "'";
            baglan.Open();
            SqlCommand komut = new SqlCommand(sql, baglan);
            komut.ExecuteNonQuery();//veri gösterme
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                dersAKTS = Convert.ToInt32(dr["AktsDegeri"]);
                dersDonem = Convert.ToDouble(dr["Donemi"]);


            }


            label21.Text = dersDonem.ToString();
            label22.Text = dersAKTS.ToString();




            baglan.Close();
        }




        private void comboBox4_TextChanged(object sender, EventArgs e)
        {
            label23.Text = comboBox4.Text;

        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }
 int dersAKTS = 0; double dersDonem = 0;
        public void comboBox4_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            {
               
                string sql = "Select * from Ders where DersAdi='" + comboBox4.SelectedItem.ToString() + "'";
                baglan.Open();
                SqlCommand komut = new SqlCommand(sql, baglan);
                komut.ExecuteNonQuery();//veri gösterme
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    dersAKTS = Convert.ToInt32(dr["AktsDegeri"]);
                    dersDonem = Convert.ToDouble(dr["Donemi"]);


                }


                label21.Text = dersDonem.ToString();
                label22.Text = dersAKTS.ToString();




                baglan.Close();
            }
        }
        int sayac = 0; int akts = 0;
        
string dersharfnotu;  double dersdeger = 0;
        private void button7_Click_1(object sender, EventArgs e)
        {
            akts = int.Parse(label22.Text);
            string sql = "Select * From HarfNotu where Harf='" + textBox7.Text + "'";
            baglan.Open();
            SqlCommand komut = new SqlCommand(sql, baglan);
            komut.ExecuteNonQuery();
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                dersharfnotu = Convert.ToString(dr["Harf"]);
                dersdeger = Convert.ToDouble(dr["Deger"]);
            }
            

            sayac += akts;
            label25.Text = sayac.ToString();
           
            baglan.Close();

            ListViewItem ek = new ListViewItem();
            ek.Text = label23.Text;
            ek.SubItems.Add(label22.Text);
            ek.SubItems.Add(textBox7.Text);
            ek.SubItems.Add(dersdeger.ToString());
            listView2.Items.Add(ek);

            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            comboBox1.Text = "";
            comboBox2.Text = "";
            comboBox3.Text = "";
            textBox6.Text = "";
            textBox7.Text = "";
            textBox8.Text = "";
            adegeri = double.Parse(dersdeger.ToString()) * double.Parse(dersAKTS.ToString());
            sayacım = sayacım + adegeri;
        }

        double adegeri = 0; double sayacım = 0;
        private void button9_Click(object sender, EventArgs e)
        {
            
            label19.Text = (sayacım / sayac).ToString();
        
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}


    
