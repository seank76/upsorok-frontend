module View.About exposing (aboutSection)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model.Main exposing (ALink, Model, Msg)

aboutSection : Html Msg
aboutSection =
    section [ class "slider d-flex align-items-center" ]
        [ div [ class "container" ]
            [ div [ class "row d-flex justify-content-center" ]
                [ div [ class "col-md-12" ]
                    [ div [ class "slider-title_box" ]
                        [ div [ class "row" ]
                            [ div [ class "col-md-12" ]
                                [ div [ class "slider-content_wrap" ]
                                    [ h1 [] [ text "About Us" ] ]   
                                ]
                            ]
                        ]
                    , div [ class "align-items-left white" ]                               
                        [ h4 [] [ text """"UpSoRok" means business directory in Korean.""" ]
                        , h4 [] [ text "We strive to provide the best and latest information about the businesses you care" ]                        
                        ]
                    ]
                ]
            ]
        ]
