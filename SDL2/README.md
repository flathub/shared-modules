This SDL2 module is intended for use with flatpaks that rely on SDL2. 

This doesn't include libdecor, instead you should manually reference it as another submodule.

If your app or game wants to use a newer version of SDL2, or default to Wayland, you can use this, and set the following permissions:

```
socket=wayland
socket=fallback-x11
share=ipc
```
