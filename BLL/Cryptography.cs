using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Cryptography
    {
        /// <summary>
        /// Faz a troca de cada letra da mensagem original pela letra que se situa
        /// X posições à sua frente.
        /// </summary>
        /// <param name="original"></param>
        /// <param name="number"></param>
        /// <returns>Retorna o texto cifrado.</returns>
        public static string CifraCesar(string original, int number)
        {
            original = original.ToLower().Replace("ç", "c");
            original = original.Replace("á", "a").Replace("à", "a").Replace("â", "a").Replace("ã", "a");
            original = original.Replace("é", "e").Replace("è", "e").Replace("ê", "e");
            original = original.Replace("í", "i").Replace("ì", "i").Replace("î", "i");
            original = original.Replace("ó", "o").Replace("ò", "o").Replace("ô", "o").Replace("õ", "o");
            original = original.Replace("ú", "u").Replace("ù", "u").Replace("û", "u");
            string encrypt = string.Empty;

            for (int i = 0; i < original.Length; i++)
            {
                int letter = Convert.ToInt32(original[i]) + number;

                if (letter > 122)
                    letter -= 26;
                else if (letter < 97)
                    letter += 26;

                encrypt += Convert.ToChar(letter);
            }

            return encrypt;
        }
    }
}
