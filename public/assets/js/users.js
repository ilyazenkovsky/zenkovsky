$(document).ready(() => {
  // This file just does a GET request to figure out which user is logged in
  // and updates the HTML on the page
  $.get("/api/user_data").then(data => {
    $(".member-name").html(
      data.firstName +
        " " +
        data.lastName +
        (data.isAdmin ? " <b>(Администратор)</b>" : "")
    );
    if (!data.isAdmin) {
      $("[data-admin]").css({ display: "none" });
    }
  });
});
