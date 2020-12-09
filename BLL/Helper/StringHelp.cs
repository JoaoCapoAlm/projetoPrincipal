using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Helper
{
    public class StringHelp
    {
        /// <summary>
        /// Faz a remoção dos acentos de uma string.
        /// </summary>
        /// <param name="text"></param>
        /// <returns>String sem acentos.</returns>
        public static string RemoveAccents(string text)
        {
            if (string.IsNullOrWhiteSpace(text))
                return string.Empty;

            string whitAccents = "ÄÅÁÂÀÃäáâàãÉÊËÈéêëèÍÎÏÌíîïìÖÓÔÒÕöóôòõÜÚÛÙüúûùÇçÑñ";
            string whitoutAcentos = "AAAAAAaaaaaEEEEeeeeIIIIiiiiOOOOOoooooUUUUuuuuCcNn";

            for (int i = 0; i < whitAccents.Length; i++)
            {
                text = text.Replace(whitAccents[i].ToString(), whitoutAcentos[i].ToString());
            }
            return text;
        }
    }
}
