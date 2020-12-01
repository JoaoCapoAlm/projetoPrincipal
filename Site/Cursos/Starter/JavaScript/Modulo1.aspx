<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modulo1.aspx.cs" Inherits="Site.Cursos.Starter.JavaScript.Modulo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="display-3">Módulo 01</h1>
        <h3 class="display-5">Introdução JavaScript</h3>
    </div>
    <div class="row">
        <div class="container">
            <div class="exercice">
                <h3>Exercício 1</h3>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Enunciado</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Crie uma função que dado o objeto a seguir:</p>
                    <pre class="codigo"><code>var endereco =
{
    rua: "Rua dos pinheiros",
    numero: 1293,
    bairro: "Centro",
    cidade: "São Paulo",
    uf: "SP"
};</code></pre>
                    <p>Retorne o seguinte conteúdo:</p>
                    <samp>O usuário mora em São Paulo / SP, no bairro Centro, na rua "Rua dos Pinheiros"
                        com nº 1293.</samp>
                </div>
                <div class="card-footer">
                    <h5>Resposta</h5>
                    <span id="txtAddress"></span>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="ddlState">Estado(UF)</label>
                        <asp:DropDownList runat="server" CssClass="form-control"
                            ID="ddlState" ClientIDMode="Static">
                            <asp:ListItem Text="Paraná" Value="PR" Selected="True" />
                            <asp:ListItem Text="Santa Catarina" Value="SC" />
                            <asp:ListItem Text="Rio Grande do Sul" Value="RS" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtCity">Cidade</label>
                        <asp:RequiredFieldValidator runat="server" CssClass="error" ErrorMessage="*Obrigatório"
                            ControlToValidate="txtCity" ValidationGroup="address" />
                        <asp:TextBox runat="server" ID="txtCity" ClientIDMode="Static" CssClass="form-control" />
                        
                    </div>
                    <div class="form-group">
                        <label for="txtDistrict">Bairro</label>
                        <asp:RequiredFieldValidator runat="server" CssClass="error" ErrorMessage="*Obrigatório"
                            ControlToValidate="txtDistrict" ValidationGroup="address" />
                        <asp:TextBox runat="server" ID="txtDistrict" ClientIDMode="Static" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtStreet">Rua/Avenida</label>
                        <asp:RequiredFieldValidator runat="server" CssClass="error" ErrorMessage="*Obrigatório"
                            ControlToValidate="txtStreet" ValidationGroup="address" />
                        <asp:TextBox runat="server" ID="txtStreet" ClientIDMode="Static" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtNumber">Número</label>
                        <asp:RequiredFieldValidator runat="server" CssClass="error" ErrorMessage="*Obrigatório"
                            ControlToValidate="txtNumber" ValidationGroup="address" />
                        <asp:TextBox runat="server" ID="txtNumber" ClientIDMode="Static" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtComplement">Complemento</label>
                        <input type="text" id="txtComplement" class="form-control" />
                    </div>
                    <div class="text-center">
                        <asp:Button ID="btnAddress" ClientIDMode="Static" runat="server"
                            Text="Montar endereço" CssClass="btn btn-primary" OnClientClick="setAddress()" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="exercice">
                <h3>Exercício 2</h3>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Enunciado</h5>
                </div>
                <div class="card-body">
                    <p>Crie uma função que dado um intervalo (entre x e y) exiba todos número pares:</p>
                    <pre class="codigo"><code>function pares(x, y) { // código aqui }
pares(32, 321);</code></pre>
                </div>
                <div class="card-footer">
                    <h5>Resposta</h5>
                    <span id="lblPair"></span>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div  class="card-body">
                    <div class="form-group">
                        <label for="txtBeginValue">Valor inicial</label>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtBeginValue"
                            CssClass="error" ErrorMessage="*Obrigatório" ValidationGroup="pair" />
                        <asp:TextBox runat="server" ID="txtBeginValue" ClientIDMode="Static"
                            CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtEndValue">Valor final</label>
                        <asp:RequiredFieldValidator runat="server" ValidationGroup="pair"
                            CssClass="error" ErrorMessage="*Origatório" ControlToValidate="txtEndValue" />
                        <asp:TextBox runat="server" ID="txtEndValue" ClientIDMode="Static"
                            CssClass="form-control" />
                    </div>
                    <div class="text-center">
                        <asp:Button runat="server" OnClientClick="pares()" ID="btnPair" ClientIDMode="Static"
                            CssClass="btn btn-primary" Text="Númreos pares" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container">
            <div class="exercice">
                <h3>Exercício 4</h3>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Enunciado</h5>
                </div>
                <div class="card-body">
                    <p>Escreva uma função que dado um total de anos de estudo retorna o quão
                        experiente o usuário é:</p>
                    <pre class="codigo"><code>function experiência(anos) { // código aqui }
var anosEstudo = 7;
experiência(anosEstudo);</code></pre>
                    <p>De 0-1 ano: Iniciante</p>
                    <p>De 1-3 anos: Intermediário</p>
                    <p>De 3-6 anos: Avançado</p>
                    <p>De 7 acima: Jedi Master</p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtName">Nome</label>
                        <asp:RequiredFieldValidator runat="server" ValidationGroup="experience"
                            CssClass="error" ErrorMessage="*Obrigatório" ControlToValidate="txtName" />
                        <asp:TextBox runat="server" ID="txtName" ClientIDMode="Static"
                            CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtYear">Anos</label>
                        <asp:RequiredFieldValidator runat="server" ValidationGroup="experience"
                            CssClass="error" ErrorMessage="*Obrigatório" ControlToValidate="txtYear" />
                        <asp:TextBox runat="server" ID="txtYear" ClientIDMode="Static"
                            CssClass="form-control" />
                    </div>
                    <div class="text-center">
                        <asp:Button runat="server" ID="btnExperience" ClientIDMode="Static"
                            CssClass="btn btn-primary" OnClientClick="experience()" Text="Experiência" />
                    </div>
                </div>
                <div class="card-footer">
                    <h5>Resposta</h5>
                    <span id="userExperience"></span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
    <script>
        function setAddress() {
            event.preventDefault();
            event.stopPropagation();

            if (!Page_ClientValidate('address')) {
                $('#ddlState').focus();
                return false;
            }

            const state = $('#ddlState').val();
            const city = $('#txtCity').val();
            const district = $('#txtDistrict').val();
            const street = $('#txtStreet').val();
            const number = $('#txtNumber').val();
            const complement = $('#txtComplement').val();

            var address = `O usuário mora em ${city} / ${state}, no bairro ${district}, `;
            address += `na ${street} com nº ${number}`;

            if (complement)
                address += `, ${complement}.`;

            $('#txtAddress').text(address);
            return false;
        }

        function pares() {
            event.preventDefault();
            event.stopPropagation();

            if (!Page_ClientValidate('pair')) {
                $('#txtBeginValue').focus();
                return false;
            }

            var first = $('#txtBeginValue').val();
            var end = $('#txtEndValue').val();

            first = parseFloat(first);
            end = parseFloat(end);

            if (end < first) {
                const newValue = first;
                first = end;
                end = newValue;
            }

            var list = [];
            while (first <= end) {
                if (first % 2 == 0)
                    list.push(first);

                first += 1;
            }
            
            if (list.length > 0)
                $('#lblPair').text(list);
            else
                $('#lblPair').text('Nenhum número par!');

            return false;
        }

        function experience() {
            event.preventDefault();
            event.stopPropagation();

            if (!Page_ClientValidate('experience')) {
                $('#txtName').focus();
                return false;
            }

            const name = $('#txtName').val();
            var year = $('#txtYear').val();
            var awnser = name + ' é ';

            year = parseFloat(year);
            console.log(year);

            if (year < 1) {
                awnser += 'iniciante.';
            } else if (year >= 1 && year < 3) {
                awnser += 'intermediário.';
            } else if (year >= 3 && year < 7) {
                awnser += 'avançado';
            } else {
                awnser += 'jedi master';
            }

            $('#userExperience').text(awnser);
            return false;
        }
    </script>
</asp:Content>
