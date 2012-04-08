require.memoize(bravojs.realpath(bravojs.mainModuleDir + '/C6EC60C2EDB43751D2D65343D18BD763@/lib/ace/mode/textile_highlight_rules'), ['pilot/oop','ace/mode/text_highlight_rules'], function (require, exports, module) {
({define:function(factory){var name, fExports = factory(require,exports,module); for(name in fExports) exports[name] = fExports[name]; }}).define(function(require, exports, module) {

var oop = require("pilot/oop");
var TextHighlightRules = require("ace/mode/text_highlight_rules").TextHighlightRules;

var TextileHighlightRules = function()
{
/*
    var phraseModifiers = lang.arrayToMap(
        ("_|*|__|**|??|-|+|^|%|@").split("|")
    );
    
    var blockModifiers = lang.arrayToMap(
        ("h1|h2|h3|h4|h5|h6|bq|p|bc|pre").split("|")
    );
    */
    /*
    var punctuation = lang.arrayToMap(
        ("-|--|(tm)|(r)|(c)").split("|")
    );
    */
    
    this.$rules = {
        "start" : [
            {
                token : "keyword", // start of block
                regex : "h1|h2|h3|h4|h5|h6|bq|p|bc|pre",
                next  : "blocktag"
            },
            {
                token : "keyword",
                regex : "[\\*]+|[#]+"
            },
            {
                token : "text",
                regex : ".+"
            }
        ],
        "blocktag" : [
            {
                token : "keyword",
                regex : "\\. ",
                next  : "start",
            },
            {
                token : "keyword",
                regex : "\\(",
                next  : "blocktagproperties"
            },
        ],
        "blocktagproperties" : [
            {
                token : "keyword",
                regex : "\\)",
                next  : "blocktag"
            },
            {
                token : "string",
                regex : "[a-zA-Z0-9\\-_]+"
            },
            {
                token : "keyword",
                regex : "#"
            },
        ]
    };
};

oop.inherits(TextileHighlightRules, TextHighlightRules);

exports.TextileHighlightRules = TextileHighlightRules;

});

});
__bravojs_loaded_moduleIdentifier = bravojs.realpath(bravojs.mainModuleDir + '/C6EC60C2EDB43751D2D65343D18BD763@/lib/ace/mode/textile_highlight_rules');