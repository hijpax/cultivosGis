<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" version="1.0.0">
    <sld:UserLayer>
        <sld:LayerFeatureConstraints>
            <sld:FeatureTypeConstraint/>
        </sld:LayerFeatureConstraints>
        <sld:UserStyle>
            <sld:Name>Superficie Sembrada con Semilla mejorada (Mz)</sld:Name>
            <sld:FeatureTypeStyle>
                <sld:Name>group0</sld:Name>
                <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
                <sld:SemanticTypeIdentifier>generic:geometry</sld:SemanticTypeIdentifier>
                <sld:SemanticTypeIdentifier>colorbrewer:quantile:orrd</sld:SemanticTypeIdentifier>
                <sld:Rule>
                    <sld:Name>rule01</sld:Name>
                    <sld:Title>41.43..279.4</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>1324.2</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>8507.4</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FBC56A</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.75</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>rule02</sld:Name>
                    <sld:Title>279.4..599.37</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>599.37</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>1324.2</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#FCA227</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.75</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>rule03</sld:Name>
                    <sld:Title>599.37..1324.2</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>279.4</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>599.37</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#D27D31</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.75</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>rule04</sld:Name>
                    <sld:Title>1324.2..8507.4</sld:Title>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThanOrEqualTo>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>41.43</ogc:Literal>
                            </ogc:PropertyIsGreaterThanOrEqualTo>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>superficie_sembrada_con_semilla_mejorada</ogc:PropertyName>
                                <ogc:Literal>279.4</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:And>
                    </ogc:Filter>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#8F7B34</sld:CssParameter>
                            <sld:CssParameter name="fill-opacity">0.75</sld:CssParameter>
                        </sld:Fill>
                        <sld:Stroke>
                            <sld:CssParameter name="stroke">#808080</sld:CssParameter>
                        </sld:Stroke>
                    </sld:PolygonSymbolizer>
                </sld:Rule>
                <sld:Rule>
                    <sld:Name>Sin datos</sld:Name>
                    <sld:PolygonSymbolizer>
                        <sld:Fill>
                            <sld:CssParameter name="fill">#F9D593</sld:CssParameter>
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