let FairCommonPlugin = function () {
    return {
        // The same method name in FairCommonPlugin
        savePhoto: function (resp) {
            fairCommonPluginRequest(resp, 'savePhoto');
        },
        navigate: function (resp) {
            fairCommonPluginRequest(resp, 'navigate');
        },
        showToast: function (resp) {
            fairCommonPluginRequest(resp, 'showToast');
        },
        launchUrl: function (resp) {
            fairCommonPluginRequest(resp, 'launchUrl');
        },
        futureComplete: function (resp) {
            fairCommonPluginRequest(resp, 'futureComplete');
        },
        http: function (resp) {
            fairCommonPluginRequest(resp, 'http');
        }       
    }
}