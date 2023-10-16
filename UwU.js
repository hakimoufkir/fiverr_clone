    $(document).ready(function() {

    
    $('#formInscription').on('submit', function(event) {
        event.preventDefault();
        let formData = new FormData(this);
        console.log(formData);
    
        $.ajax({
            type: "POST",
            url: "back_S/validerInscription.php",
            data: formData, // Pass the FormData directly here
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                console.log(data);
                if (data === "invalid") {
                    alert('No success');
                } else {
                    alert('success');
                    document.location.href = "index.php";
                }
            },
            error: function(e) {
                alert('error');
            }
        });
    });
    $('#formEditer').on('submit', function(event) {
        event.preventDefault();
        let formData = new FormData(this);
        console.log(formData);
        alert('?????????');
        $.ajax({
            type: "POST",
            url: "back_S/editProfile.php",
            data: formData, // Pass the FormData directly here
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                console.log(data);
                if (data === "invalid") {
                    alert('No success');
                } else {
                    alert('success');
                    document.location.href = "index.php";
                }
            },
            error: function(e) {
                alert('error');
            }
        });
    });
    $('#formCreateAnnonce').on('submit', function(event) {
        // event.preventDefault();
        let formData = new FormData(this);
        console.log(formData);
        alert('?????????');


        $.ajax({
            type: "POST",
            url: "back_S/validerCreateAnnonce.php",
            data: formData, // Pass the FormData directly here
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                console.log(data);
                if (data === "invalid") {
                    alert('No success');
                } else {
                    alert('success');
                    // document.location.href = "index.php";
                }
            },
            error: function(e) {
                alert('error');
            }
        });

        setInterval(function () {alert("???????????")}, 5000);

    });
    $('#formSearchAnnonces').on('submit', function(event) {
        event.preventDefault();
        let formData = new FormData(this);
    
        $.ajax({
            type: "POST",
            url: "back_S/searchAnnonces.php",
            data: formData, // Pass the FormData directly here
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                if (data === "invalid") {
                    // Handle the case when no results were found
                    console.log("No results found.");
                    // Optionally show a message to the user, e.g., $("#searchMessage").text("No results found.");
                } else {
                    // Redirect the user to main.php with the JSON data as a URL parameter
                    // window.location.href = "index.php?main&?data=" + encodeURIComponent(JSON.stringify(data));                
                    console.log(data);
                    const url = "http://localhost/simonew/index.php?main&data=" + encodeURIComponent(data);
                    window.location.href = url;
                    
                }
            },
            error: function(e) {
                // Handle AJAX error
                console.log("Error occurred during AJAX request.");
                // Optionally show an error message to the user, e.g., $("#searchMessage").text("An error occurred.");
            }
        });
    });
    
    
    
    $('#sendMessage').on('submit', function(event) {
        // event.preventDefault();
        let formData = new FormData(this);
        console.log(formData);
    
        $.ajax({
            type: "POST",
            url: "back_S/sendMessage_S.php",
            data: formData, // Pass the FormData directly here
            contentType: false,
            cache: false,
            processData: false,
            success: function(data) {
                console.log(data);
                if (data === "invalid") {
                    alert('No success');
                } else {
                    // alert('success');
                    document.location.href = "index.php";
                }
            },
            error: function(e) {
                alert('error');
            }
        });
    });
    
});
  
