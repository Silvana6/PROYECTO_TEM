$(document).ready(function() {
    $("#modalid").click(function() {
        $.ajax({
            url: "VM_pomodoro.jsp",
            cache: false,
            success: function(html){
                $("#modalc").html(html);
                $('#modal').modal('show');
            }
        });
    });
});

