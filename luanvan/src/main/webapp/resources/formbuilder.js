
function getSchema(formdef){
    
    var schema = {
            "title":"",
            "type":"object",
            "properties": {}
    };
    
    var schematypes = {
        "text" : "string",
        "select" : "string",
        "radio" : "string",
        "checkbox" : "string",
        "email" : "string",
        "textarea":"string",
        "date":"string",
        "upload":"array"
    };
    
    var baseProps = function (index, value) {
        var prop = {
            "type": schematypes[value.fieldtype]
        };
            if (value.fieldtype != "checkbox"){
            prop.title = value.title;   
        }
        if (value.fieldoptions){
            prop.enum = $.map( value.fieldoptions, function( v, i){
                return v.value;
            });
           
        }
        if (value.required){
            prop.required = value.required;
        }
        return prop;
    };
    
    $.each(formdef.formfields,function(index, value){
        var prop = baseProps(index, value);
        if (!value.fieldname){
            value.fieldname = 'field_'+index;
        }
        
        schema.properties[value.fieldname] = prop;
    });
    return schema;
}

 var baseFields = function (index, value) {
     var field = {
        "type": value.fieldtype
    };  
    if (value.fieldoptions){
        field.optionLabels = $.map( value.fieldoptions, function( v, i){
            return v.text;
        });
    }
       if (value.fieldtype == "checkbox"){
        field.rightLabel = value.title;
    }
    //if (value.vertical){
        field.vertical = value.vertical;
    //}
    
    if (value.showplaceholder){
        field.placeholder = value.placeholder;
    }
    if (value.showhelp){
        field.helper = value.helper;
    }
    return field;
};

function getOptions(formdef){
    var options = {
            "fields": {}
    };
    $.each(formdef.formfields,function(index, value){
        var field = baseFields(index, value);
        options.fields[value.fieldname] = field;
    });
    return options;
}

function showForm(value){
    var schema = getSchema(value);
    var options = getOptions(value);
    var config = {
    	"schema" : schema,
  	 	"options" : options
    };
    //alert(JSON.stringify(value, null, "  "));
  	$("#schema").val(JSON.stringify(schema, null, "  "));
  	$("#options").val(JSON.stringify(options, null, "  "));
  	var exists = $("#form2").alpaca("exists");
  	if (exists){
  		 $("#form2").alpaca("destroy");
  	}
  	config.options.focus = "";
  	$("#form2").alpaca(config);
}

var baseFieldSchema = {
    "title": "Them truong",
    "type": "object",
    "properties": {
        "fieldname": {
            "type": "string",
            "title": "Ten truong"
           },
        "fieldtype": {
            "title": "Loai",
            "type": "string",
            "enum":["text","checkbox", "select", "radio","date"]
        },
        
        "title": {
           "title":"Nhan",
            "type": "string"
        },
          "showhelp": {
            "type": "boolean"
        },
        "helper": {
            "type": "string"
        },
        "showplaceholder": {
            "type": "boolean"
        },
        "placeholder": {
            "type": "string"
        },
        "required" :{
        	 "type": "boolean"
        },
         "vertical" : {
	        "type": "boolean"
        },
        "fieldoptions" :{
        	"type":"array",
            "title":"Truong con",
             "items": {
	            "type": "object",
	            "properties": {
	                "value": {
	                    "title": "Noi dung",
	                    "type": "string"
	                },
	                "text": {
	                    "title": "Text",
	                    "type": "string"
	                },	
	            }
             }
        }
    },
    "dependencies": {
        "fieldoptions": ["fieldtype"],
        "vertical": ["fieldtype"],
        "helper": ["showhelp"],
        "showplaceholder": ["fieldtype"],
        "placeholder": ["showplaceholder"],
    }
};

var baseFieldOptions = {
    "showtitle": {
        "rightLable": "Label"
    },
    "showhelp": {
        "rightLabel": "Van ban tro giup"
    },
    "showplaceholder" :{
    	"rightLabel": "Hien thi noi dung",
    	 "dependencies": {
            "fieldtype": ["email","text","textarea"]
        }
	},
	"fieldname": {
       	"showMessages":false
    },
	"fieldoptions" :{
    	"type":"table",
    	 "dependencies": {
            "fieldtype": ["select", "radio","checkbox"]
        }
	},
	"required" :{
    	 "rightLabel":"Bat buoc"
	},
    "vertical" :{
    	 "rightLabel":"Theo chieu doc",
    	 "dependencies": {
            "fieldtype": ["radio"]
        }
	}
};


var fieldSchema = $.extend(true,  {}, baseFieldSchema, 
{    
    "properties": {
         "fieldtype": {
            "enum":["text","checkbox", "select", "radio","textarea", "email","date","upload"]
        },
        "listfields" :{
        }
    },
    "dependencies": {
        "fieldoptions": ["fieldtype"],
        "listfields": ["fieldtype"]
    }
});

fieldSchema.properties.listfields.items = fieldSchema;


var fieldOptions = $.extend(true,  {}, baseFieldOptions, 
{
	"listfields" :{
	    "items": {	
    	},
    	"dependencies": {
            "fieldtype": []
        }
	}
});

fieldOptions.listfields.items.fields = fieldOptions;

var formbuilderConfig = {
    "schema": {
        "title":"Cau truc",
        "type":"object",
        "properties": {
            "formfields": {
                "type":"array",
                 "items": fieldSchema
            }
        }
    },
    "options": {
   	 "fields": {
   	 	"formfields":{
   	 		"toolbarSticky": true,
   	 		 "items": {
   	 		 	"fieldClass":"fielddiv",
					"fields": fieldOptions
   	 		 }
   	 	}
   	 },
//   	 "form": {
//           "buttons": {
//               "Refresh": {
//                   "title":"Create",
//                   "click": function() {
//                       this.refreshValidationState(true);
//                       if (!this.isValid(true)) {
//                           this.focus();
//                           return;
//                       }
//                       var value = this.getValue();
//                       $.cookie('alpacadata', JSON.stringify(value), { expires: 7, path: '/' });
//                      showForm(value);
//                   }
//               },
//                 "show": {
//                   "label": "Show",
//                   "click": function() {
//                       var form = $("#form2").alpaca("get");
//                       form.show();
//                   }
//               },
//               "hide": {
//                   "label": "Hide",
//                   "click": function() {
//                       var form = $("#form2").alpaca("get");
//                       form.hide();
//                   }
//               }
//           }
//       }
   },
    "postRender": function(control) {
     	var self = control;
         control.childrenByPropertyId["formfields"].on("change", function() {
            //alert("The value of title was changed to: " + this.getValue());
             var value = self.getValue();
             $.cookie('alpacadata', JSON.stringify(value), { expires: 7, path: '/' });
             showForm(value);
        });
    }
     
};
