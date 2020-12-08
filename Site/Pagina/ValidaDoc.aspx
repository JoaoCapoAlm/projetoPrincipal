<%@ Page Title="Valida Documento" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ValidaDoc.aspx.cs" Inherits="Site.Validacao.ValidacaoCPF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Validação de documento</h1>
        <p class="lead">
            Aqui você consegue fazer a verificação dos números de alguns documentos.
        </p>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Valida CPF</h5>
                </div>
                <div class="card-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtCpf">CPF:</label>
                            <asp:TextBox runat="server" ID="txtCpf" ClientIDMode="Static" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCpf"
                                CssClass="error form-text" ErrorMessage="Campo obrigatório!" ID="RequiredFieldValidator"
                                ClientIDMode="Static" ValidationGroup="cpf" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Label runat="server" ID="lblMsgCpfValid" ClientIDMode="Static" />
                    </div>
                </div>
                <div class="card-footer text-center">
                    <asp:Button runat="server" ID="btnValidCpf" ClientIDMode="Static" ValidationGroup="cpf"
                        OnClick="btnValidCpf_Click" Text="Validar CPF" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Valida CNPJ</h5>
                </div>
                <div class="card-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtCnpj">CNPJ:</label>
                            <asp:TextBox runat="server" ID="txtCnpj" ClientIDMode="Static" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCnpj"
                                CssClass="error form-text" ErrorMessage="Campo obrigatório!" ID="rfvCnpj"
                                ClientIDMode="Static" ValidationGroup="cnpj" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Label runat="server" ID="lblValidCnpj" ClientIDMode="Static" />
                    </div>
                </div>
                <div class="card-footer text-center">
                    <asp:Button runat="server" ID="btnValidCnpj" ClientIDMode="Static" ValidationGroup="cnpj"
                        OnClick="btnValidCnpj_Click" Text="Validar CNPJ" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Valida PIS</h5>
                </div>
                <div class="card-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtPis">PIS:</label>
                            <asp:TextBox runat="server" ID="txtPis" ClientIDMode="Static" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPis"
                                CssClass="error form-text" ErrorMessage="Campo obrigatório!" ID="RFVPis"
                                ClientIDMode="Static" ValidationGroup="pis" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <asp:Label runat="server" ID="lblValidPis" ClientIDMode="Static" />
                    </div>
                </div>
                <div class="card-footer text-center">
                    <asp:Button runat="server" ID="btnValidarPis" ClientIDMode="Static" ValidationGroup="pis"
                        OnClick="btnValidarPis_Click" Text="Validar PIS" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
