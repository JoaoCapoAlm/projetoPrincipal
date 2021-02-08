<%@ Page Title="Curso JS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Modulo4.aspx.cs" Inherits="Site.Cursos.Starter.JavaScript.Modulo4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="display-3">Módulo 04</h1>
        <h3 class="display-5">JS assíncrono</h3>
    </div>
    <div class="row">
        <div class="exercice">
            <h3>Exercício 1</h3>
        </div>
        <section class="col-md-6">
            <div class="card mb-3">
                <div class="card-header">
                    <h5 class="card-title">Enunciado</h5>
                </div>
                <div class="card-body">
                    <p>
                        Crie uma função que recebe a idade de um usuário e retorna uma
                        Promise que depois de 2 segundos retornará se usuário é maior ou não
                        que 18 anos. Se o usuário ter mais que 18 anos de idade o resultado
                        deve cair no .then, caso contrário, no .catch.
                    </p>
                </div>
            </div>
        </section>
        <div class="col-md-6">
            <section class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtAge">Idade</label>
                        <asp:TextBox runat="server" ID="txtAge" ClientIDMode="Static"
                            CssClass="form-control" TextMode="Number" />
                    </div>
                </div>
                <div class="card-footer text-center">
                    <asp:Label runat="server" ID="lblAwnserAge" ClientIDMode="Static" />
                </div>
            </section>
        </div>
    </div>
    <div class="row">
        <div class="exercice">
            <h3>Exercícios 2 e 3</h3>
        </div>
        <section class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Exercício 2</h3>
                </div>
                <div class="card-body">
                    <p>
                        Crie uma tela com um &lt;input&gt; que deve receber o nome de um usuário
                        no Github.
                    </p>
                    <p>
                        Após digitar o nome do usuário e clicar no botão buscar a aplicação deve
                        buscar pela API do Github (conforme URL abaixo) os dados de repositórios
                        do usuário e mostrá-los em tela:
                    </p>
                    <p>
                        URL de exemplo:
                        <a class="card-link" target="_blank" rel="nofollow noreferrer" href="https://api.github.com/users/diego3g/repos">https://api.github.com/users/diego3g/repos</a>
                    </p>
                    <p>Basta alterar "diego3g" pelo nome do usuário.</p>
                    <pre class="code"><code>&lt;input type="text" name="user"&gt;
&lt;button onclick=""&gt;Adicionar&lt;/button&gt;</code></pre>
                    <p>
                        Depois de preencher o input e adicionar, a seguinte lista deve
                        aparecer abaixo:
                    </p>
                    <pre class="code"><code>&lt;ul&gt;
    &lt;li&gt;repo1&lt;/li&gt;
    &lt;li&gt;repo2&lt;/li&gt;
    &lt;li&gt;repo3&lt;/li&gt;
    &lt;li&gt;repo4&lt;/li&gt;
    &lt;li&gt;repo5&lt;/li&gt;
&lt;/ul&gt;</code></pre>
                </div>
            </div>
        </section>
        <section class="col-md-6">
            <div class="card mb-3">
                <div class="card-header">
                    <h3 class="card-title">Exercício 3</h3>
                </div>
                <div class="card-body">
                    <p>
                        A partir do resultado do exemplo anterior adicione um indicador de
                        carregamento em tela no lugar da lista apenas enquanto a requisição
                        estiver acontecendo:
                    </p>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtGit" Text="Usuário" />
                        <asp:RequiredFieldValidator runat="server" CssClass="error" ErrorMessage="*Obrigatório"
                            ValidationGroup="repositoriries" ControlToValidate="txtGit" />
                        <asp:TextBox runat="server" ID="txtGit" ClientIDMode="Static"
                            CssClass="form-control" />
                    </div>
                    <div class="col-12 text-center">
                        <asp:Button runat="server" CssClass="btn btn-primary col-md-4"
                            Text="Adicionar" OnClientClick="getRepositories()" />
                    </div>
                    <hr />
                    <ul id="listRepositories">
                    </ul>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script type="text/javascript">
        function getRepositories() {
            if (event != null) {
                event.preventDefault();
                event.stopPropagation();
            }

            if (!Page_ClientValidate('repositoriries')) {
                $('#txtGit').focus();
                return false;
            }

            const list = document.getElementById('listRepositories');
            list.innerHTML = '<li id="liWarning">Carregando...</li>';

            const aviso = $('#liWarning');

            const user = $('#txtGit').val();
            var repos = [];

            axios.get(`https://api.github.com/users/${user}/repos`)
                .then(function (response) {
                    const { data } = response;

                    list.innerHTML = '';
                    data.forEach(item => repos.push(item.name));
                    repos.sort();
                    repos.forEach(repo => {
                        const item = document.createElement('li');
                        item.innerText = repo;
                        list.appendChild(item);
                    });
                }).catch(function (error) {
                    aviso.innerText = error;
                    aviso.attr('color', 'red');
                });

            return false;
        }
    </script>
</asp:Content>
