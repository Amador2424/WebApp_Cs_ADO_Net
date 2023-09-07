using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebAppDoroLove
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitAll_Click(object sender, EventArgs e)
        {
            String fisrt_name = txtFirstName.Text.Trim();
            String last_name = txtLastName.Text.Trim();
            String username = txtUsername.Text.Trim();
            String email = txtEmail.Text.Trim();
            String age = Convert.ToInt32(txtAge.Text.Trim()).ToString();
            String mdp = txtPassword.Text;
            string orientation = "";
            orientation = ddOrientation.SelectedValue.ToString();
            string loisir = "";
            loisir = ddLoisir.SelectedValue.ToString();
            OleDbConnection mycon = new OleDbConnection();
            string dbPath = Server.MapPath("App_Data/DoroLove.accdb");

            mycon.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + dbPath;
            
            mycon.Open();

            string sql2 = "SELECT Email,RefMembre FROM Membres";
            sql2 += " WHERE Email = '" + email + "'AND Username = '" + username + "'";
            OleDbCommand mycmd = new OleDbCommand(sql2, mycon);
            OleDbDataReader myrder = mycmd.ExecuteReader();

            if (myrder.Read())  //déja membre
            {
                myrder.Close();
                mycon.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Cet Email ou username est déja utilisé');", true);

            }
            else                //Pas membre : Insertion à la BD
            {
                myrder.Close();
                string sql;
                sql = "INSERT INTO Membres(Prenom, Nom, Username, Age, Email, Mot2pass, Loisir, OrientationSexuelle)";
                sql += "VALUES('" + fisrt_name + "' ,'" + last_name + "' ,'" + username + "' ,'" + age + "' , '" + email + "', '" + mdp + "', '" + loisir + "', '" + orientation + "');";
                OleDbCommand mycmd2 = new OleDbCommand(sql, mycon);
                mycmd2.ExecuteNonQuery();

                mycon.Close();
                Server.Transfer("login.aspx");

            }
        }
    }
}