HTMLWidgets.widget({

  name: "diffUI",
  
  type: "output",
  
  factory: function(el, width, height) {
  
    dd = new diffDOM();
    
    // initialize content with empty div
    var target = $("#" + el.id);
    target.append($("<div/>"));
    
    return {
      renderValue: function(x) {
        
        html = $.parseHTML(x['html']);
        dd.apply(target.children(":first")[0],dd.diff(target.children(":first")[0],html[0]));
      }
    };
  }
});