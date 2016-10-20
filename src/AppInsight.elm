module AppInsight exposing (trackEvent)

{-| Native module for sending tracking information to Application Insight

@docs trackEvent
-}

import String
import Native.AppInsight


{-| Track Event
-}
trackEvent : any -> any
trackEvent =
    Native.AppInsight.trackEvent
