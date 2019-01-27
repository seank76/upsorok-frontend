module View.Categories exposing (categoriesSection)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.Main exposing (..)

categoriesSection : Html Msg
categoriesSection =
    section [ class "main-block light-bg" ]
        [ div [ class "container" ]
            [ div [ class "row" ]
                [ div [ class "col-md-12" ]
                    [ div [ class "add-listing-wrap" ]
                        [ h2 []
                            [ text "Reach millions of People" ]
                        , p []
                            [ text "Add your Business infront of millions and earn 3x profits from our listing" ]
                        ]
                    ]
                ]
            , div [ class "row justify-content-center" ]
                [ div [ class "col-md-4" ]
                    [ div [ class "featured-btn-wrap" ]
                        [ a [ href "#", class "btn btn-danger" ]
                            [ span [ class "ti-plus" ] []
                            , text "ADD LISTING"
                            ]
                        ]
                    ]
                ]
            ]
        ]