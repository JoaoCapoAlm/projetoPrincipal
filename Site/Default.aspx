<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Site._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>E esse projeto? Serve para que?</h1>
        <p class="lead">
            Esse projeto demostra um pouco do conhecimento que possúo e também para praticar
            um pouco do conhecimento que venho adquirindo com o tempo.
        </p>
        <hr />
        <p>
            Outros projetos feitos por mim estão disponíveis atualmente no GitHub.
            Caso precise, envie uma mensagem pelo LinkedIn.
        </p>
        <a href="https://github.com/JoaoCapoAlm/" target="_blank" rel="noopener noreferrer" class="btn btn-info btn-lg">
            <i class="fab fa-github"></i> GitHub &raquo;
        </a>
        <a href="https://www.linkedin.com/in/joao-capoani/" target="_blank" class="btn btn-info btn-lg" rel="noopener noreferrer">
            <i class="fab fa-linkedin"></i> LinkedIn &raquo;
        </a>
    </div>
    <section class="row">
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Validação de Documento</h3>
                </div>
                <div class="card-body">
                    <p>Faça a validação dos números dos documentos de CPF, CNH, CNPJ e PIS.</p>
                    <p class="text-center">
                        <asp:HyperLink runat="server" ID="btnValidaDoc" ClientIDMode="Static" CssClass="btn btn-primary"
                            Text="Validação &raquo;" />
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Curso JavaScript</h3>
                </div>
                <div class="card-body">
                    <p>Veja a resolução dos exercícios do curso Starter JavaScript da Rocketseat.</p>
                    <p class="text-center">
                        <asp:HyperLink runat="server" ID="btnCursoJS" ClientIDMode="Static" CssClass="btn btn-primary"
                            Text="Curso &raquo;" />
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Cifra de César</h3>
                </div>
                <div class="card-body">
                    <p>Quer enviar uma mensagem para alguém escondido? Cifre o texto com a Cifra de César!</p>
                    <p class="text-center">
                        <asp:HyperLink runat="server" ID="btnCifraCesar" ClientIDMode="Static" CssClass="btn btn-primary" Text="Cifra de César" />
                    </p>
                </div>
            </div>
        </div>
    </section>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h2 class="card-title">Projetos disponíveis no GitHub</h2>
                </div>
                <div class="card-body">
                    <div class="loading"></div>
                    <ul id="listRepositories"></ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ID="ScriptContent" ContentPlaceHolderID="ScriptContent">
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            getRepositories()
        })

        function getRepositories() {
            axios.get('https://api.github.com/users/JoaoCapoAlm/repos')
                .then(function (response) {
                    const repositories = response.data;

                    repositories.forEach(repository => {
                        const listItem = document.createElement('li');
                        const subList = document.createElement('ul');
                        const subListCode = document.createElement('li');
                        const subListPage = document.createElement('li');
                        const linkRepository = document.createElement('a');
                        const linkHomePage = document.createElement('a');

                        listItem.id = repository.id;
                        listItem.innerText = repository.name;

                        linkRepository.href = repository.html_url;
                        linkRepository.innerText = 'Código';
                        linkRepository.target = '_blanck';

                        subListCode.appendChild(linkRepository);
                        subList.appendChild(subListCode);

                        if (repository.homepage) {
                            linkHomePage.href = repository.homepage;
                            linkHomePage.innerText = 'Página Inicial';
                            linkHomePage.target = '_blank';

                            subListPage.appendChild(linkHomePage);
                            subList.appendChild(subListPage);
                        }

                        listItem.appendChild(subList);
                        
                        document.getElementById('listRepositories').appendChild(listItem);
                    });
                }).then($('.loading').html = '')
                .catch(function (error) { console.warn(error) });
            return;
        }
    </script>
</asp:Content>
