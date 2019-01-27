module View.FeaturedPlaces exposing (featuredPlacesSection)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.Main exposing (..)

featuredPlacesSection : Html Msg
featuredPlacesSection =
    section [ class "main-block light-bg" ]
        [ div [ class "container" ]
            [ div [ class "row justify-content-center" ]
                [ div [ class "col-md-5" ]
                    [ div [ class "styled-heading" ]
                        [ h3 []
                            [ text "Featured Places" ]
                        ]
                    ]
                ]
            , div [ class "row" ]
                [ div [ class "col-md-4 featured-responsive" ]
                    [ div [ class "featured-place-wrap" ]
                        [ a [ href "detail.html" ]
                            [ img [ src "images/featured1.jpg", class "img-fluid", alt "#" ]
                                []
                            , span [ class "featured-rating-orange" ]
                                [ text "6.5" ]
                            , div [ class "featured-title-box" ]
                                [ h6 []
                                    [ text "Burger & Lobster" ]
                                , p []
                                    [ text "Restaurant" ]
                                , span []
                                    [ text "•" ]
                                , p []
                                    [ text "3 Reviews" ]
                                , span []
                                    [ text "•" ]
                                , p []
                                    [ span []
                                        [ text "$$$" ]
                                    , text "$$"
                                    ]
                                , ul []
                                    [ li []
                                        [ span [ class "icon-location-pin" ]
                                            []
                                        , p []
                                            [ text "1301 Avenue, Brooklyn, NY 11230" ]
                                        ]
                                    , li []
                                        [ span [ class "icon-screen-smartphone" ]
                                            []
                                        , p []
                                            [ text "+44 20 7336 8898" ]
                                        ]
                                    , li []
                                        [ span [ class "icon-link" ]
                                            []
                                        , p []
                                            [ text "https://burgerandlobster.com" ]
                                        ]
                                    ]
                                , div [ class "bottom-icons" ]
                                    [ div [ class "closed-now" ]
                                        [ text "CLOSED NOW" ]
                                    , span [ class "ti-heart" ]
                                        []
                                    , span [ class "ti-bookmark" ]
                                        []
                                    ]
                                ]
                            ]
                        ]
                    ]
                , div [ class "col-md-4 featured-responsive" ]
                    [ div [ class "featured-place-wrap" ]
                        [ a [ href "detail.html" ]
                            [ img [ src "images/featured2.jpg", class "img-fluid", alt "#" ]
                                []
                            , span [ class "featured-rating-green" ]
                                [ text "9.5" ]
                            , div [ class "featured-title-box" ]
                                [ h6 []
                                    [ text "Joe’s Shanghai" ]
                                , p []
                                    [ text "Restaurant" ]
                                , span []
                                    [ text "•" ]
                                , p []
                                    [ text "3 Reviews" ]
                                , span []
                                    [ text "•" ]
                                , p []
                                    [ span []
                                        [ text "$$$" ]
                                    , text "$$"
                                    ]
                                , ul []
                                    [ li []
                                        [ span [ class "icon-location-pin" ]
                                            []
                                        , p []
                                            [ text "1301 Avenue, Brooklyn, NY 11230" ]
                                        ]
                                    , li []
                                        [ span [ class "icon-screen-smartphone" ]
                                            []
                                        , p []
                                            [ text "+44 20 7336 8898" ]
                                        ]
                                    , li []
                                        [ span [ class "icon-link" ]
                                            []
                                        , p []
                                            [ text "https://burgerandlobster.com" ]
                                        ]
                                    ]
                                , div [ class "bottom-icons" ]
                                    [ div [ class "closed-now" ]
                                        [ text "CLOSED NOW" ]
                                    , span [ class "ti-heart" ]
                                        []
                                    , span [ class "ti-bookmark" ]
                                        []
                                    ]
                                ]
                            ]
                        ]
                    ]
                , div [ class "col-md-4 featured-responsive" ]
                    [ div [ class "featured-place-wrap" ]
                        [ a [ href "detail.html" ]
                            [ img [ src "images/featured3.jpg", class "img-fluid", alt "#" ]
                                []
                            , span [ class "featured-rating" ]
                                [ text "3.2" ]
                            , div [ class "featured-title-box" ]
                                [ h6 []
                                    [ text "Tasty Hand-Pulled Noodles" ]
                                , p []
                                    [ text "Restaurant" ]
                                , span []
                                    [ text "•" ]
                                , p []
                                    [ text "3 Reviews" ]
                                , span []
                                    [ text "•" ]
                                , p []
                                    [ span []
                                        [ text "$$$" ]
                                    , text "$$"
                                    ]
                                , ul []
                                    [ li []
                                        [ span [ class "icon-location-pin" ]
                                            []
                                        , p []
                                            [ text "1301 Avenue, Brooklyn, NY 11230" ]
                                        ]
                                    , li []
                                        [ span [ class "icon-screen-smartphone" ]
                                            []
                                        , p []
                                            [ text "+44 20 7336 8898" ]
                                        ]
                                    , li []
                                        [ span [ class "icon-link" ]
                                            []
                                        , p []
                                            [ text "https://burgerandlobster.com" ]
                                        ]
                                    ]
                                , div [ class "bottom-icons" ]
                                    [ div [ class "open-now" ]
                                        [ text "OPEN NOW" ]
                                    , span [ class "ti-heart" ]
                                        []
                                    , span [ class "ti-bookmark" ]
                                        []
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            , div [ class "row justify-content-center" ]
                [ div [ class "col-md-4" ]
                    [ div [ class "featured-btn-wrap" ]
                        [ a [ href "#", class "btn btn-danger" ]
                            [ text "VIEW ALL" ]
                        ]
                    ]
                ]
            ]
        ]