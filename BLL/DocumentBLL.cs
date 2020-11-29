using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class DocumentBLL
    {
		public static class ValidDocument { 
			public static bool IsCnpj(string cnpj)
			{
				int[] multiplicador1 = new int[12] { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
				int[] multiplicador2 = new int[13] { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
				int soma = 0;
				cnpj = cnpj.Trim();
				cnpj = cnpj.Replace(".", "").Replace("-", "").Replace("/", "");
			
				if (cnpj.Length != 14)
					return false;
			
				string tempCnpj = cnpj.Substring(0, 12);
			
				for (int i = 0; i < 12; i++)
					soma += int.Parse(tempCnpj[i].ToString()) * multiplicador1[i];
			
				int resto = (soma % 11);
			
				if (resto < 2)
					resto = 0;
				else
					resto = 11 - resto;
			
				string digito = resto.ToString();
				tempCnpj += digito;
				soma = 0;
			
				for (int i = 0; i < 13; i++)
					soma += int.Parse(tempCnpj[i].ToString()) * multiplicador2[i];

				resto = (soma % 11);
				if (resto < 2)
					resto = 0;
				else
					resto = 11 - resto;
			
				digito += resto.ToString();
			
				return cnpj.EndsWith(digito);
			}

			public static bool IsCpf(string cpf)
			{
				int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
				int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };
			
				cpf = cpf.Trim();
				cpf = cpf.Replace(".", "").Replace("-", "");
			
				if (cpf.Length != 11)
					return false;
			
				string tempCpf = cpf.Substring(0, 9);
			
				int soma = 0;
				for (int i = 0; i < 9; i++)
					soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];
				int resto = soma % 11;
				if (resto < 2)
					resto = 0;
				else
					resto = 11 - resto;
			
				string digito = resto.ToString();
				tempCpf += digito;
				soma = 0;
				for (int i = 0; i < 10; i++)
					soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
			
				resto = soma % 11;
				if (resto < 2)
					resto = 0;
				else
					resto = 11 - resto;
			
				digito += resto.ToString();

				return cpf.EndsWith(digito);
			}
			public static bool IsPis(string pis)
			{
				int[] multiplicador = new int[10] { 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
				
				if (pis.Trim().Length != 11)
					return false;
				
				pis = pis.Trim();
				pis = pis.Replace("-", "").Replace(".", "").PadLeft(11, '0');

				int soma = 0;
				for (int i = 0; i < 10; i++)
					soma += int.Parse(pis[i].ToString()) * multiplicador[i];
				
				int resto = soma % 11;
				if (resto < 2)
					resto = 0;
				else
					resto = 11 - resto;

				return pis.EndsWith(resto.ToString());
			}
		}
	}
}
