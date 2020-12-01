function loading() {
    var load = '<div class="d-flex justify-content-center">';
    load += '<div class="spinner-border" role = "status">';
    load += '<span class="sr-only">Carregando...</span>';
    load += '</div>';
    load += '</div>';

    return load;
}

$('.loading').html = loading();
