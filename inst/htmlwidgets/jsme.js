readMolecule = function(el, structure) {
    $('#'+el).data('jsme').readMolecule(structure);
}

readMolFile = function(el, structure) {
    $('#'+el).data('jsme').readMolFile(structure);
}

reset = function(el) {
    $('#'+el).data('jsme').reset();
}

smiles = function(el, inputEl) {
    Shiny.onInputChange(inputEl, $('#'+el).data('jsme').smiles());
}

molFile = function(el, inputEl) {
    Shiny.onInputChange(inputEl, $('#'+el).data('jsme').molFile());

}

jmeFile = function(el, inputEl) {
    Shiny.onInputChange(inputEl, $('#'+el).data('jsme').jmeFile());

}

Shiny.addCustomMessageHandler('useJME',
  function(message) {
   readMolecule(message.el, message.jmeFile);
  }
);

Shiny.addCustomMessageHandler('useMOL',
  function(message) {
    readMolFile(message.el, message.molFile);
  }
);

Shiny.addCustomMessageHandler('resetEditor',
  function(message) {
   reset(message.el);
  }
);

Shiny.addCustomMessageHandler('smiles',
  function(message) {
   smiles(message.el, message.inputEl);
  }
);

Shiny.addCustomMessageHandler('molFile',
  function(message) {
   molFile(message.el, message.inputEl);
  }
);

Shiny.addCustomMessageHandler('jmeFile',
  function(message) {
   jmeFile(message.el, message.inputEl);
  }
);

HTMLWidgets.widget({

  name: 'jsme',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function() {

jsmeOnLoad = function() {

					//window.jsmeObject = new JSApplet.JSME(el.id, '100%', '100%');
					//$(el).data('jsme', jsmeObject);

//var jsmeObject = new JSApplet.JSME(el.id, '100%', '100%');
					$('#'+el.id).data('jsme', new JSApplet.JSME(el.id, '100%', '100%'));

	   };

    //if (window.jsmeObject === undefined) jsmeOnLoad();
    if ($('#'+el.id).data('jsme') === undefined) jsmeOnLoad();
//$(el).data('jsme', new JSApplet.JSME(el.id, '100%', '100%'));

        },

      resize: function(width, height) {

    $('#'+el.id).data('jsme').setSize(width, height);

      }
    };
  }
});
