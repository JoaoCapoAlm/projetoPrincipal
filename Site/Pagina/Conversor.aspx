<%@ Page Title="Conversões" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Conversor.aspx.cs" Inherits="Site.Pagina.Conversor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Conversões</h1>
        <p class="lead">Nessa página é possível encontrar vários tipos de conversões como:</p>
        <ul>
            <li>Temperatura</li>
            <li>Base númerica</li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Conversão de temperatura</h3>
                </div>
                <div class="card-body">
                    <p class="card-title">Temperatura original:</p>
                    <div class="row">
                        <asp:TextBox runat="server" TextMode="Number" CssClass="form-control col-9"
                            ID="txtTemperatureOriginal" ClientIDMode="Static" />
                        <asp:DropDownList runat="server" CssClass="col-3 form-control"
                            ID="ddlTemperatureOriginal" ClientIDMode="Static">
                            <asp:ListItem Text="ºC" Value="C" Selected="True" />
                            <asp:ListItem Text="ºF" Value="F" />
                            <asp:ListItem Text="K" Value="K" />
                        </asp:DropDownList>
                    </div>
                    <p>Temperatura convertida:</p>
                    <div class="row">
                        <asp:TextBox runat="server" Enabled="false" CssClass="form-control col-9"
                            ID="txtTemperatureConverted" ClientIDMode="Static" TextMod="Number" />
                        <asp:DropDownList runat="server" ID="ddlTemperatureConverted" ClientIDMode="Static"
                            CssClass="form-control col-3">
                            <asp:ListItem Value="C" Text="ºC" />
                            <asp:ListItem Value="F" Text="ºF" Selected="True" />
                            <asp:ListItem Value="K" Text="K" />
                        </asp:DropDownList>
                    </div>
                    <div class="row">
                        <button onclick="convertTemperature()" class="btn btn-primary">Converter</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
    <script type="text/javascript">
        function convertTemperature() {
            if (event != null) {
                event.preventDefault();
            }

            var sender = {
                temperature = $('#txtTemperatureOriginal').val(),
                typeOriginal = $('#ddlTemperatureOriginal').val(),
                typeConvert = $('#ddlTemperatureConverted').on('select').val()
            }
            
            $.ajax({
                type: 'POST',
                data: JSON.stringify(sender),
                dataType: json,
                contentType: 'application/json; charset=utf-8',
                url: root + '/WebService/global.asmx/ConvertTemperature',
                async: true,
                success: function (data) {
                    var temperature = data.d;
                    $('#txtTemperatureConverted').val(temperature);
                }, error: function (data) {
                    console.log(data);
                }
            })
        }
    </script>
</asp:Content>
