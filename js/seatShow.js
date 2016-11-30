$(document).ready(function() {

    var $cart = $('#selected-seats'),
        $counter = $('#counter');

        sc = $('#seat-map').seatCharts({
            map: $('#seatData').data('map'),
            naming : {
                top : true,
                getLabel : function (character, row, column) {
                },
                rows: $('#seatData').data('columns'),
            },
            legend : {
                node : $('#legend'),
                items : [
                    ['', 'available',   '空席'],
                    ['','unavailable', '予約済み'],
                ]
            },
            click: function () {
                if (this.status() == 'available') {
                    $('<li>'+this.settings.id+'</li>')
                        .attr('id', 'cart-item-'+this.settings.id)
                        .attr('class', 'reserveSeats')
                        .data('seatId', this.settings.id)
                        .appendTo($cart);

                    $counter.text(sc.find('selected').length+1);

                    return 'selected';
                } else if (this.status() == 'selected') {
                    $counter.text(sc.find('selected').length-1);
                    $('#cart-item-'+this.settings.id).remove();

                    return 'available';
                } else if (this.status() == 'unavailable') {
                    return 'unavailable';
                } else {
                    return this.style();
                }
            }
        });

    $('#selected-seats').on('click', '.cancel-cart-item', function () {
        sc.get($(this).parents('li:first').data('seatId')).click();
    });
    sc.get($('#seatData').data('reserves')).status('unavailable');
});


$('#checkout').click(function () {
    var arr = $(".reserveSeats").map(function(){
        return $(this).text();
    }).get();
    $('#seats').val(arr);
});
