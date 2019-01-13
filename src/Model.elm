module Model exposing (ALink, Model, Msg(..))

import Browser
import Browser.Navigation as Nav
import Url



-- MODEL


type alias Model =
    { key : Nav.Key
    , url : Url.Url
    }


type alias ALink =
    { link : String
    , name : String
    }


type Msg
    = LinkClicked Browser.UrlRequest
    | UrlChanged Url.Url
