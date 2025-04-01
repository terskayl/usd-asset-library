import * as THREE from "three";
import { OrbitControls } from "three/examples/jsm/controls/OrbitControls.js";
import { GLTFLoader } from "three/examples/jsm/loaders/GLTFLoader.js";

export function showViewer() {
  // Use the existing container
  const container = document.getElementById("usd-viewer-container");
  container.style.display = "block";

  const scene = new THREE.Scene();
  scene.background = new THREE.Color(0xf0f0f0);

  const camera = new THREE.PerspectiveCamera(
    75,
    container.clientWidth / container.clientHeight,
    0.1,
    1000
  );
  camera.position.z = 4;

  const renderer = new THREE.WebGLRenderer({ antialias: true });
  renderer.setSize(container.clientWidth, container.clientHeight);
  renderer.setAnimationLoop(animate);
  container.appendChild(renderer.domElement);

  const controls = new OrbitControls(camera, renderer.domElement);
  controls.update();

  const ambientLight = new THREE.AmbientLight(0xffffff);
  scene.add(ambientLight);

  const directionalLight = new THREE.DirectionalLight(0xffffff);
  directionalLight.position.set(10, 10, 20).normalize();
  scene.add(directionalLight);

  const pointLight = new THREE.PointLight(0xffffff, 5, 1);
  pointLight.position.set(10, 10, 20); // Set the position of the light
  scene.add(pointLight);

  const loader = new GLTFLoader();

  loader.load(
    "/static/gltf/twin_pots.gltf",
    // called when the resource is loaded
    function (gltf) {
      scene.add(gltf.scene);

      gltf.animations; // Array<THREE.AnimationClip>
      gltf.scene; // THREE.Group
      gltf.scenes; // Array<THREE.Group>
      gltf.cameras; // Array<THREE.Camera>
      gltf.asset; // Object
    },
    // called while loading is progressing
    function (xhr) {
      console.log((xhr.loaded / xhr.total) * 100 + "% loaded");
    },
    // called when loading has errors
    function (error) {
      console.log("An error happened");
    }
  );

  function onWindowResize() {
    camera.aspect = container.clientWidth / container.clientHeight;
    camera.updateProjectionMatrix();
    renderer.setSize(container.clientWidth, container.clientHeight);
  }

  function animate() {
    controls.update();
    renderer.render(scene, camera);
  }

  window.addEventListener("resize", onWindowResize);
}

export function closeViewer() {
  // Clean up the viewer
  const container = document.getElementById("usd-viewer-container");

  container.style.display = "none";
  while (container.firstChild) {
    container.removeChild(container.firstChild);
  }
}
