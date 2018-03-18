// This recieves messages of type "testmessage" from the server.
dd = new diffDOM();

Shiny.addCustomMessageHandler("diffdom",
  function(message) {
    console.log(message['html']);
    html = $.parseHTML('<div id="target_div">' + message['html'] + '</div>');
    target_id = $('#target_div');
    dd.apply(target_id[0],dd.diff(target_id[0],html[0]));
  }
);