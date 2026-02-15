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
        public string Lat { get; set; }

        /// <summary>
        /// The longitude of the coordinates
        /// </summary>
        [JsonProperty("lon")]
        public string Lon { get; set; }
    }
}
