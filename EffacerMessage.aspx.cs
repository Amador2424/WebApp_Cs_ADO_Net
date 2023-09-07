using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace WebAppDoroLove
{
    public partial class EffacerMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 refMsg = Convert.ToInt32(Request.QueryString["refM"].ToString());
            OleDbConnection mycon = new OleDbConnection();
            string dbPath = Server.MapPath("App_Data/DoroLove.accdb");

            mycon.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + dbPath;
            ;
            mycon.Open();
            string sql = "DELETE FROM Messages WHERE Messages.RefMessage =" + refMsg;
            OleDbCommand mycmd = new OleDbCommand(sql, mycon);
            mycmd.ExecuteNonQuery();
            mycon.Close();
            Server.Transfer("acceuil.aspx");
        }
    }
}