using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace SimpleCRUDService
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds;

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public DataSet GetAllUsers()
        {
            da = new SqlDataAdapter("select * from userinfo", con);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        [WebMethod]
        public DataTable GetAllUsersDataTable()
        {
            da = new SqlDataAdapter("select * from userinfo", con);
            dt = new DataTable("userinfo");
            da.Fill(dt);
            return dt;
        }

        [WebMethod]
        public string InsertNewUser(string FirstName, string LastName)
        {
            cmd = new SqlCommand("insert into userinfo values(@Fname,@Lname)", con);
            cmd.Parameters.AddWithValue("@Fname", FirstName);
            cmd.Parameters.AddWithValue("@Lname", LastName);
            string Status = "";
            con.Open();
            Status = cmd.ExecuteNonQuery().ToString();
            con.Close();

            if (Status == "")
            {
                Status = "Insert Failed";
            }
            else
            {
                Status = "Record Inserted";
            }
            return Status;
        }

        [WebMethod]
        public string UpdateUser(int UserID, string FirstName, string LastName)
        {
            cmd = new SqlCommand("update userinfo set fname=@Fname,lname=@Lname where userid=@UID", con);
            cmd.Parameters.AddWithValue("@UID", UserID);
            cmd.Parameters.AddWithValue("@Fname", FirstName);
            cmd.Parameters.AddWithValue("@Lname", LastName);
            string Status = "";
            con.Open();
            Status = cmd.ExecuteNonQuery().ToString();
            con.Close();

            if (Status == "")
            {
                Status = "Update Failed";
            }
            else
            {
                Status = "Record Updated";
            }
            return Status;
        }

        [WebMethod]
        public string DeleteUser(int UserID)
        {
            cmd = new SqlCommand("delete from userinfo where userid=@UID", con);
            cmd.Parameters.AddWithValue("@UID", UserID);
            string Status = "";
            con.Open();
            Status = cmd.ExecuteNonQuery().ToString();
            con.Close();

            if (Status == "")
            {
                Status = "Delete Failed";
            }
            else
            {
                Status = "Record Deleted";
            }
            return Status;
        }
    }
}

