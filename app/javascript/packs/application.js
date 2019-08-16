import "bootstrap";
import './application.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initFlatPickr } from '../plugins/booking';

initMapbox();
initAutocomplete();
initFlatPickr();