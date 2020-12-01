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
                <div class="card-body">
                    <ol type="1">
                        <li>Variáveis e dados</li>
                        <li>Operações matemáticas</li>
                        <li>Funções</li>
                        <li>Condicionais</li>
                        <li>Operadores lógicos</li>
                        <li>Condição ternária</li>
                        <li>Estruturas de repetição</li>
                        <li>Intervalo e timeout</li>
                    </ol>
                </div>
                <div class="card-footer text-center">
                    <asp:HyperLink runat="server" ID="btnMod1" ClientIDMode="Static" CssClass="btn btn-primary" Text="Desafios" />
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card mb20">
                <div class="card-header">
                    <h3 class="card-title">Módulo 2</h3>
                    <h3 class="card-subtitle">Manipulando a DOM</h3>
                </div>
                <div class="card-body">
                    <ol type="1">
                        <li>Eventos inline</li>
                        <li>Trabalhando com a DOM</li>
                        <li>Lidando com elementos</li>
                        <li>Alterando estilos</li>
                    </ol>
                </div>
                <div class="card-footer text-center">
                    <asp:HyperLink runat="server" ID="btnMod2" ClientIDMode="Static" CssClass="btn btn-primary" Text="Desafios" />
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
                <div class="card-body">
                    <ol type="1">
                        <li>Estrutura do app</li>
                        <li>Iniciando aplicação</li>
                        <li>Renderizando Todos</li>
                        <li>Criando Todos</li>
                        <li>Excluindo Todos</li>
                        <li>Salvando no storage</li>
                    </ol>
                </div>
                <div class="card-footer">
                    <a class="btn btn-primary">Desafios</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card mb20">
                <div class="card-header">
                    <h3 class="card-title">Módulo 4</h3>
                    <h3 class="card-subtitle">JS assíncrono</h3>
                </div>
                <div class="card-body">
                    <ol type="1">
                        <li>Requisições AJAX</li>
                        <li>Promises</li>
                        <li>Utilizando Axios</li>
                    </ol>
                </div>
                <div class="card-footer">
                    <a class="btn btn-primary">Desafios</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
