<%@ Page Title="Cuso JS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Modulo2.aspx.cs" Inherits="Site.Cursos.Starter.JavaScript.Modulo2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="display-3">Módulo 02</h1>
        <h3 class="display-5">Introdução JavaScript</h3>
    </div>
    <div class="row">
        <div class="exercice">
            <h3>Exercícios 1 e 2</h3>
        </div>
        <div class="col-md-6">
            <div class="card mb-3">
                <div class="card-header">
                    <h5 class="card-title">Enunciado exercício 1</h5>
                </div>
                <div class="card-body">
                    <p>
                        Crie um botão que ao ser clicado cria um novo elemento em tela com a
                        forma de um quadrado vermelho com 100px de altura e largura.
                    </p>
                    <p>Sempre que o botão for clicado um novo quadrado deve aparecer na tela.</p>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Enunciado exercício 2</h5>
                </div>
                <div class="card-body">
                    <p>
                        Utilizando o resultado do primeiro desafio, toda vez que o usuário passar
                        o mouse por cima de algum quadrado troque sua cor para uma cor aleatória
                        gerada pela função abaixo:
                    </p>
                    <pre class="codigo"><code>function getRandomColor() {
    var letters = "0123456789ABCDEF";
    var color = "#";
    for (var i = 0; i < 6; i++) {
        color += letters[
            Math.floor(Math.random() * 16)
        ];
    }
    return color; //#E943F0
}
var newColor = getRandomColor();</code></pre>
                </div>
            </div>
        </div>
        <div class="col-md-6 marginAuto">
            <div class="card">
                <div class="card-header text-center">
                    <button onclick="addSquare()" class="btn btn-primary btn-block">
                        Adicionar quadrado
                    </button>
                </div>
                <div class="card-body">
                    <div class="row" id="divSquare">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="exercice">
            <h3>Exercícios 3 e 4</h3>
        </div>
        <div class="col-md-6">
            <div class="card mb-3">
                <div class="card-header">
                    <h5 class="card-title">Enunciado</h5>
                </div>
                <div class="card-body">
                    <p>
                        Escreva uma função que verifique se o vetor de habilidades passado
                        possui a habilidade "Javascript" e retorna um booleano true/false
                        caso exista ou não.
                    </p>
                    <pre class="codigo"><code>function temHabilidade(skills) {
    // código aqui
}
var skills = [
    "Javascript",
    "ReactJS",
    "React Native"
];

temHabilidade(skills);
    // true ou false</code></pre>
                    <p>
                        Dica: para verificar se um vetor contém um valor, utilize o
                        método indexOf
                    </p>
                </div>
            </div>
            <div class="card mb-3">
                <div class="card-header">
                    <h5 class="card-title">Enunciado</h5>
                </div>
                <div class="card-body">
                    <p>
                        Seguindo o resultado do exercício anterior adicione um input
                        em tela e um botão como a seguir
                    </p>
                    <pre class="codigo"><code>&lt;input type="text" name="nome"&gt;
&lt;button onClick="adicionar()"&gt;
    Adicionar
&lt;/button&gt;</code></pre>
                    <p>
                        Ao clicar no botão, a função adicionar() deve ser disparada
                        adicionando um novo item a lista de nomes baseado no nome preenchido
                        no input e renderizando o novo item em tela juntos aos demais itens
                        anteriores.
                    </p>
                    <p>Além disso, o conteúdo do input deve ser apagado após o clique.</p>
                </div>
            </div>
        </div>
        <div class="col-md-6 marginAuto">
            <div class="card mb-3">
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtHability" Text="Habilidade" />
                        <asp:TextBox runat="server" ID="txtHability" ClientIDMode="Static"
                            CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ValidationGroup="hability" Display="Dynamic"
                            CssClass="error" ErrorMessage="Obrigatório" ControlToValidate="txtHability" />
                    </div>
                    <div class="text-center">
                        <button onclick="addHability()" class="btn btn-primary">
                            Adicionar habilidade
                        </button>
                    </div>
                </div>
            </div>
            <div class="card">
                <ul id="listHabilities" class="list-group list-group-flush">
                </ul>
                <div class="card-footer">
                    <asp:Label runat="server" ID="lblHasJS" ClientIDMode="Static"
                        Text="JavaScript não adicionado" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
    <script type="text/javascript">
        function addSquare() {
            if (event != null) {
                event.preventDefault();
                event.stopPropagation();
            }
            const newSquare = document.createElement('div');
            newSquare.classList.add('square');
            newSquare.style.width = '100px';
            newSquare.style.height = '100px';
            newSquare.style.backgroundColor = 'red';

            document.getElementById('divSquare').appendChild(newSquare);
            return;
        }

        function getRandomColor() {
            var letters = "0123456789ABCDEF";
            var color = "#";
            for (var i = 0; i < 6; i++) {
                color += letters[
                    Math.floor(Math.random() * 16)
                ];
            }
            
            return color; //#E943F0
        }

        var habilities = [];
        function addHability() {
            if (event != null)
                event.preventDefault();

            if (!Page_ClientValidate('hability'))
                return;

            const newHability = $('#txtHability').val();
            $('#txtHability').val('');

            if (habilities.toString().includes(newHability)) {
                console.warn('Habilidade já cadastrada');
                return;
            }

            habilities.push(newHability);

            var lista = document.getElementById('listHabilities');
            lista.innerHTML = '';

            habilities.sort();
            
            habilities.forEach(hability => {
                lista.innerHTML += `<li class='list-group-item'>${hability}</li>`;
            });

            if (newHability.toString().toLowerCase() === 'javascript') {
                $('#lblHasJS').text('JavaScript adicionado');
            }
            return;
        }
    </script>
</asp:Content>
