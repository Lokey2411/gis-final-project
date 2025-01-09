import React from 'react';
import { MapContainer, TileLayer } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';

const MapComponent = () => {
  return (
    <MapContainer center={[0, 0]} zoom={4} style={{ height: '500px', width: '500px' }}>
      <TileLayer
        url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        maxZoom={22}
        minZoom={4}
        noWrap
      />
    </MapContainer>
  );
};

export default MapComponent;
