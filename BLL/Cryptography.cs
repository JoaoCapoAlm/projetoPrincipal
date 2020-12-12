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
        /// <param name="original">Texto original a ser cifrado.</param>
        /// <param name="number">Número equivalente ao deslocamento das letras.</param>
        /// <returns>Retorna o texto cifrado.</returns>
        public static string CifraCesar(string original, int number = 0)
        {
            if (string.IsNullOrWhiteSpace(original))
                return string.Empty;

            if (number == 0)
                return original.Trim();

            original = Helper.StringHelp.RemoveAccents(original.Trim());
            
            var encrypt = string.Empty;
            string alphabet = "abcdefghijklmnoprqrstuvwxyz";
            string alphabet2 = alphabet.ToUpper();
            
            for (int i = 0; i < original.Length; i++)
            {
                bool isMaiusculo = false;
                
                int indexLetter = alphabet.IndexOf(original[i]);
                if (indexLetter == -1)
                {
                    indexLetter = alphabet2.IndexOf(original[i]);
                    isMaiusculo = true;
                }

                int index = number + indexLetter;

                if (index == -1)
                {
                    encrypt += original[i];
                    continue;
                }
                
                while (index > alphabet.Length)
                    index -= alphabet.Length;

                if (isMaiusculo)
                    encrypt += alphabet2[index];
                else
                    encrypt += alphabet[index];
            }

            return encrypt;
        }
    }
}
