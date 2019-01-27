module Main exposing (init, main, subscriptions)

import Browser
import Browser.Navigation as Nav
import Model.Main exposing (..)
import Update exposing (..)
import Url
import View.Main exposing (..)
import Dict exposing (Dict)


-- MAIN


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( Model key url, Cmd.none )


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
