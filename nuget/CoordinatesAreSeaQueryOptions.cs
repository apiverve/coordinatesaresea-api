using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CoordinatesAreSea
{
    /// <summary>
    /// Query options for the Coordinates Are Sea API
    /// </summary>
    public class CoordinatesAreSeaQueryOptions
    {
        /// <summary>
        /// The latitude of the coordinates
        /// </summary>
        [JsonProperty("lat")]
        public double Lat { get; set; }

        /// <summary>
        /// The longitude of the coordinates
        /// </summary>
        [JsonProperty("lon")]
        public double Lon { get; set; }
    }
}
