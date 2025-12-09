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
        /// Example: 37.7749
        /// </summary>
        [JsonProperty("lat")]
        public string Lat { get; set; }

        /// <summary>
        /// The longitude of the coordinates
        /// Example: -122.4194
        /// </summary>
        [JsonProperty("lon")]
        public string Lon { get; set; }
    }
}
