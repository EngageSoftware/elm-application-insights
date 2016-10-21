var _EngageSoftware$elm_application_insights$Native_AppInsights = function() {

    function trackEvent(data) {
        if (!window.appInsights) {
            return data;
        } 

        var str = _elm_lang$core$Basics$toString(data);
        window.appInsights.trackEvent(str);
        return data;
    }

    return { trackEvent : trackEvent };
}();