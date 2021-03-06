import React, { useState, Suspense } from "react";
import { Canvas, useFrame, useLoader } from "@react-three/fiber";
import { OrbitControls, Stars, Sky, Text, Stats } from "@react-three/drei";

import * as THREE from "three";
import { TextureLoader } from "three";
import DayMap from "./8k_earth_daymap.jpg";
import NormalMap from "./8k_earth_normal_map.jpg";
import SpecularMap from "./8k_earth_specular_map.jpg";
import CloudsMap from "./8k_earth_clouds.jpg";
import DayWithCloud from "./DayWithCloud.jpg";
export function Earth(props) {
  const [colorMap, normalMap, specularMap, cloudsMap] = useLoader(
    TextureLoader,
    [DayMap, NormalMap, SpecularMap, CloudsMap]
  );

  return (
    <>
      <ambientLight intensity={1} />
      <pointLight position={[-10, 0, -20]} />
      <Sky
        distance={45000}
        sunPosition={[5, -5, -4]}
        inclination={0}
        azimuth={0.25}
      />
      <Stars
        radius={100}
        depth={50}
        count={5000}
        factor={4}
        saturation={0}
        fade
      >
        <mesh position={[0, 0.7, 0]}>
          <Text
            scale={[3, 3, 3]}
            color="pink"
            castShadow
            // default
          >
            Hi
          </Text>
        </mesh>
      </Stars>
      <mesh>
        <sphereGeometry args={[1.003, 32, 32]} />
        <meshPhongMaterial
          map={cloudsMap}
          opacity={0.2}
          depthWrite={true}
          transparent={true}
          side={THREE.DoubleSide}
        />
      </mesh>

      <mesh>
        <sphereGeometry args={[1, 32, 32]} />
        <meshPhongMaterial specular={specularMap} />
        <meshStandardMaterial
          day={normalMap}
          map={colorMap}
          metalness={0.4}
          roughness={0.7}
        />

        <OrbitControls
          enableRotate={true}
          enableZoom={true}
          rotateSpeed={0.5}
          enablePan={true}
          panSpeed={0.4}
          autoRotate={true}
          zoomSpeed={0.4}
        />
      </mesh>
    </>
  );
}
// function Loads() {
//   return (
//     <Text
//       scale={[10, 10, 10]}
//       color="red" // default
//     >
//       HELLO WORLD
//     </Text>
//   );
// }
const Three = () => {
  return (
    <div
      style={{
        width: "100%",
        height: "100%",
        display: "flex",
        textAlign: "center",
        justifyContent: "center",
      }}
    >
      <div
        style={{
          height: "105%",
          width: "71%",
          // position: "absolute",
          zIndex: "1",
          left: "0px",
        }}
      >
        <Canvas colorManagement camera={{ fov: 40 }}>
          <Suspense fallback={null}>
            <Earth />
          </Suspense>
        </Canvas>
      </div>
      <div
        style={{
          height: "105%",
          width: "30%",
          // position: "absolute",
          zIndex: "1",
          display: "grid",
          textAlign: "center",
        }}
        className="left"
      >
        <h3
          style={{
            height: "20%",
            color: "black",
            // color: "grey",
            marginTop: "2rem",
            letterSpacing: "3px",
          }}
        >
          Let's Go Travel
        </h3>
        <h1 style={{ color: "white", fontSize: "60px", letterSpacing: "3px" }}>
          TripIt
        </h1>
      </div>
    </div>
  );
};
export default Three;

const Loading = () => {
  return <p style={{ color: "red" }}>Loading...</p>;
};
