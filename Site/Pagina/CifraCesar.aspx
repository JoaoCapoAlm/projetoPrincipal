<%@ Page Title="Cifra de César" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="CifraCesar.aspx.cs"
    Inherits="Site.Pagina.CifraCesar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Cifra de César</h1>
        <p class="lead">
            A Cífra de César, também conhecido como a cifra de troca, é uma das técnica de
            criptografia mais conhecidas. Essa técnica se baseia na troca de cada letra da
            mensagem original pela letra que se situa três posições à sua frente.
        </p>
        <p class="lead">
            De acordo com a história, Júlio César utilizava esse código para se comunicar
            com os seus generáis.
        </p>
        <hr />
        <h4>Exemplo (1 letra): </h4>
        <p><b>Texto original:</b> criptografia</p>
        <p><b>Texto criptografado:</b> dsjquphsbgjb</p>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="form-horizontal">
                        <asp:Label runat="server" AssociatedControlID="txtNumber"
                            Text="Número deslocamento" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNumber"
                            Display="Dynamic" ErrorMessage="*Obrigatório" CssClass="error"
                            ValidationGroup="cesar" ID="requiredNumber" ClientIDMode="Static" />
                        <asp:TextBox runat="server" ID="txtNumber" ClientIDMode="Static"
                            TextMode="Number" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="txtOriginal"
                            Text="Texto original" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOriginal"
                            Display="Dynamic" ErrorMessage="*Obrigatório" CssClass="error"
                            ValidationGroup="cesar" ID="requiredOriginal" ClientIDMode="Static" />
                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="6" CssClass="form-control"
                            MaxLength="255" ID="txtOriginal" ClientIDMode="Static" />
                    </div>
                    <div class="text-center">
                        <asp:Button runat="server" OnClick="txtOriginal_Click" Text="Cripto" ID="btnCesar"
                            CssClass="btn btn-primary" ClientIDMode="Static" ValidationGroup="cesar" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card" style="height: 100%;">
                <div class="card-body">
                    <asp:Label runat="server" ID="txtCriptografia" ClientIDMode="Static" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
