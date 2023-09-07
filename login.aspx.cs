using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebAppDoroLove
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String username = txtUsernameLogin.Text.Trim();
            String mdp = txtPasswordLogin.Text.Trim();

            OleDbConnection mycon = new OleDbConnection();
            string dbPath = Server.MapPath("App_Data/DoroLove.accdb");

            mycon.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + dbPath;
            ;
            mycon.Open();

            string sql = "SELECT RefMembre FROM Membres";
            sql += " WHERE Username = '" + username + "'AND Mot2pass = '" + mdp + "'";
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            OleDbDataReader myrder = mycmd.ExecuteReader();

            if (myrder.Read())
            {
                

                Session["userId"] = myrder["RefMembre"];
                mycon.Close();

                Server.Transfer("acceuil.aspx");

            }
            else
            {
                mycon.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Username ou mot de passe invalide! Essayez de nouveau');", true);


            }
        }
    }
}