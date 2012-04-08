require.memoize(bravojs.realpath(bravojs.mainModuleDir + '/C6EC60C2EDB43751D2D65343D18BD763@/lib/ace/mode/matching_parens_outdent'), ['ace/range'], function (require, exports, module) {
({define:function(factory){var name, fExports = factory(require,exports,module); for(name in fExports) exports[name] = fExports[name]; }}).define(function(require, exports, module) {

var Range = require("ace/range").Range;

var MatchingParensOutdent = function() {};

(function() {

    this.checkOutdent = function(line, input) {
        if (! /^\s+$/.test(line))
            return false;

        return /^\s*\)/.test(input);
    };

    this.autoOutdent = function(doc, row) {
        var line = doc.getLine(row);
        var match = line.match(/^(\s*\))/);

        if (!match) return 0;

        var column = match[1].length;
        var openBracePos = doc.findMatchingBracket({row: row, column: column});

        if (!openBracePos || openBracePos.row == row) return 0;

        var indent = this.$getIndent(doc.getLine(openBracePos.row));
        doc.replace(new Range(row, 0, row, column-1), indent);
    };

    this.$getIndent = function(line) {
        var match = line.match(/^(\s+)/);
        if (match) {
            return match[1];
        }

        return "";
    };

}).call(MatchingParensOutdent.prototype);

exports.MatchingParensOutdent = MatchingParensOutdent;
});

});
__bravojs_loaded_moduleIdentifier = bravojs.realpath(bravojs.mainModuleDir + '/C6EC60C2EDB43751D2D65343D18BD763@/lib/ace/mode/matching_parens_outdent');