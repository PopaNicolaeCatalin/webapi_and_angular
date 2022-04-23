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
    public class Point5Controller : ControllerBase
    {
        private readonly IConfiguration _configuration;

        public Point5Controller(IConfiguration configuration)
        {
            _configuration = configuration;

        }

        [HttpGet]
        public JsonResult get()
        {
            string query = @"
                   select country_name,count(port_country_id) 'no_ports'
                    from country 
                    left join port 
                    on country.country_id=port.port_country_id 
                    group by port_country_id;";

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
                    
                    Console.WriteLine("Exception!" + ex);
                }

            }
            
            return new JsonResult(table);
        }
    }
}
