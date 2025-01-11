import './App.css';
import DataFake from './component/DataFake';
import MapComponent from './component/Map';
import 'leaflet/dist/leaflet.css';

function App() {
  return (
    <div className="size-full">
      <MapComponent/>
      {/* <DataFake/> */}
    </div>
  )
}

export default App;
