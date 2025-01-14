import React, { useState, useEffect, useRef, useMemo } from 'react';
import { MapContainer, TileLayer, Marker, Popup, useMap } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import 'leaflet-routing-machine/dist/leaflet-routing-machine.css';
import L, { Icon, map, marker } from 'leaflet';
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
  const [center, setCenter] = useState([]);
  const [selectedDestination, setSelectedDestination] = useState(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [watchingDetailItem, setWatchingDetailItem] = useState({});
  const { data } = useData('heritageSites.php');

  const MarkerData = useMemo(() => {
    if (data && data.length > 0) {
      const markers = data.map(item => ({
        ...item,
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

  const handlePopupClick = item => {
    setWatchingDetailItem(item);
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
          <MapContainer
            center={center && center.length > 0 ? center : location}
            zoom={13}
            className="flex-1 h-screen"
            key={center.toString()}
          >
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
                    <button onClick={() => handlePopupClick(marker)}>Find Route</button>
                  </Popup>
                </Marker>
              ))
            ) : (
              <p>No marker data available</p>
            )}
            {/* Add Routing */}
            {watchingDetailItem && watchingDetailItem.geocode && (
              <Routing start={location} destination={watchingDetailItem.geocode} />
            )}
          </MapContainer>
        ) : (
          <p>Fetching your location...</p>
        )}
        <div className="flex-1 h-screen">
          <div className=" flex justify-center h-fit gap-2 items-center">
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
          {filteredMarkers.length > 0 ? (
            <div className="grid grid-cols-3 gap-6 max-h-full overflow-auto border border-orange-700 p-3 mt-4 mx-6 rounded-md">
              {filteredMarkers.map((item, index) => (
                <div
                  key={index}
                  className="rounded-md px-2 py-3 bg-gray-500 w-full cursor-pointer select-none text-white"
                  onClick={() => {
                    setCenter(item.geocode);
                    setSearchQuery('');
                    setWatchingDetailItem(item);
                  }}
                >
                  {item.popup}
                </div>
              ))}
            </div>
          ) : watchingDetailItem && watchingDetailItem.name ? (
            <div className="size-full m-6 border overflow-auto p-3">
              <h1 className="text-2xl text-center font-bold">{watchingDetailItem.name}</h1>
              <p>{watchingDetailItem.description}</p>
              <p>
                <b>Vé vào cửa: </b>
                {watchingDetailItem.ticket_price}
              </p>
              <p>Được công nhận là di sản văn hóa vào năm {watchingDetailItem.year}</p>
              <a href={watchingDetailItem.details_url}>Xem chi tiết</a>
            </div>
          ) : (
            <div className="size-full m-6 border overflow-auto p-3">
              <h1 className="text-2xl text-center font-bold">No Data</h1>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export default Map;
