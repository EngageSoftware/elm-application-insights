var _EngageSoftware$elm_application_insights$Native_AppInsights = function() {
 
    function convertToString(data) {
        return typeof data === "string" ? data : _elm_lang$core$Basics$toString(data);
    }

    function trackEvent(data) {
        if (!window.appInsights) {
            return data;
        } 

        var str = convertToString(data);
        window.appInsights.trackEvent(str);
        return data;
    }

    function trackException(data) {
        if (!window.appInsights) {
            return data;
        } 

        var str = convertToString(data);
        var maxExceptionMessageLength = 10000;
        str = str.slice(0, maxExceptionMessageLength); 
        var error = new Error(str);
        window.appInsights.trackException(error);
        return data;
    }

    return { 
        trackEvent : trackEvent,
        trackException : trackException
    };
}();