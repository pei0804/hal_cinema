<!doctype html>
<html>
<head>
    <title>JSC Demo</title>

    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/hal_cinema/css/jquery.seat-charts.css">
    <link rel="stylesheet" type="text/css" href="/hal_cinema/css/reserveSeat.css">
</head>

<body>
{$seatRow|default:""}
<table>
    <tbody>
    {foreach from=$seatMap item=item name="seatMapLoop"}
        <tr>
            <td>{$item}</td>
        </tr>
    {/foreach}
    </tbody>
</table>

<table>
<tbody>
{foreach from=$seats item=item name="seatsLoop"}
    <tr>
        <td>{$item->getSeat()}</td>
    </tr>
{/foreach}
</tbody>
</table>


{*<hr>*}
{*<table>*}
    {*<tbody>*}
    {*{foreach from=$reserves item=item name="reservesLoop"}*}
        {*<tr>*}
            {*<td>{$item->getSeat()}</td>*}
        {*</tr>*}
    {*{/foreach}*}
    {*</tbody>*}
{*</table>*}

<div class="wrapper">
    <div class="container">
        <div id="seat-map">
            <div class="front-indicator">Front</div>

        </div>
        <div class="booking-details">
            <h2>Booking Details</h2>

            <h3> Selected Seats (<span id="counter">0</span>):</h3>
            <ul id="selected-seats"></ul>

            Total: <b>$<span id="total">0</span></b>

            <button class="checkout-button">Checkout &raquo;</button>

            <div id="legend"></div>
        </div>
    </div>
</div>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="/hal_cinema/js/jquery.seat-charts.min.js"></script>

<script>
//    var seatMap = [
//            'A1,A2,A3,A4,A5,A6,A7,A8'
//    ]


    var firstSeatLabel = 1;

    $(document).ready(function() {
        var $cart = $('#selected-seats'),
                $counter = $('#counter'),
                $total = $('#total'),
                sc = $('#seat-map').seatCharts({
                    map: [
                        'ff_ff',
                        'ff_ff',
                        'ee_ee',
                        'ee_ee',
                        'ee___',
                    ],
                    seats: {
                        f: {
                            price   : 100,
                            classes : 'first-class', //your custom CSS class
                            category: 'First Class'
                        },
                        e: {
                            price   : 40,
                            classes : 'economy-class', //your custom CSS class
                            category: 'Economy Class'
                        }

                    },
                    naming : {
                        top : true,
                        getLabel : function (character, row, column) {
                            return firstSeatLabel++;
                        },
                        rows: ['A', 'B', 'C', 'D', 'E'],
                    },
                    legend : {
                        node : $('#legend'),
                        items : [
                            [ 'f', 'available',   'First Class' ],
                            [ 'e', 'available',   'Economy Class'],
                            [ 'f', 'unavailable', 'Already Booked']
                        ]
                    },
                    click: function () {
                        if (this.status() == 'available') {
                            //let's create a new <li> which we'll add to the cart items
                            $('<li>'+this.data().category+' Seat # '+this.settings.label+': <b>$'+this.data().price+'</b> <a href="#" class="cancel-cart-item">[cancel]</a></li>')
                                    .attr('id', 'cart-item-'+this.settings.id)
                                    .data('seatId', this.settings.id)
                                    .appendTo($cart);

                            /*
                             * Lets update the counter and total
                             *
                             * .find function will not find the current seat, because it will change its stauts only after return
                             * 'selected'. This is why we have to add 1 to the length and the current seat price to the total.
                             */
                            $counter.text(sc.find('selected').length+1);
                            $total.text(recalculateTotal(sc)+this.data().price);

                            return 'selected';
                        } else if (this.status() == 'selected') {
                            //update the counter
                            $counter.text(sc.find('selected').length-1);
                            //and total
                            $total.text(recalculateTotal(sc)-this.data().price);

                            //remove the item from our cart
                            $('#cart-item-'+this.settings.id).remove();

                            //seat has been vacated
                            return 'available';
                        } else if (this.status() == 'unavailable') {
                            //seat has been already booked
                            return 'unavailable';
                        } else {
                            return this.style();
                        }
                    }
                });

        //this will handle "[cancel]" link clicks
        $('#selected-seats').on('click', '.cancel-cart-item', function () {
            //let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
            sc.get($(this).parents('li:first').data('seatId')).click();
        });

        //let's pretend some seats have already been booked
        sc.get(['1_2', '4_1', '7_1', '7_2']).status('unavailable');

    });

    function recalculateTotal(sc) {
        var total = 0;

        //basically find every selected seat and sum its price
        sc.find('selected').each(function () {
            total += this.data().price;
        });

        return total;
    }

</script>
</body>
</html>