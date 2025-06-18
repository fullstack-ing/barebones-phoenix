# Bare Bones Phoenix

This is what it takes to create a bare bones starting point with phoenix and liveview

[#1](https://github.com/fullstack-ing/barebones-phoenix/commit/982e233b8aabb0da472b3a4b26dc9d80db278e32)
```
mix phx.new bare_bones --no-assets --no-dashboard --database sqlite3
```

[#2](https://github.com/fullstack-ing/barebones-phoenix/commit/540afdca3d0414633d4cc47c349c37e0c852a1a2)
rm priv/static/assets/default.css


[#3](https://github.com/fullstack-ing/barebones-phoenix/commit/5b7e9360dceef2872b14a57021bd16f17a3307f4)
drop all contents of home.html.heex

[#4](https://github.com/fullstack-ing/barebones-phoenix/commit/de3e4296165a109772f4d1b0c0ed12b364abbb29)
Refactor Layouts.app, drop most of it's content

[#5](https://github.com/fullstack-ing/barebones-phoenix/commit/9ae63711c9ce1fbd9319d87895c39cbe9e70e14e)
Drop heroicon

[#6](https://github.com/fullstack-ing/barebones-phoenix/commit/a66020f0eb9d5c2a6176bbecae59d15566c2832a)
Run phx.gen.auth with liveview

[#7](https://github.com/fullstack-ing/barebones-phoenix/commit/e7cded0af776a859f6ee4be60b1798985d5b15ef)
Drop more generated hero icon stuff from phx.gen.auth

[#8](https://github.com/fullstack-ing/barebones-phoenix/commit/6c4de359094cb3cc57716a9774c33a6d867991f1)
Drop generated tailwind class from phx.gen.auth

[#9](https://github.com/fullstack-ing/barebones-phoenix/commit/58b2f69a3e5a28565c458e16392b767d2388e8aa)
Add npm, esbuild, ignore static assets and node_modules

[#10](https://github.com/fullstack-ing/barebones-phoenix/commit/c38e8097f6748ec5f805cc150d26758707b23491)
Add phoenix html for link actions, add liveview and socket

[#11](https://github.com/fullstack-ing/barebones-phoenix/commit/9ec714dd3663f06d42ecf92a267735b56f2d68e9)
Drop style link for default.css

[#12](https://github.com/fullstack-ing/barebones-phoenix/commit/1297d3d98cdb176a0bd7726709592e3cfd81fa76)
Run phx.gen.live Posts

[#13](https://github.com/fullstack-ing/barebones-phoenix/commit/43ffaf751bab861a47cb9cb36751754cbddbc102)
Drop more generated hero icons stuff

[#14](https://github.com/fullstack-ing/barebones-phoenix/commit/8584dd806ec80d9b50bf427217d096d86eff96c6)
Drop all tailwind css classes from CoreComponents
