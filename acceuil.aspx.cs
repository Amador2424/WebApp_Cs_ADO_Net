using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace WebAppDoroLove
{
    public partial class acceuil : System.Web.UI.Page
    {
        static Int32 refM;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                refM = Convert.ToInt32(Session["userId"]);


                OleDbConnection mycon = new OleDbConnection();
                string dbPath = Server.MapPath("App_Data/DoroLove.accdb");

                mycon.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + dbPath;
                ;
                mycon.Open();
                string sql = "SELECT RefMembre, Nom FROM Membres WHERE RefMembre =" + refM;
                OleDbCommand mycmd = new OleDbCommand(sql, mycon);

                OleDbDataReader myrder = mycmd.ExecuteReader();

                if (myrder.Read())
                {
                    lblMssg.Text = "Bienvenue " + myrder["Nom"].ToString();

                }
                myrder.Close();
                //recuperation des messages recus par Memmbre courant
                sql = "SELECT RefMessage,Titre,Nouveau FROM MessagesD WHERE Receveur = " + refM;
                OleDbCommand mycmd2 = new OleDbCommand(sql, mycon);
                OleDbDataReader rdrMsg = mycmd2.ExecuteReader();
                Int16 nbMsg = 0;
                while (rdrMsg.Read() == true)
                {
                    nbMsg++;
                    Int32 refMsg = Convert.ToInt32(rdrMsg["RefMessage"].ToString());
                    //creation dynamique du tableau
                    TableRow uneLigne = new TableRow();
                    TableCell uneCell = new TableCell();
                    uneCell.Text = rdrMsg["Titre"].ToString();
                    uneLigne.Cells.Add(uneCell);
                    uneCell = new TableCell();
                    uneCell.Text = rdrMsg["Nom"].ToString();
                    uneLigne.Cells.Add(uneCell);
                    uneCell = new TableCell();
                    uneCell.Text = "<a href='lireMessage.aspx?refM=" + refMsg + "' >Lire</a>  <a href='EffacerMessage.aspx?refM=" + refMsg + "' >Effacer</a>";
                    uneLigne.Cells.Add(uneCell);
                    //verifier si le message est nouveau et changer la couleur de la ligne par consequence
                    if (rdrMsg["Nouveau"].ToString() == "True")
                    {
                        uneLigne.BackColor = System.Drawing.Color.Yellow;
                    }
                    tabMessages.Rows.Add(uneLigne);

                }
                rdrMsg.Close();
                lblMssg.Text += "<br />Vous avez " + nbMsg + " Messages";
                mycon.Close();

            }
        }

        protected void btnRediger_Click(object sender, EventArgs e)
        {
            Server.Transfer("EcrireMessage.aspx");

        }
    }
}