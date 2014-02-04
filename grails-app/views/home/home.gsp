<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
    <r:require modules="bootstrap"/>
</head>

<body>
    <div class="container" style="background-color: lavender; text-align: center;">
        <h1>Tochi</h1>
    </div>
    </br>
    <div class="container" id="section1" style="display: none;"></div>
    <div class="container" id="section2" style="display: none;"></div>
</body>
<r:script>
    $(document).ready(function(){
        console.log('Loading content...');
        $.ajax({
            type: "POST",
            url: "${g.createLink(controller: 'home', action: 'section1')}",
            dataType: "html",
            success: function (data){
                $('#section1').html(data);
                $('#section1').css('display', 'block');
            }
        });

        $.ajax({
            type: "POST",
            url: "${g.createLink(controller: 'home', action: 'section2')}",
            dataType: "html",
            success: function (data){
                $('#section2').html(data);
                $('#section2').css('display', 'block');
            }
        });
    });
</r:script>
</html>