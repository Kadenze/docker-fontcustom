# docker-fontcustom

[![](https://codeclou.github.io/doc/badges/generated/docker-image-size-200.svg)](https://hub.docker.com/r/ashwinv11/docker-fontcustom/tags/) [![](https://codeclou.github.io/doc/badges/generated/docker-from-ubuntu-16.04.svg)](https://www.ubuntu.com/)

Docker-Image to work with [fontcustom](https://github.com/FontCustom/fontcustom)

-----

### Usage

If your svgs reside inside `./*.svg` you can create an icon font with:

```
docker run \
    -i -t \
    --volume $(pwd):/rubyapp/fonts/ \
    ashwinv11/fontcustom:latest \
    fontcustom config

docker run \
    -i -t \
    --volume $(pwd):/rubyapp/fonts/ \
    ashwinv11/fontcustom:latest \
    fontcustom compile
```

Your font will be generated in `./icons/*`.

----

### License, Liability & Support

 * Dockerfile and Image is provided under [MIT License](https://github.com/codeclou/docker-fontcustom/blob/master/LICENSE.md)
 * FontForge is available as a whole under the terms of the [GNU GPL](http://www.gnu.org/copyleft/gpl.html)
