This SDL2 module is intended for use with flatpaks that rely on SDL2. 

If your app or game wants to use a newer version of SDL2, or default to Wayland, you can use this. Set the following permissions for using Wayland:

```
socket=wayland
socket=fallback-x11
share=ipc
```
### PLEASE ADD LIBDECOR AS A SUBMODULE AS WELL
Without libdecor, SDL2 applications don't have any window decorations on Wayland compositors that don't implement SSDs, so they're effectively unusable.
Add it the same as you would SDL2.
