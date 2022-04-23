using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using MySql.Data.MySqlClient;
using System.Data;



namespace napaAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CountryController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public CountryController(IConfiguration configuration)
        {
            _configuration = configuration;

        }
        [HttpGet]
        public JsonResult get()
        {
            string query = @"
                   Select country_id, country_name from napa.country";

            DataTable table = new DataTable();
            string sqlDataSource = _configuration.GetConnectionString("NapaAppCon");
            Console.WriteLine(sqlDataSource);
            MySqlDataReader mySqlDataReader;
            using(MySqlConnection myCon = new MySqlConnection(sqlDataSource))
            {
                try
                {
                    myCon.Open();
                    using (MySqlCommand myCommand = new MySqlCommand(query, myCon))
                    {
                        mySqlDataReader = myCommand.ExecuteReader();
                        table.Load(mySqlDataReader);

                        mySqlDataReader.Close();
                        myCon.Close();
                    }
                }
                catch (Exception ex)
                {
                    //MessageBox.show("There is a fucking exception");
                    Console.WriteLine("Exception!" + ex);
                }

            }
            //for microsoft sql database bleah
            //SqlDataReader sqlReader;
            /*using(SqlConnection myCon=new SqlConnection(sqlDataSource))
            {
                try { 
                myCon.Open();
                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    sqlReader = myCommand.ExecuteReader();
                    table.Load(sqlReader);

                    sqlReader.Close();
                    myCon.Close();
                }
                }
                catch(Exception ex)
                {
                    //MessageBox.show("There is a fucking exception");
                    Console.WriteLine("Exception!" + ex);
                }
            }
            //Console.WriteLine(new JsonResult(table));
            */
            return new JsonResult(table);
        }



        [HttpPost]
        public string Post(Models.Country country)
        {
            string query = @"
                   insert into napa.country values ('"+country.country_name+"');";

            //DataTable table = new DataTable();
            string sqlDataSource = _configuration.GetConnectionString("NapaAppCon");
            Console.WriteLine(sqlDataSource);
            MySqlDataReader mySqlDataReader;
            using (MySqlConnection myCon = new MySqlConnection(sqlDataSource))
            {
                try
                {
                    myCon.Open();
                    using (MySqlCommand myCommand = new MySqlCommand(query, myCon))
                    {
                        mySqlDataReader = myCommand.ExecuteReader();
                        //table.Load(mySqlDataReader);
                        Console.WriteLine("Succesufully added!!");
                        mySqlDataReader.Close();
                        myCon.Close();
                    }
                }
                catch (Exception ex)
                {
                    //MessageBox.show("There is a exception");
                    Console.WriteLine("Exception!" + ex);
                }
                return "Just added boi";
            }
        }
    }
}
