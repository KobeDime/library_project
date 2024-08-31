function confirmation(ev) {
    ev.preventDefault();
    var urlToRedirect = ev.currentTarget.getAttribute('href');
    swal({
        title: "Are you sure to Delete this?",
        text: "You will not be able to revert this!",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
    .then((willCancel) => {
        if (willCancel) {
            window.location.href = urlToRedirect;
        }
    });
}
