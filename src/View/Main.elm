module View.Main exposing (view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Config exposing (..)
import Model.Main exposing (ALink, Model, Msg)
import View.About exposing (..)
import View.Categories exposing (..)
import View.FeaturedPlaces exposing (..)
import View.FindPlaces exposing (..)
import View.Slider exposing (..)
import Dict exposing (Dict)

view : Model -> Browser.Document Msg
view model =
    { title = getConfig "title"
    , body =
        [ navMenu ]
            ++ (case model.url.fragment of
                    Just "about" ->
                        [ aboutSection ]

                    _ ->
                        [ sliderSection
                        , findPlacesSection
                        , featuredPlacesSection
                        , categoriesSection
                        ]
               )
    }


dropDownMenu : ALink -> Html Msg
dropDownMenu alink =
    a [ class "dropdown-item", href alink.link ] [ text alink.name ]


navMenuItem : String -> List ALink -> Html Msg
navMenuItem name alink =
    li [ class "nav-item dropdown" ]
        [ div [ class "nav-link", id "navbarDropdownMenuLink", attribute "data-toggle" "dropdown", attribute "aria-haspopup" "true", attribute "aria-expanded" "false" ]
            [ text name
            , span [ class "icon-arrow-down" ] []
            ]
        , div [ class "dropdown-menu", attribute "aria-labelledby" "navbarDropdownMenuLink" ]
            (List.map dropDownMenu alink)
        ]


navBarNav : Html Msg
navBarNav =
    div [ class "navbar navbar-expand-lg navbar-light" ]
        [ a [ class "navbar-brand", href "index.html" ] [ text "UpSoRok" ]
        , button [ class "navbar-toggler", type_ "button", attribute "data-toggle" "collapse", attribute "data-target" "#navbarNavDropdown", attribute "aria-controls" "navbarNavDropdown", attribute "aria-expanded" "false", attribute "aria-label" "Toggle navigation" ]
            [ span [ class "icon-menu" ] [] ]
        , div [ class "collapse navbar-collapse justify-content-end", id "navbarNavDropdown" ]
            [ ul [ class "navbar-nav" ]
                [ navMenuItem "Reviews"
                    [ ALink "#" "Our Reviews"
                    , ALink "#" "Their Reviews"
                    , ALink "#" "Your Reviews"
                    ]
                , navMenuItem "Write"
                    [ ALink "#" "Your Review"
                    , ALink "#" "Corrections"
                    , ALink "#" "Random Thoughts"
                    ]
                , navMenuItem "Apps"
                    [ ALink "#" "Menu"
                    , ALink "#" "Pics"
                    , ALink "#" "Related"
                    ]
                , li [ class "nav-item active" ]
                    [ a [ class "nav-link", href "#about" ]
                        [ text "About" ]
                    ]
                , li [ class "nav-item" ]
                    [ a [ class "nav-link", href "#" ]
                        [ text "Blog" ]
                    ]
                , li []
                    [ a [ href "#", class "btn btn-outline-light top-btn" ]
                        [ span [ class "ti-plus" ] []
                        , text "Login"
                        ]
                    ]
                ]
            ]
        ]


navMenu : Html Msg
navMenu =
    div [ class "nav-menu" ]
        [ div [ class "bg transition" ]
            [ div [ class "container-fluid fixed" ]
                [ div [ class "row" ]
                    [ div [ class "col-md-12" ]
                        [ navBarNav ]
                    ]
                ]
            ]
        ]
