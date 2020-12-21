var root = window.location.protocol + '//' + window.location.host;

function Mascaras(nacional = true) {
    function telefoneCelular() {
        if (nacional === true) {
            $('.celularMask').mask('(99) 99999-9999');
            $('.telefoneMask').mask('(99) 9999-9999');
            return;
        }
    }
    function DataMask() {
        $('.dataMask').mask('00/00/0000');
        return;
    }
    function CPFMask() {
        $('.CPFMask').mask('999.999.999-99');
        return;
    }
    function CNPJMask() {
        $('.CNPJMask').mask('99.999.999/9999-99');
        return;
    }
    function PISMask() {
        $('.PISMask').mask('')
    }
    function CEPMask() {
        $('.CEPMask').mask('99999-999');
        return;
    }

    return {
        telefoneCelular,
        DataMask,
        ValorMask,
        PercentMask,
        CPFMask,
        CNPJMask,
        CEPMask
    };
}