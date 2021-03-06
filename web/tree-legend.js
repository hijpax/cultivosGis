Ext.require([
    'Ext.container.Viewport',
    'Ext.layout.container.Border',
    'GeoExt.tree.Panel',
    'Ext.tree.plugin.TreeViewDragDrop',
    'GeoExt.panel.Map',
    'GeoExt.tree.OverlayLayerContainer',
    'GeoExt.tree.BaseLayerContainer',
    'GeoExt.data.LayerTreeModel',
    'GeoExt.tree.View',
    'GeoExt.container.WmsLegend',
    'GeoExt.tree.Column',
    // We need to require this class, even though it is used by Ext.EventObjectImpl
    // see: http://www.sencha.com/forum/showthread.php?262124-Missed-(-)-dependency-reference-to-a-Ext.util.Point-in-Ext.EventObjectImpl
    'Ext.util.Point'
]);

Ext.application({
    name: 'Tree Legend',
    launch: function() {
        var mapPanel = Ext.create('GeoExt.MapPanel', {
            region: "center",
            center: [-88.83, 13.86],
            zoom: 9,
            layers: [
                new OpenLayers.Layer.WMS("OpenStreetMap WMS",
                    "https://ows.terrestris.de/osm/service?",
                    {layers: 'OSM-WMS'},
                    {
                        attribution: '&copy; terrestris GmbH & Co. KG <br>' +
                            'Data &copy; OpenStreetMap ' +
                            '<a href="http://www.openstreetmap.org/copyright/en"' +
                            'target="_blank">contributors<a>',
                        buffer: 0,
                        // exclude this layer from layer container nodes
                        displayInLayerSwitcher: false
                    }
                ),
				new OpenLayers.Layer.WMS("Bodegas paquete agricola 2019",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'puntosbodegas',
                        format: 'image/png',
                        transparent: true,
						
                    },
                    {
                        singleTile: true
                    }
                ),
               new OpenLayers.Layer.WMS("Frijol 2008 En qq",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'departamentos2008frijol',
                        format: 'image/png',
                        transparent: true,
						
                    },
                    {
                        singleTile: true
                    }
                ),
                new OpenLayers.Layer.WMS("Maiz 2008 en cientos",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'departamentos2008maiz',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                ),
				new OpenLayers.Layer.WMS("Maiz 2008 produccion nacional en qq",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'maiz12007',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                ),
				new OpenLayers.Layer.WMS("Maiz 2008 produccion Asociado en qq",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'maiz22007',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                ),
				new OpenLayers.Layer.WMS("Comparacion Maiz 2008/2018",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'comparacionMAIZ',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                ),
				new OpenLayers.Layer.WMS("Comparacion Frijol 2008/20018",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'comparacionFRIJOL',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                ),
				new OpenLayers.Layer.WMS("Maiz Superficie Cosechada por Depto",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'municipios_maiz_2008_SuperficieCosechada',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                ),
				new OpenLayers.Layer.WMS("Maiz Semilla Mejorada Cosecha 2008",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'municipios_maiz_2008_SuperficieCosechadaSM',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                ),
				new OpenLayers.Layer.WMS("Frijol Superficie Cosechada por Depto",
                    "http://localhost:8080/geoserver/cultivoGis/wms",
                    {
                        layers: 'municipios_frijol_2008_SuperficieCosechada',
                        format: 'image/png',
                        transparent: true
                    },
                    {
                        singleTile: true
                    }
                )
            ]
        });

        var store = Ext.create('Ext.data.TreeStore', {
            model: 'GeoExt.data.LayerTreeModel',
            root: {
				
                plugins: [{
                    ptype: "gx_layercontainer",
                    loader: {
                        createNode: function(attr) {
                            // add a WMS legend to each node created
                            attr.component = {
                                xtype: "gx_wmslegend",
                                layerRecord: mapPanel.layers.getByLayer(attr.layer),
                                showTitle: false,
                                // custom class for css positioning
                                // see tree-legend.html
                                cls: "legend"
                            };
                            return GeoExt.tree.LayerLoader.prototype.createNode.call(this, attr);
                        }
                    }
                }]
            }
        });

        var tree = Ext.create('GeoExt.tree.Panel', {
            layout: "fit",
			region: "east",
            title: "Capas",
			autoHeight: 3500,
            width: 250,
            scrollable: true,
			collapsible: true,
            collapseMode: "mini",
            autoScroll: true,
            viewConfig: {
                plugins: [{
                    ptype: 'treeviewdragdrop',
                    appendOnly: false
                }]
            },
            store: store,
            rootVisible: false,
            lines: false,
			renderTo: Ext.getBody()
        });

        Ext.create('Ext.Viewport', {
            layout: "fit",
            hideBorders: true,
            items: {
                layout: "border",
                items: [
                    mapPanel, tree, {
                        contentEl: desc,
                        region: "west",
                        width: 250,
                        bodyStyle: {padding: "5px"}
                    }
                ]
            }
        });
    }
});
