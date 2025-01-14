import React, { useState, useEffect, useRef, useMemo } from 'react';
import { MapContainer, TileLayer, Marker, Popup, useMap } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import 'leaflet-routing-machine/dist/leaflet-routing-machine.css';
import L, { Icon, marker } from 'leaflet';
import { useData } from './../hook/useData';
require('leaflet-routing-machine');

// Fix for default Leaflet icons
L.Icon.Default.mergeOptions({
  iconUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon.png',
  iconRetinaUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon-2x.png',
  shadowUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-shadow.png',
});

// Routing Component
function Routing({ start, destination }) {
  const map = useMap();
  const routingControlRef = useRef(null);

  useEffect(() => {
    if (!map || !start || !destination) return;

    // Remove existing routing control if it exists
    if (routingControlRef.current) {
      map.removeControl(routingControlRef.current); // Safely remove the routing control
    }

    // Create a new routing control
    routingControlRef.current = L.Routing.control({
      waypoints: [L.latLng(start), L.latLng(destination)],
      routeWhileDragging: true,
      showAlternatives: false,
    }).addTo(map);

    // Cleanup on component unmount
    return () => {
      if (routingControlRef.current) {
        map.removeControl(routingControlRef.current); // Ensure proper cleanup
      }
    };
  }, [map, start, destination]);

  return null;
}

const DEFAULT_DATA = [
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

function Map() {
  const [location, setLocation] = useState(null);
  const [error, setError] = useState(null);
  const [selectedDestination, setSelectedDestination] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');
  const { data } = useData('heritageSites.php');

  const MarkerData = useMemo(() => {
    if (data && data.length > 0) {
      const markers = data.map(item => ({
        geocode: JSON.parse(item.geom).coordinates.reverse(),
        popup: item.name,
      }));
      console.log('MarkerData:', markers);
      return markers;
    }
    console.log('Using default MarkerData:', DEFAULT_DATA);
    return DEFAULT_DATA;
  }, [data]);

  // Custom Icon
  const customIcon = new Icon({
    iconUrl: require('../Assets/pin.png'),
    iconSize: [38, 38],
  });

  // Get user location
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
  };
  const filteredMarkers = useMemo(() => {
    return MarkerData.filter(marker => marker.popup.toLowerCase().includes(searchQuery.toLowerCase()));
  }, [MarkerData, searchQuery]);
  return (
    <div>
      <div className="flex justify-center my-4">
        <h1 className="text-3xl ">Heritages Location</h1>
      </div>
      <div className="flex justify-between">
        {error && <p style={{ color: 'red' }}>{error}</p>}
        {location ? (
          <MapContainer center={location} zoom={13} className="w-1/2 h-screen">
            <TileLayer
              url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
              attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            />
            {/* User Location Marker */}
            <Marker position={location} icon={customIcon}>
              <Popup>You are here!</Popup>
            </Marker>
            {/* Render Markers from MarkerData */}
            {MarkerData && MarkerData.length > 0 ? (
              MarkerData.map((marker, index) => (
                <Marker key={index} position={marker.geocode} icon={customIcon}>
                  <Popup>
                    {marker.popup}
                    <br />
                    <button onClick={() => handlePopupClick(marker.geocode)}>Find Route</button>
                  </Popup>
                </Marker>
              ))
            ) : (
              <p>No marker data available</p>
            )}
            {/* Add Routing */}
            {selectedDestination && <Routing start={location} destination={selectedDestination} />}
          </MapContainer>
        ) : (
          <p>Fetching your location...</p>
        )}
        <div className="w-1/2 flex justify-center h-fit gap-2 items-center">
          <label htmlFor="">Location : </label>
          <input
            className="border border-orange-700 rounded-md shadow-md p-1"
            type="text"
            id="search"
            placeholder="Enter Location"
            value={searchQuery}
            onChange={e => setSearchQuery(e.target.value)}
          />
        </div>
      </div>
    </div>
  );
}

export default Map;
