using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebAppDoroLove
{
    public partial class lireMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 refMsg = Convert.ToInt32(Request.QueryString["refM"].ToString());
            OleDbConnection mycon = new OleDbConnection();
            string dbPath = Server.MapPath("App_Data/DoroLove.accdb");

            mycon.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + dbPath;
            ;
            mycon.Open();
            string sql = "SELECT MessagesD.*, Membres.Nom FROM MessagesD, Membres ";
            sql += "WHERE Membres.RefMembre = MessagesD.Envoyeur AND MessagesD.RefMessage =" + refMsg; OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myrder = mycmd.ExecuteReader();
            if (myrder.Read())
            {
                string info = "Titre : " + myrder["Titre"].ToString() + "<br/> Date : " + myrder["Date"].ToString() + "<br/> De : " + myrder["Envoyeur"].ToString() + "<br/> Message : " + myrder["Message"].ToString();
                lblMessage.Text = info;
                myrder.Close();
                mycon.Close();
            };
        }
    }
}