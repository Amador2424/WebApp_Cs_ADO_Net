using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebAppDoroLove
{
    public partial class EcrireMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                OleDbConnection mycon = new OleDbConnection();
                string dbPath = Server.MapPath("App_Data/DoroLove.accdb");

                mycon.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + dbPath;
                ;
                mycon.Open();

                string sql = "SELECT RefMembre,Nom,Numero FROM Membres ";
                OleDbCommand mycmd = new OleDbCommand(sql, mycon);
                OleDbDataReader myrder = mycmd.ExecuteReader();
                while (myrder.Read())
                {
                    string tmp = myrder["Nom"].ToString() + " (" +
                        myrder["Numero"].ToString() + " )";
                    ListItem el = new ListItem();
                    el.Text = tmp;
                    el.Value = myrder["RefMembre"].ToString();
                    cboDestinataires.Items.Add(el);
                }
                myrder.Close();
                mycon.Close();

            }
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            Int32 refEnv = Convert.ToInt32(Session["userId"]);
            Int32 refDest = Convert.ToInt32(cboDestinataires.SelectedItem.Value);
            string tit = txtTitre.Text.Trim();
            string mess = txtMessage.Text.Trim();
            if (tit.Length == 0)
            {
                lblErreur.Text = "Veuillez mettre un Titre à votre messsage";
                txtTitre.Focus();
            }
            else
            {
                OleDbConnection mycon = new OleDbConnection();
                string dbPath = Server.MapPath("App_Data/DoroLove.accdb");

                mycon.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + dbPath;
                ;
                mycon.Open();

                string sql = "INSERT INTO Messages(Titre,Message,Envoyeur,Receveur,Nouveau) " +
                 "VALUES('" + tit + "','" + mess + "'," + refEnv + "," + refDest + ",'True')";



                OleDbCommand mycmd = new OleDbCommand(sql, mycon);

                mycmd.ExecuteNonQuery();
                mycon.Close();
                Server.Transfer("acceuil.aspx");
            }


        }

        protected void btnEffacer_Click(object sender, EventArgs e)
        {
            lblErreur.Text = txtMessage.Text = txtTitre.Text = "";
            txtTitre.Focus();
        }
    }
}