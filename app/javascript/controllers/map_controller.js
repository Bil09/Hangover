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
        const popup = new mapboxgl.Popup().setHTML(marker.info_window)
        // Create a HTML element for your custom marker
        const customMarker = document.createElement("div")
        customMarker.className = "marker"
        customMarker.style.backgroundImage = `url('${marker.image_url}')`
        customMarker.style.backgroundSize = "contain"
        customMarker.style.width = "15px"
        customMarker.style.height = "20px"

        // Pass the element as an argument to the new marker
        new mapboxgl.Marker(customMarker)
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(this.map)
      })
    }
}
