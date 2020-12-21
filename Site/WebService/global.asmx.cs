using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace Site.WebService
{
    /// <summary>
    /// Summary description for global
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class global : System.Web.Services.WebService
    {
        /// <summary>
        /// Método que realiza a conversão das principais temperaturas
        /// (Celcius, Fahrenheit, Kelvin).
        /// </summary>
        /// <param name="temperature"></param>
        /// <param name="typeOriginal"></param>
        /// <param name="typeConvert"></param>
        /// <returns>Valor da temperatura convertida.</returns>
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public double ConvertTemperature(string temperature, string typeOriginal, string typeConvert)
        {
            var temp = double.Parse(temperature);
            double converted;

            if (typeOriginal == "C" && typeConvert == "F")
                converted = (temp * 9 / 5) + 32;
            else if (typeOriginal == "F" && typeConvert == "C")
                converted = (temp - 32) * 5 / 9;
            else if (typeOriginal == "C" && typeConvert == "K")
                converted = temp - 273.16;
            else if (typeOriginal == "K" && typeConvert == "C")
                converted = temp + 273.16;
            else if (typeOriginal == "F" && typeConvert == "K")
                converted = ((temp - 32) / 9 * 5) + 273;
            else
                converted = ((temp - 273) / 5 * 9) + 32;

            return converted;
        }
    }
}
