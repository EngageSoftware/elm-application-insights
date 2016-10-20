var _EngageSoftware$elm_application_insight$Native_AppInsight = function() {

    function trackEvent(data) {
        if (!window.appInsight) {
            return data;
        } 

        window.appInsight.trackEvent(data);
        return data;
    }
}