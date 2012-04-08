require.memoize(bravojs.realpath(bravojs.mainModuleDir + '/C6EC60C2EDB43751D2D65343D18BD763@/lib/ace/mode/text_test'), ['ace/edit_session','ace/mode/text','ace/test/assertions','asyncjs'], function (require, exports, module) {
({define:function(factory){var name, fExports = factory(require,exports,module); for(name in fExports) exports[name] = fExports[name]; }}).define(function(require, exports, module) {

var EditSession = require("ace/edit_session").EditSession;
var TextMode = require("ace/mode/text").Mode;
var assert = require("ace/test/assertions");

module.exports = {
    setUp : function() {
        this.mode = new TextMode();
    },

    "test: toggle comment lines should not do anything" : function() {
        var session = new EditSession(["  abc", "cde", "fg"]);

        var comment = this.mode.toggleCommentLines("start", session, 0, 1);
        assert.equal(["  abc", "cde", "fg"].join("\n"), session.toString());
    },


    "text: lines should not be indented" : function() {
        assert.equal("", this.mode.getNextLineIndent("start", "   abc", "  "));
    }
};

});

if (typeof module !== "undefined" && module === require.main) {
    require("asyncjs").test.testcase(module.exports).exec()
}
});
require.memoize(bravojs.realpath(bravojs.mainModuleDir + '/C6EC60C2EDB43751D2D65343D18BD763@/lib/ace/test/assertions'), ['assert'], function (require, exports, module) {
({define:function(factory){var name, fExports = factory(require,exports,module); for(name in fExports) exports[name] = fExports[name]; }}).define(function(require, exports, module) {

var assert = require("assert");
    
assert.position = function(cursor, row, column) {
    assert.equal(cursor.row, row);
    assert.equal(cursor.column, column);
};

assert.range = function(range, startRow, startColumn, endRow, endColumn) {
    assert.position(range.start, startRow, startColumn);
    assert.position(range.end, endRow, endColumn);
};

assert.notOk = function(value) {
    assert.equal(value, false);   
}

exports.jsonEquals = function(foundJson, expectedJson) {
    assert.equal(JSON.stringify(foundJson), JSON.stringify(expectedJson));
};

module.exports = assert;

});
});
require.memoize(bravojs.realpath(bravojs.mainModuleDir + '/3811E0B2D30557A03C7171B8F7D26B8A@/modules/assert'), [], function (require, exports, module) {

});
__bravojs_loaded_moduleIdentifier = bravojs.realpath(bravojs.mainModuleDir + '/C6EC60C2EDB43751D2D65343D18BD763@/lib/ace/mode/text_test');