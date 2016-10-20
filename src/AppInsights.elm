module AppInsights exposing (trackEvent)

{-| Native module for sending tracking information to Application Insight

@docs trackEvent
-}

import String
import Native.AppInsights


{-| Track Event
-}
trackEvent : any -> any
trackEvent =
    Native.AppInsights.trackEvent
