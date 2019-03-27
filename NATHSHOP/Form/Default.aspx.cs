using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace NATHSHOP.Form
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conn_str = ConfigurationManager.ConnectionStrings["SPORTDATAConnectionString"].ConnectionString;
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM SanPham where ThongTin ='Hàng AU'", conn_str);
                DataSet ds = new DataSet();
                da.Fill(ds, "SanPham");

                dtlSanPham3.DataSource = ds.Tables["SanPham"];
                dtlSanPham3.DataBind();
            }
        }
        


        protected void dtlSanPham3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

     
    }
}