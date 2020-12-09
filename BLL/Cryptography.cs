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
            /* Remover acentos */
            original = Helper.StringHelp.RemoveAccents(original);

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
