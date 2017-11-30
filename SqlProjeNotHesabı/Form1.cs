using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SqlProjeNotHesabı
{
    public partial class FrmKullanıcıGirisi : Form
    {
        public FrmKullanıcıGirisi()
        {
            InitializeComponent();
        }

        SqlConnection baglan = new SqlConnection("Server=HP-BILGISAYAR\\SQLEXPRESS;Database=SqlProjeNotHesabı;User Id=sa;Password=12;");

        private void button1_Click(object sender, EventArgs e)
        {
            
            
                if (baglan.State==ConnectionState.Closed) baglan.Open();

                string sql = "Select* From KullanıcıGirisi where Ad=@Adi AND Sifre=@Sifresi";
                SqlParameter parametre1 = new SqlParameter("Adi", textBox1.Text.Trim());//trim şifrede boşluk olmasını önler
                SqlParameter parametre2 = new SqlParameter("Sifresi", textBox2.Text.Trim());
                SqlCommand komut = new SqlCommand(sql, baglan);
                komut.Parameters.Add(parametre1);
                komut.Parameters.Add(parametre2);

                DataTable dt = new DataTable();//sanal tablo 
                SqlDataAdapter da = new SqlDataAdapter(komut);
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                  DersSecimi form = new DersSecimi ();
                    form.Show();
                    this.Hide();
                    
                    
                }
                else
                    MessageBox.Show("Hatalı Giriş");
           
            }

    
    }
}