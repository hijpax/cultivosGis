<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:UserLayer>
        <sld:LayerFeatureConstraints>
            <sld:FeatureTypeConstraint/>
        </sld:LayerFeatureConstraints>
        <sld:UserStyle>
            <sld:Name>Produccion de Elote (cientos)</sld:Name>
            <sld:FeatureTypeStyle>
                <sld:Name>group0</sld:Name>
                <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
                <sld:SemanticTypeIdentifier>generic:geometry</sld:SemanticTypeIdentifier>
                <sld:SemanticTypeIdentifier>colorbrewer:equalinterval:piyg</sld:SemanticTypeIdentifier>
                <sld:Rule>
                    <sld:Name>43.6 a 2389.2</sld:Name>
                    <sld:Title>43.6..2389.2</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>43.6</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>2389.2</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                        <sld:WellKnownName>shape://slash</sld:WellKnownName>
                                        <sld:Fill/>
                                        <sld:Stroke>
                                            <sld:CssParameter name="stroke">#FEE181</sld:CssParameter>
                                            <sld:CssParameter name="stroke-width">5.0</sld:CssParameter>
                                        </sld:Stroke>
                                    </sld:Mark>
                                    <sld:Size>11.0</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                            <sld:CssParameter name="fill">#FEE181</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#454545</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>2389.2 a 4734.8</sld:Name>
                    <sld:Title>2389.2..4734.8</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>2389.2</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>4734.8</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:GraphicFill>
                                <sld:Graphic>
                                    <sld:Mark>
                                        <sld:WellKnownName>shape://backslash</sld:WellKnownName>
                                        <sld:Fill/>
                                        <sld:Stroke>
                                            <sld:CssParameter name="stroke">#C69C0D</sld:CssParameter>
                                            <sld:CssParameter name="stroke-width">4.0</sld:CssParameter>
                                        </sld:Stroke>
                                    </sld:Mark>
                                    <sld:Size>10.0</sld:Size>
                                </sld:Graphic>
                            </sld:GraphicFill>
                            <sld:CssParameter name="fill">#F1C427</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>4734.8 a 7080.5</sld:Name>
                    <sld:Title>4734.8..7080.5</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>4734.8</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>7080.5</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#C8973C</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>7080.5 a 9426.2</sld:Name>
                    <sld:Title>7080.5..9426.2</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>7080.5</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_mz</ogc:PropertyName>
                                <ogc:Literal>9426.2</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#5E4A22</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Sin Datos</sld:Name>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#EFD8A3</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.5</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
            </sld:FeatureTypeStyle>
        </sld:UserStyle>
    </sld:UserLayer>
</sld:StyledLayerDescriptor>