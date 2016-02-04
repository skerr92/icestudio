
angular.module('app')

.service('LGService', function LGService () {

    var fs = require('fs');
    var notv = fs.readFileSync('js/blocks/logicgates/not.v').toString();
    var andv = fs.readFileSync('js/blocks/logicgates/and.v').toString();
    var orv = fs.readFileSync('js/blocks/logicgates/or.v').toString();
    var xorv = fs.readFileSync('js/blocks/logicgates/xor.v').toString();

    var exports = {};

    exports.addNewNotNode = function (nodeID, callback) {
        var block = {
            label: "NOT",
            type: "notx",
            params: [],
            vcode: notv,
            id: nodeID,
            x: 50, y: 100,
            width: 100,
            inputConnectors: [
                { name: "i", label: "" }
            ],
            outputConnectors: [
                { name: "o", label: "" }
            ]
        };
        callback(block);
    };

    exports.addNewAndNode = function (nodeID, callback) {
        var block = {
            label: "AND",
            type: "andx",
            params: [],
            vcode: notv,
            id: nodeID,
            x: 50, y: 100,
            width: 100,
            inputConnectors: [
                { name: "a", label: "" },
                { name: "b", label: "" }
            ],
            outputConnectors: [
                { name: "o", label: "" }
            ]
        };
        callback(block);
    };

    exports.addNewOrNode = function (nodeID, callback) {
        var block = {
            label: "OR",
            type: "orx",
            params: [],
            vcode: notv,
            id: nodeID,
            x: 50, y: 100,
            width: 100,
            inputConnectors: [
                { name: "a", label: "" },
                { name: "b", label: "" }
            ],
            outputConnectors: [
                { name: "o", label: "" }
            ]
        };
        callback(block);
    };

    exports.addNewXorNode = function (nodeID, callback) {
        var block = {
            label: "XOR",
            type: "xorx",
            params: [],
            vcode: notv,
            id: nodeID,
            x: 50, y: 100,
            width: 100,
            inputConnectors: [
                { name: "a", label: "" },
                { name: "b", label: "" }
            ],
            outputConnectors: [
                { name: "o", label: "" }
            ]
        };
        callback(block);
    };

    return exports;
});
