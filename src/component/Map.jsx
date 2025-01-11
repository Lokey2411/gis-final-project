import React, { useState, useEffect } from 'react';
import { MapContainer, TileLayer, Marker, Popup, Polyline } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import L, { Icon } from 'leaflet';
import { useData } from './../hook/useData';

// // Fix for default icon in Leaflet (if markers are missing icons)
// delete L.Icon.Default.prototype._getIconUrl;
// L.Icon.Default.mergeOptions({
//   iconUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon.png',
//   iconRetinaUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon-2x.png',
//   shadowUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-shadow.png',
// });

function App() {
  const [location, setLocation] = useState(null);
  const [error, setError] = useState(null);
  const [distances, setDistances] = useState([]);
  // Marker Data
  const { data } = useData('searchLand.php?ownerId=1');
  const MarkerData = [
    {
      geocode: [21.037013, 105.837505],
      popup: 'Dinh doc lap',
    },
    {
      geocode: [21.036898, 105.834667],
      popup: 'Lang chu tich',
    },
    {
      geocode: [21.046449, 105.803348],
      popup: 'TH TrueMilk Hoang Quoc Viet',
    },
  ];

  // Custom Icon
  const customIcon = new Icon({
    iconUrl: require('../Assets/pin.png'),
    iconSize: [38, 38],
  });

  // Get User Location
  useEffect(() => {
    if ('geolocation' in navigator) {
      navigator.geolocation.getCurrentPosition(
        position => {
          const { latitude, longitude } = position.coords;
          const userLocation = [latitude, longitude];
          setLocation(userLocation);

          // Calculate distances to markers
          const calculatedDistances = MarkerData.map(marker => {
            const markerLatLng = L.latLng(marker.geocode[0], marker.geocode[1]);
            const userLatLng = L.latLng(latitude, longitude);
            const distance = userLatLng.distanceTo(markerLatLng); // in meters
            return {
              popup: marker.popup,
              distance: (distance / 1000).toFixed(2), // Convert to kilometers
              geocode: marker.geocode,
            };
          });
          setDistances(calculatedDistances);
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
    if (data) {
      // data geom:
      const geomData = data.map(item => JSON.parse(item.geom));
      console.log(geomData);
    }
  });
  if (!data) return <h1 className="absolute inset-0 grid place-items-center">Loading ...</h1>;
  return (
    <div style={{ height: '100vh' }}>
      <h1>Show Location Random</h1>
      {error && <p style={{ color: 'red' }}>{error}</p>}
      {location ? (
        <MapContainer center={location} zoom={13} style={{ height: '90vh', width: '100%' }}>
          <TileLayer
            url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
            attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          />
          {/* User Location Marker */}
          <Marker position={location} icon={customIcon}>
            <Popup>You are here!</Popup>
          </Marker>
          {/* Render Markers from MarkerData */}
          {MarkerData.map((marker, index) => (
            <Marker key={index} position={marker.geocode} icon={customIcon}>
              <Popup>
                {marker.popup}
                <br />
                Distance: {distances[index]?.distance} km
              </Popup>
            </Marker>
          ))}
          {/* Draw Paths */}
          {distances.map((distance, index) => (
            <Polyline key={index} positions={[location, distance.geocode]} color="blue" weight={3} />
          ))}
        </MapContainer>
      ) : (
        <p>Fetching your location...</p>
      )}
    </div>
  );
}

export default App;
