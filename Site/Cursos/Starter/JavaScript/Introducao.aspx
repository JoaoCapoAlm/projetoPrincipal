<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Introducao.aspx.cs" Inherits="Site.Cursos.Starter.JavaScript.Introducao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="display-3">Curso Starter JavaScript</h1>
        <h4>
            Nas páginas relacionadas a esse curso, é possível encontrar a adptações da resolução dos exercícios passados nos
            módulos do curso.
        </h4>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card mb20">
                <div class="card-header">
                    <h3 class="card-title">Módulo 1</h3>
                    <h4 class="card-subtitle">Introdução ao JavaScript</h4>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Variáveis e dados</li>
                    <li class="list-group-item">Operações matemáticas</li>
                    <li class="list-group-item">Funções</li>
                    <li class="list-group-item">Condicionais</li>
                    <li class="list-group-item">Operadores lógicos</li>
                    <li class="list-group-item">Condição ternária</li>
                    <li class="list-group-item">Estruturas de repetição</li>
                    <li class="list-group-item">Intervalo e timeout</li>
                </ul>
                <div class="card-footer text-center">
                    <a href="Modulo1.aspx" class="btn btn-primary">Desafios</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card mb20">
                <div class="card-header">
                    <h3 class="card-title">Módulo 2</h3>
                    <h3 class="card-subtitle">Manipulando a DOM</h3>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Eventos inline</li>
                    <li class="list-group-item">Trabalhando com a DOM</li>
                    <li class="list-group-item">Lidando com elementos</li>
                    <li class="list-group-item">Alterando estilos</li>
                </ul>
                <div class="card-footer text-center">
                    <a href="Modulo2.aspx" class="btn btn-primary">Desafios</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card mb20">
                <div class="card-header">
                    <h3 class="card-title">Módulo 3</h3>
                    <h3 class="card-subtitle">App de Todos</h3>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Estrutura do app</li>
                    <li class="list-group-item">Iniciando aplicação</li>
                    <li class="list-group-item">Renderizando Todos</li>
                    <li class="list-group-item">Criando Todos</li>
                    <li class="list-group-item">Excluindo Todos</li>
                    <li class="list-group-item">Salvando no storage</li>
                </ul>
                <div class="card-footer text-center">
                    <a href="Modulo3.aspx" class="btn btn-primary">Desafios</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card mb20">
                <div class="card-header">
                    <h3 class="card-title">Módulo 4</h3>
                    <h3 class="card-subtitle">JS assíncrono</h3>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Requisições AJAX</li>
                    <li class="list-group-item">Promises</li>
                    <li class="list-group-item">Utilizando Axios</li>
                </ul>
                <div class="card-footer text-center">
                    <a href="Modulo4.aspx" class="btn btn-primary">Desafios</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
