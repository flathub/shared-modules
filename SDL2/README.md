This SDL2 module is intended for use with flatpaks that rely on SDL2. 

It includes Libdecor (from the libdecor shared module), so you don't need to manually bundle it. 

If your app or game wants to use a newer version of SDL2, or default to Wayland, you can use this, and set the following permissions:

```
socket=wayland
socket=fallback-x11
share=ipc
```
