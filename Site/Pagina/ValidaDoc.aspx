<%@ Page Title="Validação de Documento" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="ValidaDoc.aspx.cs"
    Inherits="Site.Validacao.ValidacaoCPF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Validação de documento</h1>
        <p class="lead">
            Aqui você consegue fazer a verificação dos números de alguns documentos.
        </p>
    </div>
    <div class="row">
        <div class="col-md-6 mb-3">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Validar CPF</h5>
                </div>
                <div class="card-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtCpf">CPF:</label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCpf" CssClass="error"
                                ErrorMessage="Campo obrigatório!" ValidationGroup="cpf" />
                            <asp:TextBox runat="server" ID="txtCpf" ClientIDMode="Static" CssClass="form-control" />
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
        <div class="col-md-6 mb-3">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Validar CNPJ</h5>
                </div>
                <div class="card-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="txtCnpj">CNPJ:</label>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCnpj" CssClass="error"
                                ErrorMessage="Campo obrigatório!" ValidationGroup="cnpj" />
                            <asp:TextBox runat="server" ID="txtCnpj" ClientIDMode="Static" CssClass="form-control" />
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
        <div class="col-md-6 mb-3">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Validar PIS</h5>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="txtPis">PIS:</label>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPis" CssClass="error"
                            ErrorMessage="Campo obrigatório!" ValidationGroup="pis" />
                        <asp:TextBox runat="server" ID="txtPis" ClientIDMode="Static" CssClass="form-control" />
                        
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
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title">Validar CNH</h5>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtCnh" Text="CNH" />
                        <asp:RequiredFieldValidator runat="server" CssClass="error" ControlToValidate="txtCnh" ValidationGroup="cnh"
                            ErrorMessage="*Obrigatório" />
                        <asp:TextBox runat="server" ID="txtCnh" ClientIDMode="Static" CssClass="form-control" />
                    </div>
                    <div class="col-md-12">
                        <asp:Label runat="server" ID="lblValidCnh" ClientIDMode="Static" />
                    </div>
                </div>
                <div class="card-footer text-center">
                    <asp:Button runat="server" ID="btnValidarCnh" ClientIDMode="Static" ValidationGroup="cnh"
                        OnClick="btnValidarCnh_Click" Text="Validar CNH" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
