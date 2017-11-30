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
    public partial class DersSecimi : Form
    {
        public DersSecimi()
        {
            InitializeComponent();
        }

        SqlConnection baglan = new SqlConnection("Server=HP-BILGISAYAR\\SQLEXPRESS;Database=SqlProjeNotHesabı;User Id=sa;Password=12;");

        public void veri()
        {
            if (baglan.State == ConnectionState.Closed) baglan.Open();

            string sql = "Select* From Ders where DersAdı=@Ders AND AktsDegerı=@akts";
            SqlParameter parametre1 = new SqlParameter("Ders", listBox1.Text.Trim());//trim şifrede boşluk olmasını önler
            SqlParameter parametre2 = new SqlParameter("akts", listBox1.Text.Trim());
            SqlCommand komut = new SqlCommand(sql, baglan);
            komut.Parameters.Add(parametre1);
            komut.Parameters.Add(parametre2);

        }
        private void button1_Click(object sender, EventArgs e)
        {
        }


        private void DersSecimi_Load(object sender, EventArgs e)
        {
            
        }

        private void button2_Click(object sender, EventArgs e)
        {

            if ((checkBox1.Checked == true) && (!listBox1.Items.Contains(checkBox1.Text)))
                listBox1.Items.Add(checkBox1.Text);
            if(checkBox1.Checked==false)
                listBox1.Items.Remove(checkBox1.Text);

            if ((checkBox2.Checked == true)&& (!listBox1.Items.Contains(checkBox2.Text)))
                listBox1.Items.Add(checkBox2.Text);
            if (checkBox2.Checked == false) 
                listBox1.Items.Remove(checkBox2.Text);

            if ((checkBox3.Checked == true)&& (!listBox1.Items.Contains(checkBox3.Text)))
                listBox1.Items.Add(checkBox3.Text);
            if (checkBox3.Checked == false)
                listBox1.Items.Remove(checkBox3.Text);

            if ((checkBox4.Checked == true)&& (!listBox1.Items.Contains(checkBox4.Text)))
                listBox1.Items.Add(checkBox4.Text);
            if (checkBox4.Checked == false)
                listBox1.Items.Remove(checkBox4.Text);

            if ((checkBox5.Checked == true)&& (!listBox1.Items.Contains(checkBox5.Text)))
                listBox1.Items.Add(checkBox5.Text);
            if (checkBox5.Checked == false)
                listBox1.Items.Remove(checkBox5.Text);

            if ((checkBox6.Checked == true)&& (!listBox1.Items.Contains(checkBox6.Text)))
                listBox1.Items.Add(checkBox6.Text);
            if (checkBox6.Checked == false)
                listBox1.Items.Remove(checkBox6.Text);

            if ((checkBox49.Checked == true) && (!listBox1.Items.Contains(checkBox49.Text)))
                listBox1.Items.Add(checkBox49.Text);
            if (checkBox49.Checked == false)
                listBox1.Items.Remove(checkBox49.Text);
            
        }


        private void comboBox1_TextChanged(object sender, EventArgs e)
        {
            switch (comboBox1.Text)
            {

                case "1": groupBox1.Visible = true; break;
                case "2": groupBox2.Visible = true; break;
                case "3": groupBox3.Visible = true; break;
                case "4": groupBox4.Visible = true; break;
                case "5": groupBox5.Visible = true; break;
                case "6": groupBox6.Visible = true; break;
                case "7": groupBox7.Visible = true; break;
                case "8": groupBox8.Visible = true; break;

            }

        }

        private void button3_Click(object sender, EventArgs e)
        {

            if ((checkBox7.Checked == true)&& (!listBox1.Items.Contains(checkBox7.Text)))
                listBox1.Items.Add(checkBox7.Text);
            if (checkBox7.Checked == false)
                listBox1.Items.Remove(checkBox7.Text);

            if ((checkBox8.Checked == true)&& (!listBox1.Items.Contains(checkBox8.Text)))
                listBox1.Items.Add(checkBox8.Text);
            if (checkBox8.Checked == false)
                listBox1.Items.Remove(checkBox8.Text);

            if ((checkBox9.Checked == true)&& (!listBox1.Items.Contains(checkBox9.Text)))
                listBox1.Items.Add(checkBox9.Text);
            if (checkBox9.Checked == false)
                listBox1.Items.Remove(checkBox9.Text);

            if ((checkBox10.Checked == true)&& (!listBox1.Items.Contains(checkBox10.Text)))
                listBox1.Items.Add(checkBox10.Text);
            if (checkBox10.Checked == false)
                listBox1.Items.Remove(checkBox10.Text);

            if ((checkBox11.Checked == true)&& (!listBox1.Items.Contains(checkBox11.Text)))
                listBox1.Items.Add(checkBox11.Text);
            if (checkBox11.Checked == false)
                listBox1.Items.Remove(checkBox11.Text);

            if ((checkBox12.Checked == true) && (!listBox1.Items.Contains(checkBox12.Text)))
                listBox1.Items.Add(checkBox12.Text);
            if (checkBox12.Checked == false)
                listBox1.Items.Remove(checkBox12.Text);
            
        }

        private void button4_Click(object sender, EventArgs e)
        {

            if ((checkBox13.Checked == true)&& (!listBox1.Items.Contains(checkBox13.Text)))
                listBox1.Items.Add(checkBox13.Text);
            if (checkBox13.Checked == false)
                listBox1.Items.Remove(checkBox13.Text);

            if ((checkBox14.Checked == true)&& (!listBox1.Items.Contains(checkBox14.Text)))
                listBox1.Items.Add(checkBox14.Text);
            if (checkBox14.Checked == false)
                listBox1.Items.Remove(checkBox14.Text);

            if ((checkBox15.Checked == true)&& (!listBox1.Items.Contains(checkBox15.Text)))
                listBox1.Items.Add(checkBox15.Text);
            if (checkBox15.Checked == false)
                listBox1.Items.Remove(checkBox15.Text);

            if ((checkBox16.Checked == true)&& (!listBox1.Items.Contains(checkBox16.Text)))
                listBox1.Items.Add(checkBox16.Text);
            if (checkBox16.Checked == false)
                listBox1.Items.Remove(checkBox16.Text);

            if ((checkBox17.Checked == true)&& (!listBox1.Items.Contains(checkBox17.Text)))
                listBox1.Items.Add(checkBox17.Text);
            if (checkBox17.Checked == false)
                listBox1.Items.Remove(checkBox17.Text);

            if ((checkBox18.Checked == true)&& (!listBox1.Items.Contains(checkBox18.Text)))
                listBox1.Items.Add(checkBox18.Text);
            if (checkBox18.Checked == false)
                listBox1.Items.Remove(checkBox18.Text);

            if ((checkBox50.Checked == true) && (!listBox1.Items.Contains(checkBox50.Text)))
                listBox1.Items.Add(checkBox50.Text);
            if (checkBox50.Checked == false)
                listBox1.Items.Remove(checkBox50.Text);
          
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if ((checkBox19.Checked == true)&& (!listBox1.Items.Contains(checkBox19.Text)))
                listBox1.Items.Add(checkBox19.Text);
            if (checkBox19.Checked == false)
                listBox1.Items.Remove(checkBox19.Text);


            if ((checkBox20.Checked == true)&& (!listBox1.Items.Contains(checkBox20.Text)))
                listBox1.Items.Add(checkBox20.Text);
            if (checkBox20.Checked == false)
                listBox1.Items.Remove(checkBox20.Text);

            if ((checkBox21.Checked == true)&& (!listBox1.Items.Contains(checkBox21.Text)))
                listBox1.Items.Add(checkBox21.Text);
            if (checkBox21.Checked == false)
                listBox1.Items.Remove(checkBox21.Text);

            if ((checkBox22.Checked == true)&& (!listBox1.Items.Contains(checkBox22.Text)))
                listBox1.Items.Add(checkBox22.Text);
            if (checkBox22.Checked == false)
                listBox1.Items.Remove(checkBox22.Text);

            if ((checkBox23.Checked == true)&& (!listBox1.Items.Contains(checkBox23.Text)))
                listBox1.Items.Add(checkBox23.Text);
            if (checkBox23.Checked == false)
                listBox1.Items.Remove(checkBox23.Text);

            if ((checkBox24.Checked == true) && (!listBox1.Items.Contains(checkBox24.Text)))
                listBox1.Items.Add(checkBox24.Text);
            if (checkBox24.Checked == false)
                listBox1.Items.Remove(checkBox24.Text);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            if ((checkBox25.Checked == true)&& (!listBox1.Items.Contains(checkBox25.Text)))
                listBox1.Items.Add(checkBox25.Text);
            if (checkBox25.Checked == false)
                listBox1.Items.Remove(checkBox25.Text);

            if ((checkBox26.Checked == true)&& (!listBox1.Items.Contains(checkBox26.Text)))
                listBox1.Items.Add(checkBox26.Text);
            if (checkBox26.Checked == false)
                listBox1.Items.Remove(checkBox26.Text);

            if ((checkBox30.Checked == true)&& (!listBox1.Items.Contains(checkBox30.Text)))
                listBox1.Items.Add(checkBox30.Text);
            if (checkBox30.Checked == false)
                listBox1.Items.Remove(checkBox30.Text);

            if ((checkBox28.Checked == true) && (!listBox1.Items.Contains(checkBox28.Text)))
                listBox1.Items.Add(checkBox28.Text);
            if (checkBox28.Checked == false)
                listBox1.Items.Remove(checkBox28.Text);

            if ((checkBox29.Checked == true)&& (!listBox1.Items.Contains(checkBox29.Text)))
                listBox1.Items.Add(checkBox29.Text);
            if (checkBox29.Checked == false)
                listBox1.Items.Remove(checkBox29.Text);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            if ((checkBox31.Checked == true)&& (!listBox1.Items.Contains(checkBox31.Text)))
                listBox1.Items.Add(checkBox31.Text);
            if (checkBox31.Checked == false)
                listBox1.Items.Remove(checkBox31.Text);

            if ((checkBox32.Checked == true)&& (!listBox1.Items.Contains(checkBox32.Text)))
                listBox1.Items.Add(checkBox32.Text);
            if (checkBox32.Checked == false)
                listBox1.Items.Remove(checkBox32.Text);

            if ((checkBox36.Checked == true)&& (!listBox1.Items.Contains(checkBox36.Text)))
                listBox1.Items.Add(checkBox36.Text);
            if (checkBox36.Checked == false)
                listBox1.Items.Remove(checkBox36.Text);
            
            if ((checkBox34.Checked == true)&& (!listBox1.Items.Contains(checkBox34.Text)))
                listBox1.Items.Add(checkBox34.Text);
            if (checkBox34.Checked == false)
                listBox1.Items.Remove(checkBox34.Text);
            
            if ((checkBox35.Checked == true) && (!listBox1.Items.Contains(checkBox35.Text)))
                listBox1.Items.Add(checkBox35.Text);
            if (checkBox35.Checked == false)
                listBox1.Items.Remove(checkBox35.Text);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            if ((checkBox38.Checked == true) && (!listBox1.Items.Contains(checkBox38.Text)))
                listBox1.Items.Add(checkBox38.Text);
            if (checkBox38.Checked == false)
                listBox1.Items.Remove(checkBox38.Text);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if ((checkBox44.Checked == true) && (!listBox1.Items.Contains(checkBox44.Text)))
                listBox1.Items.Add(checkBox44.Text);
            if (checkBox44.Checked == false)
                listBox1.Items.Remove(checkBox44.Text);
        }

        public void button10_Click(object sender, EventArgs e)
        {
            FrmNotHesabı hsp = new FrmNotHesabı();
            hsp.Show();

            string[] veriler1 = new string[listBox1.Items.Count];
            for (int i = 0; i < listBox1.Items.Count; i++)
            {
                veriler1[i] = listBox1.Items[i].ToString();
                hsp.comboBox4.Items.Add(listBox1.Items[i].ToString());
                this.Close();
                
            }
        }
        

      

       private void radioButton1_CheckedChanged(object sender, EventArgs e)
       {
           comboBox1.Enabled = true;
           for (int i = 1; i < 8; i+=2)
           {
               comboBox1.Items.Add(i);
           }
           groupBox9.Enabled = false;
       
           if(radioButton1.Checked==true){
               groupBox10.Visible = true;
               groupBox11.Hide();
        
    }
    }
       private void radioButton2_CheckedChanged(object sender, EventArgs e)
       {
           comboBox1.Enabled = true;
           for (int i = 2; i < 9; i+=2)
           {
               comboBox1.Items.Add(i);
           }
          
           groupBox9.Enabled = false;

           if (radioButton2.Checked == true) {
               groupBox11.Visible = true;
               groupBox11.Location = new Point(214, 4);
               groupBox10.Hide();
           }

       }

       private void groupBox1_Enter(object sender, EventArgs e)
       {

       }

       

       

        

        
    }
}