const CACHE = "lungsafe-v1";
const ASSETS = [
  "./",
  "./index.html",
  "./manifest.webmanifest",
  "./assets/img/logo_lungsafe_dark.png"
];
self.addEventListener("install", (e) => { e.waitUntil(caches.open(CACHE).then((c) => c.addAll(ASSETS))); });
self.addEventListener("activate", (e) => { e.waitUntil(caches.keys().then((keys) => Promise.all(keys.map((k) => (k !== CACHE && caches.delete(k)))))); });
self.addEventListener("fetch", (e) => { e.respondWith(caches.match(e.request).then((r) => r || fetch(e.request).catch(() => caches.match("./index.html")))); });
