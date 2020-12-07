<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
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
        <div class="col-md-6">
            <div class="card mb20">
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
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="form-group">
                        <label for="">Idade</label>
                        <asp:TextBox runat="server" ID="txtAge" ClientIDMode="Static"
                            CssClass="form-control" TextMode="Number" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
