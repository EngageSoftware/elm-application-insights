module AppInsights
    exposing
        ( trackEvent
        , trackException
        )

{-| Native module for sending tracking information to Application Insight

@docs trackEvent, trackException
-}

import Native.AppInsights


{-| Track Event
-}
trackEvent : any -> any
trackEvent =
    Native.AppInsights.trackEvent


{-| Track Exception
-}
trackException : any -> any
trackException =
    Native.AppInsights.trackException
