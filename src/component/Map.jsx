import React, { useState, useEffect, useRef, use } from 'react';
import { MapContainer, TileLayer, Marker, Popup, useMap } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import 'leaflet-routing-machine/dist/leaflet-routing-machine.css';
import L, { Icon } from 'leaflet';
// import 'leaflet-routing-machine';
require('leaflet-routing-machine');

// Fix for default icon in Leaflet
// delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
  iconUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon.png',
  iconRetinaUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon-2x.png',
  shadowUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-shadow.png',
});

// Routing Component
function Routing({ start, destination, isFirstRender }) {
  const map = useMap();
  const routingControlRef = useRef(null);
  // let control = null;

  useEffect(() => {
    if (!map || !start || !destination) return;
    // Remove the existing routing control if it exists
    // console.log(control);
    // routingControlRef.current = control;
    if (routingControlRef.current) {
      console.log('removing routing control');
      console.log('routing kiem tra kieu du lieu:', routingControlRef.current);
      try {
        routingControlRef.current.remove(); // Correctly remove the routing control
      } catch (error) {
        console.error('Failed to remove routing control:', error);
      }
    } else {
      console.warn('Routing control reference was not a valid routing control instance.');
    }
    routingControlRef.current = null;
    // Create a new routing control
    routingControlRef.current = L.Routing.control({
      waypoints: [L.latLng(start), L.latLng(destination)],
      routeWhileDragging: true,
      showAlternatives: false,
    }).addTo(map);

    return () => {
      if (routingControlRef.current instanceof L.Routing.Control) {
        try {
          routingControlRef.current.remove();
        } catch (error) {
          console.error('Error cleaning up routing control:', error);
        }
      } else {
        console.warn('Routing control reference was not a valid instance during cleanup.');
      }
      routingControlRef.current = null;
    };
  }, [map, start, destination, isFirstRender]);

  return null;
}

function Map() {
  const [location, setLocation] = useState(null);
  const [error, setError] = useState(null);
  const [selectedDestination, setSelectedDestination] = useState(null);
  const [countFindRouting, setCountFindRouting] = useState(-1);

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

  const handlePopupClick = geocode => {
    setSelectedDestination(geocode);
    // setIsFirstSearchRouting(false);
  };
  useEffect(() => {
    if (selectedDestination) {
      setCountFindRouting(prev => prev + 1);
    }
  }, [selectedDestination]);
  useEffect(() => {
    console.log(countFindRouting, countFindRouting === 0);
  }, [countFindRouting]);

  return (
    <div style={{ height: '100vh' }}>
      <h1>Interactive Routing Map</h1>
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
              <Popup className="bg-white">
                {marker.popup}
                <br />
                <button onClick={() => handlePopupClick(marker.geocode)}>Find Route</button>
              </Popup>
            </Marker>
          ))}
          {/* Add Routing */}
          {selectedDestination && <Routing start={location} destination={selectedDestination} />}
        </MapContainer>
      ) : (
        <p>Fetching your location...</p>
      )}
    </div>
  );
}

export default Map;
