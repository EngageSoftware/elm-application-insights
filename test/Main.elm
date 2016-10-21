module Main exposing (..)

import Html.App
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import AppInsights


main =
    Html.App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init =
    ( "", Cmd.none )


view model =
    button [ type' "button", onClick (Send (Test "Hello World")) ] [ text "Send" ]


update msg model =
    case msg of
        Send message ->
            let
                _ =
                    AppInsights.trackEvent message
            in
                ( model, Cmd.none )


type alias Model =
    String


type Msg
    = Send Test


type alias Test =
    { test : String }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
