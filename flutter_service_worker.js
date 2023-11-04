'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "f3d3df9312b051d387dbedda5aa22014",
".git/config": "15a9619de582d2e2c3bc0e9b605d67ff",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "4cc7483a1485e854b168a93528049a16",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "cdc9ceb1b5d5cb65a3ae06237314f6bb",
".git/logs/refs/heads/master": "19ecd0ad1c2c96aa06eb54152d7137bb",
".git/logs/refs/remotes/origin/master": "c408250971dc9453e6cf5b9e72062a20",
".git/objects/01/bcca7d1c23955f7aeda6a269b1b7f540802096": "635a6822e2a56f7f333d54c66b0234db",
".git/objects/02/187490180efd0865e45b92d57ada94b68363ae": "c05980c95b1cb7ca1faa34ae4c4fff09",
".git/objects/07/f3da5220fadfb302464946c52c0c04f363b42c": "8cc05e8ccab4932872a87ee9358397dd",
".git/objects/0d/d68f360843dd0e01085e0a0bcddcf373b557f8": "e140a4b707e03c183f98e00cefdfc064",
".git/objects/0e/711733d37be73aebddbc6cf82ee8187ea81230": "342c81db5906f5fecabb8b98081bb826",
".git/objects/1b/5d2c0af3d37e8c1cb10cd2073f4784ce318f08": "0942a62133bf1ee46f0a0cc185e5c9d0",
".git/objects/30/31e5adca1c02cfa83b160f6804e5e3aed6a619": "668548ea94800b27bbc086f0da9f9c17",
".git/objects/30/6dac5ed8d40c1a67b51105b2c459a386061bc3": "0a17491a92c8dee602194b7eabdb73a1",
".git/objects/31/d2b2d98cceba41595471499e0324004145c084": "9f1a0ef3325f42f4c4055833366a236c",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/46/463b50ae55bdeda3031768ddfff7d8eb8247aa": "dcc83febbf32f5f3e27bcdd21f73f14d",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4c/a2a7c226d2c3e26f0b9dde74214486d0baa896": "734657b1f27c72d07dd9e52a25c020c1",
".git/objects/50/1211d85a9368b5b7490beb0b5641adbcd60808": "4d89e7af7f44412a7263c632c4cceab3",
".git/objects/53/7807567919e88db2866b7825339c57e94c24d8": "970aec5149a3dbe9370a9dc982cdd022",
".git/objects/54/b8329e109e055aea9f282cdd561a5c95dd9554": "72ec4916dd4df0dd2ff4927b37e1942b",
".git/objects/5f/198d23d26e24661eeb8f55848054b3928fd952": "698fb0df2f845cdd226e52c746cd65db",
".git/objects/74/d74fc0a936e9b3e9f06cb90abc46766b3a0d70": "0695b9bd58208fc20225695bbb1eca6b",
".git/objects/7f/3ca3909ecc7db3baf76bed353257e6b6799173": "fb639f335d986eee0770a1d6c21ae3c2",
".git/objects/81/c40ee961aa997e0b0226290e87a66995746a38": "83cb4476f0c8c1804e35ea2db7330dcf",
".git/objects/83/0e3d19e7f2ff19bbb4b955e3a38e3328837e12": "4412f19a8aebd49e1c2fb821b641e232",
".git/objects/85/9c32ca4780586f64b21aca8356ee073b2e155b": "a8a7711c7cf5fbcddc1e5c64e45ac2c5",
".git/objects/88/cd9b5e73550376edbdcdaad9339f1790bc84d5": "33c6e0de80750ccb823b8fd7491ca0cf",
".git/objects/96/5f268e91b7f468ea4ded85a8f2abcddfe1f5a9": "6cde620475753acf951a3fbb6b42aca1",
".git/objects/98/1258f212602e619a7051495141bdb0a7290b40": "b7d3646326c1863065bd0939fa0d1ee9",
".git/objects/a6/56594facc407c9afee90e5dd76203b746f512a": "82aadce60b31096380fc4e07b4e0bce1",
".git/objects/a8/234e78324011301c932efde8dd789fba10495a": "5ad9ca983e505191e13f526cf3be6ade",
".git/objects/b1/b256bca12b0e350581dd2800cb3487e2fa2bba": "8e32d116df4c585357f38d1034d0a146",
".git/objects/b7/e12cc86fde3ce08778c064734dc8d5fea4e4bf": "c894ceb1b93475c5e97156fbbeaf2054",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/bb/bca20636e130772d2ccbcabb4aa4213fbbc4fe": "16d9433adb9440dd6a8da4b1a35f3077",
".git/objects/c1/44f802d533ae6446bf582772d44a056c110415": "7a14426bd8a95275629d841776190111",
".git/objects/c3/e7d8989b59ab77b7182e32e25e98899ed6ae79": "2193b91f8e85a11fbe819b877ea54cf1",
".git/objects/c4/33fa50b5114a65c98d844a88383331c0333d4e": "88eac77929bee802270c84c2e6b591a1",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d5/b54bd4a898b373f82bb1fa52b9580e7a976e3e": "943e27e1d359e2bc22daf20c70287c19",
".git/objects/d7/2c11112c7cb4e2ce754bc41470f9b829a2d00a": "d7280a766a5d6033f187d874a92b5ad6",
".git/objects/da/a8620ebd9bada24a4d50b64c53c41420df4622": "90a4a8e59c2a432546933c62370ea436",
".git/objects/df/7d2dcb89ab89da87467c0e1059b38c8d8f9296": "a44162ff357b024e4638ab18a9bb01c7",
".git/objects/e4/a034ce3f2439398765cca835c54d54903f2714": "a2d255f3f3fb58125d65cff62f8558a1",
".git/objects/e6/816d2ead715b9bbcede8b991b5a4538d91fc46": "82f354db21ce7861870c39519a828fa5",
".git/objects/e6/b745f90f2a4d1ee873fc396496c110db8ff0f3": "2933b2b2ca80c66b96cf80cd73d4cd16",
".git/objects/e7/7d45023af0089c615f5fc762c3aa7ab8d4af9a": "84516817916b836ff5a69245d61f9341",
".git/objects/e7/c1d61279c25bd1234a25c4b5a1019fbf12eaaf": "c50a3e55382b205b0847079056bcef35",
".git/objects/e8/55dc987b0db3ccd24a8869a087233a0e124f27": "9b242467f4dfe05ce7d2727a68a1ea66",
".git/objects/fc/de1bb3df8c330568f07ef326d43d8ae3562897": "6e5bf2450330342c243afc3723b9c27e",
".git/refs/heads/master": "1bef1805fcf4d3439d1622666b15d830",
".git/refs/remotes/origin/master": "1bef1805fcf4d3439d1622666b15d830",
"assets/AssetManifest.bin": "36031d0a9c300597ea89d0c3fb799a13",
"assets/AssetManifest.json": "e34e6ea563209cbdc68a3abe6ed91fbb",
"assets/assets/animations/weather_missing.json": "d96b96cdbabe80a7dcff158def2be6cd",
"assets/assets/animations/weather_rain.json": "ec093b21486c858db3e766e7cbf888c7",
"assets/assets/animations/weather_shower.json": "aa747542cd178ebb84dd3e1b8b3b83a7",
"assets/assets/animations/weather_snow.json": "7f24b997f38e2cc977fb6a8f1eb516c9",
"assets/assets/animations/weather_sunny.json": "b047ac399b6f9cff4ba49f864080f879",
"assets/assets/animations/weather_thunder.json": "e2b0f3bb09ed18b7676b6551bfb0f61d",
"assets/assets/animations/weather_windy.json": "edcbcfc02d626a3ae8f2425dab383007",
"assets/assets/icons/weather_app.png": "2485feb60eaa4194177582c3f0478fc8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "3143da3b6820bd21cf9f1e5371daca70",
"assets/NOTICES": "966c952ab78a4edaaa321b68ebf33970",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "714f39fa256961e62a5583fc3b08fef5",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ad07ca80d5b6876d4673e1f730499490",
"icons/Icon-512.png": "896bd35d7cc39413fe1ad739f2deccec",
"icons/Icon-maskable-192.png": "ad07ca80d5b6876d4673e1f730499490",
"icons/Icon-maskable-512.png": "896bd35d7cc39413fe1ad739f2deccec",
"index.html": "f08cbbaa9ca9a78f6db3a6b3dc46ddee",
"/": "f08cbbaa9ca9a78f6db3a6b3dc46ddee",
"main.dart.js": "23947aed7a3a29e45d16c9766d6d228a",
"manifest.json": "6b4dca1a54ad666adeac6380050bf8df",
"version.json": "23e9d24d5b36279cbfede1d4ebb467c0"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
