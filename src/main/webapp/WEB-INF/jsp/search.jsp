<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-autocomplete/1.0.7/jquery.auto-complete.min.js"></script>
</head>
<style>
    .ui-front {
        z-index: 9999;
    }
</style>
<form class="navbar-form navbar-right" role="search" autocomplete="off">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Axtarış" id="search">
    </div>
</form>
<div class="search-icon">
    <img src="/img/ic_search_24px.png" alt="">
</div>

<script>
    function getBaseUrl() {
        var re = new RegExp(/^.*\//);
        return re.exec(window.location.href);
    }

    $(document).ready(function() {

        $( "#search" ).autocomplete({
            source: function( request, response ) {
                var val = request.term;
                $.ajax({
                    url: getBaseUrl() + "search?query="+val,
                    type: "get",
                    dataType: 'json',
                    success: function(data) {
                        response($.map(data.result, function (item) {
                            return { label: item.customerCode + ', '
                                    + item.firstName + ', '
                                    + item.lastName + ', '
                                    + item.phone1 + ', '
                                    + item.idCard + ', '
                                    + item.email + ', '
                                    + item.pinCode
                                ,
                                value: item.customerId };
                        }))
                    }
                });
            },
            select: function(e, i){
                e.preventDefault();
                $( "#search" ).val(i.item.label);
                window.location = getBaseUrl() + 'orders?customer_id=' + i.item.value;
            },
            minLength: 1
        });
    });


</script>