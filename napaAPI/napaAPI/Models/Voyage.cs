using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace napaAPI.Models
{
    public class Voyage
    {
        public int voyage_ship_id { get; set; }
        public int voyage_departure_port { get; set; }

        public int voyage_arrival_port { get; set; }

        public String voyage_start { get; set; }

        public String voyage_end { get; set; }
    }
}
