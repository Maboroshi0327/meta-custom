# meta-custom

This is a custom Yocto layer for project-specific modifications.

## Layer Contents

This layer contains:

*   **recipes-apps**: Custom applications
    *   `hello`: A sample Hello World application (Reference: Leon Anavi's [YouTube](https://www.youtube.com/watch?v=W5J1W_Cy14Y) & [GitHub](https://github.com/leon-anavi/hello-world))
*   **recipes-bsp**: Board Support Package modifications
    *   `u-boot`: Appends for U-Boot configuration (Overrides `meta-raspberrypi` boot delay)
*   **recipes-core**: Core system modifications
    *   `images`: Customizations for core-image-base

## Dependencies

This layer depends on:

*   poky

## Usage

Add this layer to your `bblayers.conf`:

```bash
bitbake-layers add-layer meta-custom
```
