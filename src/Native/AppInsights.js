var _EngageSoftware$elm_application_insights$Native_AppInsights = function() {

    function trackEvent(data) {
        if (!window.appInsight) {
            return data;
        } 

        window.appInsight.trackEvent(data);
        return data;
    }

    return { trackEvent : trackEvent };
}();