import React, { useEffect, useState } from "react";
import { MapContainer, TileLayer, GeoJSON } from "react-leaflet";


function MapApp() {
  // const [geoData, setGeoData] = useState(null);

  // useEffect(() => {
  //   fetch("http://your-server-url/fetch_data.php")
  //     .then((response) => response.json())
  //     .then((data) => {
  //       const geoJSON = {
  //         type: "FeatureCollection",
  //         features: data.map((item) => ({
  //           type: "Feature",
  //           geometry: JSON.parse(item.geometry),
  //           properties: {
  //             name: item.name,
  //           },
  //         })),
  //       };
  //       setGeoData(geoJSON);
  //     })
  //     .catch((error) => console.error("Error fetching data:", error));
  // }, []);

  return (
    <MapContainer center={[0, 0]} zoom={2} style={{ height: "100vh" }}>
      <TileLayer
        url="https://osm.org/go/4dte91prl-"
        attribution="&copy; OpenStreetMap contributors"
      />
      {/* {geoData && <GeoJSON data={geoData} />} */}
    </MapContainer>
  );
}

export default MapApp;
