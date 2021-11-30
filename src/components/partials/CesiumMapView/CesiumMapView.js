import { WebMapServiceImageryProvider, createWorldTerrain } from 'cesium';
import { Viewer, ImageryLayer, ImageryLayerCollection, Entity, Scene} from 'resium';
import { baseMap } from 'config/baseMap.config';
import './CesiumMapView.scss';

function CesiumMapView({show}) {
    const {showLayer} = show;

    const terrainProvider = createWorldTerrain();
    const imageryProvider = new WebMapServiceImageryProvider({
            url: baseMap.url,
            layers: baseMap.layer
        });

    return (
        <Viewer style={{position: "absolute", top:30, left:0, right:0, bottom:0}} terrainProvider={terrainProvider}>
            <Scene />
            <Entity />
            <ImageryLayerCollection>
                <ImageryLayer imageryProvider={imageryProvider} show={showLayer} />
            </ImageryLayerCollection>
        </Viewer>
    );
};

export default CesiumMapView;