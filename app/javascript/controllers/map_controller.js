import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    static values = {
        apiKey: String,
        markers: Array,
    };

    connect() {
        mapboxgl.accessToken = this.apiKeyValue;

        this.map = new mapboxgl.Map({
            container: this.element,
            style: "mapbox://styles/riptagon/clb3favsa000415qvnw2p2sux",
        });
        this.addMarkersToMap();
    }

    addMarkersToMap() {
        this.markersValue.forEach((marker) => {
            new mapboxgl.Marker().setLngLat([marker.lng, marker.lat]).addTo(this.map);
        });
    }
}