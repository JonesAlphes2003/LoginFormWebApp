﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace LoginFormWebApp
{
	public partial class login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			SqlConnection con = new SqlConnection("Data Source=DESKTOP-DV76FK7\\SQLEXPRESS;Initial Catalog=asplogin;Integrated Security=True");
			con.Open();
			string loginQuery = "SELECT COUNT (*) FROM login WHERE username=@username AND password=@password";
			SqlCommand cmd = new SqlCommand(loginQuery, con);
			cmd.Parameters.AddWithValue("@username", TextBox1.Text);
			cmd.Parameters.AddWithValue("@password", TextBox2.Text);
			int count = (int)cmd.ExecuteScalar();
			con.Close();
			if (count > 0)
			{
				Response.Write("<script>alert('login success');</script>");
			}
			else
			{
                Response.Write("<script>alert('login error');</script>");
            }
        }
    }
}