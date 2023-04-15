// 由 bin/fair_common_plugin.dart 生成
let FairCommonPlugin = function () {
    return {
        futureComplete: function (resp) {
             fairCommonPluginRequest(resp, 'futureComplete');
        },
        launchUrl: function (resp) {
             fairCommonPluginRequest(resp, 'launchUrl');
        },
        savePhoto: function (resp) {
             fairCommonPluginRequest(resp, 'savePhoto');
        },
        futureDelayed: function (resp) {
             fairCommonPluginRequest(resp, 'futureDelayed');
        },
        navigate: function (resp) {
             fairCommonPluginRequest(resp, 'navigate');
        },
        showToast: function (resp) {
             fairCommonPluginRequest(resp, 'showToast');
        },
        jsPrint: function (resp) {
             fairCommonPluginRequest(resp, 'jsPrint');
        },
        http: function (resp) {
             fairCommonPluginRequest(resp, 'http');
        }                     
    }
}
