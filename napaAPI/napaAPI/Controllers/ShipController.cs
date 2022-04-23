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


    public class ShipController : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public ShipController(IConfiguration configuration)
        {
            _configuration = configuration;

        }

        [HttpGet]
        public JsonResult get()
        {
            string query = @"
                   Select ship_id, ship_name,ship_speed_max from napa.ship";

            DataTable table = new DataTable();
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
            return new JsonResult(table);
        }
    }
}
