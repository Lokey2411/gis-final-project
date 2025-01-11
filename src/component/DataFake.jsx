import React, { useState, useEffect } from 'react';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import L from 'leaflet';
import 'leaflet-routing-machine';

// Fix for default icon in Leaflet
delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
  iconUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon.png',
  iconRetinaUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon-2x.png',
  shadowUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-shadow.png',
});

function DataFake() {
  const [location, setLocation] = useState(null);
  const [error, setError] = useState(null);

  const MarkerData = {
    geocode: [21.037013, 105.837505], // Destination coordinates
    popup: 'Dinh doc lap',
  };

  useEffect(() => {
    // Check if Geolocation is available
    if ('geolocation' in navigator) {
      navigator.geolocation.getCurrentPosition(
        position => {
          const { latitude, longitude } = position.coords;
          setLocation([latitude, longitude]);
        },
        err => {
          setError('Unable to retrieve your location');
          console.error(err);
        },
      );
    } else {
      setError('Geolocation is not supported by your browser.');
    }
  }, []);

  useEffect(() => {
    if (location) {
      // Add routing control to the map
      const map = L.map('map'); // Access Leaflet's map instance
      L.Routing.control({
        waypoints: [
          L.latLng(location[0], location[1]), // User's current location
          L.latLng(MarkerData.geocode[0], MarkerData.geocode[1]), // Destination
        ],
        routeWhileDragging: true,
        showAlternatives: true,
        altLineOptions: { styles: [{ color: 'blue', opacity: 0.7 }] },
      }).addTo(map);
    }
  }, [location]);

  return (
    <div style={{ height: '100vh' }}>
      <h1>Route from My Location to Destination</h1>
      {error && <p style={{ color: 'red' }}>{error}</p>}
      {location ? (
        <MapContainer id="map" center={location} zoom={13} style={{ height: '90vh', width: '100%' }}>
          <TileLayer
            url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          />
          {/* User Location */}
          <Marker position={location}>
            <Popup>You are here!</Popup>
          </Marker>
          {/* Destination Marker */}
          <Marker position={MarkerData.geocode}>
            <Popup>{MarkerData.popup}</Popup>
          </Marker>
        </MapContainer>
      ) : (
        <p>Fetching your location...</p>
      )}
    </div>
  );
}

export default DataFake;
