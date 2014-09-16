UV_FLASHPLAYER_SOURCE_DIR=$(PWD)

ifndef UV_FLASHPLAYER_INSTALL_PATH
UV_FLASHPLAYER_INSTALL_PATH=$(PWD)/fplayer-install
endif

UV_FLASHPLAYER_CROSS=arm-none-linux-gnueabi

UV_FLASHPLAYER_ZLIB_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/zlib
UV_FLASHPLAYER_LIBPNG_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/libpng
UV_FLASHPLAYER_CURL_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/curl
UV_FLASHPLAYER_LIBOGG_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/libogg
UV_FLASHPLAYER_SPEEX_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/speex
UV_FLASHPLAYER_FREETYPE_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/freetype
UV_FLASHPLAYER_LIBXML2_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/libxml2
UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/fontconfig
UV_FLASHPLAYER_JPEG_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/jpeg
UV_FLASHPLAYER_GIFLIB_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/giflib
UV_FLASHPLAYER_LIBFFI_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/libffi
UV_FLASHPLAYER_GLIB_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/glib
UV_FLASHPLAYER_ATK_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/atk
UV_FLASHPLAYER_PANGO_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/pango
UV_FLASHPLAYER_PIXMAN_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/pixman
UV_FLASHPLAYER_CAIRO_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/cairo
UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/DirectFB
UV_FLASHPLAYER_TIFF_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/tiff
UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/gtkplus
UV_FLASHPLAYER_BOOST_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/boost
UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/gstreamer
UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/gst-plugins-base
UV_FLASHPLAYER_SDL_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/SDL
UV_FLASHPLAYER_AGG_SOURCE_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/agg
UV_FLASHPLAYER_GNASH_DIR=$(UV_FLASHPLAYER_SOURCE_DIR)/gnash

export UV_FLASHPLAYER_LOCAL_CFLAGS=-mfpu=vfp -mfloat-abi=softfp -march=armv6
export UV_FLASHPLAYER_LOCAL_CPPFLAGS=-mfpu=vfp -mfloat-abi=softfp -march=armv6

.PHONY : all zlib libpng curl libogg speex freetype libxml2 fontconfig jpeg giflib libffi glib atk pango pixman cairo directfb tiff gtkplus boost gstreamer gst_plugin_base sdl agg gnash

all:
	make zlib-config
	make zlib
	make jpeg-config
	make jpeg
	make libpng-config
	make libpng
	make libogg-config
	make libogg
	make freetype-config
	make freetype
	make giflib-config
	make giflib
	make libffi-config
	make libffi
	make glib-config
	make glib
	make tiff-config
	make tiff
	make boost-config
	make boost
	make curl-config
	make curl
	make libxml2-config
	make libxml2
	make fontconfig-config
	make fontconfig
	make speex-config
	make speex
	make pixman-config
	make pixman
	make directfb-config
	make directfb
	make cairo-config
	make cairo
	make pango-config
	make pango
	make atk-config
	make atk
	make gtkplus-config
	make gtkplus
	make agg-config
	make agg
	make gstreamer-config
	make gstreamer
	make gst_plugin_base-config
	make gst_plugin_base
	make sdl-config
	make sdl
	make gnash-config
	make gnash

clean:
distclean:
all-clean:
	@if test  -f $(UV_FLASHPLAYER_ZLIB_SOURCE_DIR)/Makefile; then \
		make zlib-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_LIBPNG_SOURCE_DIR)/Makefile; then \
		make libpng-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_CURL_SOURCE_DIR)/Makefile; then \
		make curl-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_LIBOGG_SOURCE_DIR)/Makefile; then \
		make libogg-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_SPEEX_SOURCE_DIR)/Makefile; then \
		make speex-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_FREETYPE_SOURCE_DIR)/Makefile; then \
		make freetype-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_LIBXML2_SOURCE_DIR)/Makefile; then \
		make libxml2-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR)/Makefile; then \
		make fontconfig-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_JPEG_SOURCE_DIR)/Makefile; then \
		make jpeg-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_GIFLIB_SOURCE_DIR)/Makefile; then \
		make giflib-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_LIBFFI_SOURCE_DIR)/Makefile; then \
		make libffi-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_GLIB_SOURCE_DIR)/Makefile; then \
		make glib-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_ATK_SOURCE_DIR)/Makefile; then \
		make atk-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_PANGO_SOURCE_DIR)/Makefile; then \
		make pango-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_PIXMAN_SOURCE_DIR)/Makefile; then \
		make pixman-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_CAIRO_SOURCE_DIR)/Makefile; then \
		make cairo-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR)/Makefile; then \
		make directfb-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_TIFF_SOURCE_DIR)/Makefile; then \
		make tiff-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR)/Makefile; then \
		make gtkplus-clean; \
	else :; fi
	@if test -f $(UV_FLASHPLAYER_BOOST_SOURCE_DIR)/Makefile; then \
		make boost-clean; \
	else :; fi
	@if test -f $(UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR)/Makefile; then \
		make gstreamer-clean; \
	else :; fi
	@if test -f $(UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR)/Makefile; then \
		make gst_plugin_base-clean; \
	else :; fi
	@if test -f $(UV_FLASHPLAYER_SDL_SOURCE_DIR)/Makefile; then \
		make sdl-clean; \
	else :; fi
	@if test -f $(UV_FLASHPLAYER_AGG_SOURCE_DIR)/Makefile; then \
		make agg-clean; \
	else :; fi
	@if test  -f $(UV_FLASHPLAYER_GNASH_DIR)/Makefile; then \
		make gnash-clean; \
	else :; fi


all-config:
	make zlib-config
	make libpng-config
	make curl-config
	make libogg-config
	make speex-config
	make gnash-config

all-install:
	make zlib-install
	make libpng-install
	make curl-install
	make libogg-install
	make speex-install
	make gnash-install

zlib:
	make -j8 -C $(UV_FLASHPLAYER_ZLIB_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_ZLIB_SOURCE_DIR) install

zlib-config:
	cd $(UV_FLASHPLAYER_ZLIB_SOURCE_DIR) && export CROSS_PREFIX=arm-none-linux-gnueabi- && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --libdir=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--sharedlibdir=$(UV_FLASHPLAYER_INSTALL_PATH)/lib --includedir=$(UV_FLASHPLAYER_INSTALL_PATH)/include

zlib-install:
	make -C $(UV_FLASHPLAYER_ZLIB_SOURCE_DIR) install

zlib-clean:
	make -C $(UV_FLASHPLAYER_ZLIB_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_ZLIB_SOURCE_DIR) distclean

libpng:
	make -j8 -C $(UV_FLASHPLAYER_LIBPNG_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_LIBPNG_SOURCE_DIR) install

libpng-config:
	cd $(UV_FLASHPLAYER_LIBPNG_SOURCE_DIR) && export LDFLAGS=-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS) -I$(UV_FLASHPLAYER_INSTALL_PATH)/include" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) \
		--host=$(UV_FLASHPLAYER_CROSS)

libpng-install:
	make -C $(UV_FLASHPLAYER_LIBPNG_SOURCE_DIR) install

libpng-clean:
	make -C $(UV_FLASHPLAYER_LIBPNG_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_LIBPNG_SOURCE_DIR) distclean

curl:
	make -j8 -C $(UV_FLASHPLAYER_CURL_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_CURL_SOURCE_DIR) install

curl-config:
	cd $(UV_FLASHPLAYER_CURL_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --host=$(UV_FLASHPLAYER_CROSS) --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) \
		--disable-debug --enable-optimize \
		--enable-warnings --disable-werror --disable-curldebug --enable-http --enable-ftp --enable-file --enable-ldap \
		--enable-ldaps --enable-rtsp --enable-proxy --enable-dict --enable-telnet --enable-tftp --enable-pop3 \
		--enable-imap --enable-smtp --enable-gopher --enable-manual --disable-verbose --enable-sspi --enable-crypto-auth \
		--enable-tls-srp --enable-cookies --enable-hidden-symbols --enable-soname-bump --without-ssl \
		--with-zlib=$(UV_FLASHPLAYER_INSTALL_PATH)

curl-install:
	make -C $(UV_FLASHPLAYER_CURL_SOURCE_DIR) install

curl-clean:
	make -C $(UV_FLASHPLAYER_CURL_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_CURL_SOURCE_DIR) distclean

libogg:
	make -j8 -C $(UV_FLASHPLAYER_LIBOGG_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_LIBOGG_SOURCE_DIR) install

libogg-config:
	cd $(UV_FLASHPLAYER_LIBOGG_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --host=$(UV_FLASHPLAYER_CROSS) --prefix=$(UV_FLASHPLAYER_INSTALL_PATH)

libogg-install:
	make -C $(UV_FLASHPLAYER_LIBOGG_SOURCE_DIR) install

libogg-clean:
	make -C $(UV_FLASHPLAYER_LIBOGG_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_LIBOGG_SOURCE_DIR) distclean

speex:
	make -j8 -C $(UV_FLASHPLAYER_SPEEX_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_SPEEX_SOURCE_DIR) install

speex-config:
	cd $(UV_FLASHPLAYER_SPEEX_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --host=$(UV_FLASHPLAYER_CROSS) --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) \
		--enable-fixed-point --disable-float-api --enable-arm5e-asm --without-ogg --with-ogg=$(UV_FLASHPLAYER_INSTALL_PATH)

speex-install:
	make -C $(UV_FLASHPLAYER_SPEEX_SOURCE_DIR) install

speex-clean:
	make -C $(UV_FLASHPLAYER_SPEEX_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_SPEEX_SOURCE_DIR) distclean

freetype:
	make -j8 -C $(UV_FLASHPLAYER_FREETYPE_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_FREETYPE_SOURCE_DIR) install

freetype-config:
	cd $(UV_FLASHPLAYER_FREETYPE_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS)

freetype-install:
	make -C $(UV_FLASHPLAYER_FREETYPE_SOURCE_DIR) install

freetype-clean:
	make -C $(UV_FLASHPLAYER_FREETYPE_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_FREETYPE_SOURCE_DIR) distclean

libxml2:
	make -j8 -C $(UV_FLASHPLAYER_LIBXML2_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_LIBXML2_SOURCE_DIR) install

libxml2-config:
	cd $(UV_FLASHPLAYER_LIBXML2_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) \
		--without-debug --with-zlib=$(UV_FLASHPLAYER_INSTALL_PATH) --without-python

libxml2-install:
	make -C $(UV_FLASHPLAYER_LIBXML2_SOURCE_DIR) install

libxml2-clean:
	make -C $(UV_FLASHPLAYER_LIBXML2_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_LIBXML2_SOURCE_DIR) distclean

fontconfig:
	make -j8 -C $(UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR) install

fontconfig-config:
	cd $(UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR) && export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS) -I$(UV_FLASHPLAYER_INSTALL_PATH)/include/freetype2 \
		-I$(UV_FLASHPLAYER_INSTALL_PATH)/include" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export LIBXML2_CFLAGS="-I$(UV_FLASHPLAYER_INSTALL_PATH)/include/libxml2" && \
		export LIBXML2_LIBS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib" && \
		export LDFLAGS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib -lxml2 -lz"&& \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) \
		--with-freetype-config=$(UV_FLASHPLAYER_INSTALL_PATH)/bin/freetype-config

fontconfig-install:
	make -C $(UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR) install

fontconfig-clean:
	make -C $(UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR) clean
	#make -C $(UV_FLASHPLAYER_FONTCONFIG_SOURCE_DIR) distclean ### no distclean, header files will be removed and no restored any mnore.

jpeg:
	make -j8 -C $(UV_FLASHPLAYER_JPEG_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_JPEG_SOURCE_DIR) install

jpeg-config:
	cd $(UV_FLASHPLAYER_JPEG_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS)

jpeg-install:
	make -C $(UV_FLASHPLAYER_JPEG_SOURCE_DIR) install

jpeg-clean:
	make -C $(UV_FLASHPLAYER_JPEG_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_JPEG_SOURCE_DIR) distclean

giflib:
	make -j8 -C $(UV_FLASHPLAYER_GIFLIB_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_GIFLIB_SOURCE_DIR) install

giflib-config:
	cd $(UV_FLASHPLAYER_GIFLIB_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS)

giflib-install:
	make -C $(UV_FLASHPLAYER_GIFLIB_SOURCE_DIR) install

giflib-clean:
	make -C $(UV_FLASHPLAYER_GIFLIB_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_GIFLIB_SOURCE_DIR) distclean

libffi:
	make -j8 -C $(UV_FLASHPLAYER_LIBFFI_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_LIBFFI_SOURCE_DIR) install

libffi-config:
	cd $(UV_FLASHPLAYER_LIBFFI_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS)

libffi-install:
	make -C $(UV_FLASHPLAYER_LIBFFI_SOURCE_DIR) install

libffi-clean:
	make -C $(UV_FLASHPLAYER_LIBFFI_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_LIBFFI_SOURCE_DIR) distclean

glib:
	make -j8 -C $(UV_FLASHPLAYER_GLIB_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_GLIB_SOURCE_DIR) install

glib-config:
	cd $(UV_FLASHPLAYER_GLIB_SOURCE_DIR) && export PKG_CONFIG_PATH=$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig && \
		export CFLAGS="-I$(UV_FLASHPLAYER_INSTALL_PATH)/include" && \
#		 export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export LDFLAGS=-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) --build=i686 --cache-file=arm_linux.cache

glib-install:
	make -C $(UV_FLASHPLAYER_GLIB_SOURCE_DIR) install

glib-clean:
	make -C $(UV_FLASHPLAYER_GLIB_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_GLIB_SOURCE_DIR) distclean

atk:
	make -j8 -C $(UV_FLASHPLAYER_ATK_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_ATK_SOURCE_DIR) install

atk-config:
	cd $(UV_FLASHPLAYER_ATK_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export PKG_CONFIG_PATH=$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS)

atk-install:
	make -C $(UV_FLASHPLAYER_ATK_SOURCE_DIR) install

atk-clean:
	make -C $(UV_FLASHPLAYER_ATK_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_ATK_SOURCE_DIR) distclean

pango:
	make -j8 -C $(UV_FLASHPLAYER_PANGO_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_PANGO_SOURCE_DIR) install

pango-config:
	cd $(UV_FLASHPLAYER_PANGO_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export PKG_CONFIG_PATH=$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig && \
		export LDFLAGS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib -lxml2 -lz" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) \
		--without-x

pango-install:
	make -C $(UV_FLASHPLAYER_PANGO_SOURCE_DIR) install

pango-clean:
	make -C $(UV_FLASHPLAYER_PANGO_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_PANGO_SOURCE_DIR) distclean

pixman:
	make -j8 -C $(UV_FLASHPLAYER_PIXMAN_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_PIXMAN_SOURCE_DIR) install

pixman-config:
	cd $(UV_FLASHPLAYER_PIXMAN_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export PKG_CONFIG_PATH=$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) --disable-gtk

pixman-install:
	make -C $(UV_FLASHPLAYER_PIXMAN_SOURCE_DIR) install

pixman-clean:
	make -C $(UV_FLASHPLAYER_PIXMAN_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_PIXMAN_SOURCE_DIR) distclean

cairo:
	make -j8 -C $(UV_FLASHPLAYER_CAIRO_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_CAIRO_SOURCE_DIR) install

cairo-config:
	cd $(UV_FLASHPLAYER_CAIRO_SOURCE_DIR) && export PKG_CONFIG_PATH=$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS) -I$(UV_FLASHPLAYER_INSTALL_PATH)/include" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export LDFLAGS=-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) --disable-xlib --enable-freetype \
		--enable-xlib=no --enable-directfb=yes \
		FONTCONFIG_CFLAGS="-I$(UV_FLASHPLAYER_INSTALL_PATH)/include/fontconfig" FONTCONFIG_LIBS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib -lfontconfig -lfreetype -lxml2 -lz" \
		png_CFLAGS="-I$(UV_FLASHPLAYER_INSTALL_PATH)/include" png_LIBS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib -lpng"

cairo-install:
	make -C $(UV_FLASHPLAYER_CAIRO_SOURCE_DIR) install

cairo-clean:
	make -C $(UV_FLASHPLAYER_CAIRO_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_CAIRO_SOURCE_DIR) distclean

directfb:
	make -j8 -C $(UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR) install

directfb-config:
	cd $(UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR) && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export PKG_CONFIG_PATH="$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig" && \
		export PATH="$(UV_FLASHPLAYER_INSTALL_PATH)/bin:$(PATH)" && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS) -I$(UV_FLASHPLAYER_INSTALL_PATH)/include -I$(UV_FLASHPLAYER_INSTALL_PATH)/include/libpng15 -DDIRECT_ENABLE_DEBUG" && \
		export LDFLAGS=-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) --disable-x11 --enable-jpeg \
		--disable-vnc --enable-zlib --enable-png --enable-gif --enable-freetype --enable-video4linux2 \
		--with-dither-rgb16=advanced --with-tests --with-smooth-scaling --enable-debug

directfb-install:
	make -C $(UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR) install

directfb-clean:
	make -C $(UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_DIRECTFB_SOURCE_DIR) distclean

tiff:
	make -j8 -C $(UV_FLASHPLAYER_TIFF_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_TIFF_SOURCE_DIR) install

tiff-config:
	cd $(UV_FLASHPLAYER_TIFF_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS)

tiff-install:
	make -C $(UV_FLASHPLAYER_TIFF_SOURCE_DIR) install

tiff-clean:
	make -C $(UV_FLASHPLAYER_TIFF_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_TIFF_SOURCE_DIR) distclean

gtkplus:
	export PATH="$(UV_FLASHPLAYER_INSTALL_PATH)/bin:$(PATH)" && make -j8 -C $(UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR) \
		GLIB_GENMARSHAL=/usr/bin/glib-genmarshal 
	make -C $(UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR) install

gtkplus-config:
	cd $(UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR) && export PKG_CONFIG_PATH="$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig" && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS) -I$(UV_FLASHPLAYER_INSTALL_PATH)/include -I$(UV_FLASHPLAYER_INSTALL_PATH)/include/directfb" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS) -I$(UV_FLASHPLAYER_INSTALL_PATH)/include -I$(UV_FLASHPLAYER_INSTALL_PATH)/include/directfb" && \
		export PATH="$(UV_FLASHPLAYER_INSTALL_PATH)/bin:$(PATH)" && \
		export LDFLAGS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib -lfontconfig -lfreetype -lxml2 -lz -lpng \
		-lpixman-1 -lpango-1.0 -lglib-2.0 -lgio-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -ldirect \
		-lpangoft2-1.0 -ldirectfb -lfusion" && \
		export CC=arm-none-linux-gnueabi-gcc && export CXX=arm-none-linux-gnueabi-g++ && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) --build=i686 \
		--without-x --with-gdktarget=directfb --without-libjasper \
		BASE_DEPENDENCIES_CFLAGS=-I$(UV_FLASHPLAYER_INSTALL_PATH)/include \
		BASE_DEPENDENCIES_LIBS=-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib

gtkplus-install:
	make -C $(UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR) install

gtkplus-clean:
	make -C $(UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_GTKPLUS_SOURCE_DIR) distclean

boost:
	make -j8 -C $(UV_FLASHPLAYER_BOOST_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) install

boost-config:
	cd $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --with-toolset='gcc : arm : arm-none-linux-gnueabi-g++' --prefix=$(UV_FLASHPLAYER_INSTALL_PATH)
		cd $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) && mv user-config.jam arm-gcc.jam
		cd $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) && ./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH)
		cd $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) && mv arm-gcc.jam user-config.jam

boost-install:
	make -C $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) install

boost-clean:
	make -C $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_BOOST_SOURCE_DIR) distclean

gstreamer:
	make -j8 -C $(UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR) install

gstreamer-config:
	cd $(UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export LDFLAGS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib -lz" && \
		export PKG_CONFIG_PATH="$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS)

gstreamer-install:
	make -C $(UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR) install

gstreamer-clean:
	make -C $(UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_GSTREAMER_SOURCE_DIR) distclean

gst_plugin_base:
	make -j8 -C $(UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR) install

gst_plugin_base-config:
	cd $(UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export PKG_CONFIG_PATH="$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) \
		--without-x --disable-alsa --disable-gnome_vfs --disable-vorbis

gst_plugin_base-install:
	make -C $(UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR) install

gst_plugin_base-clean:
	make -C $(UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_GST_PLUGIN_BASE_SOURCE_DIR) distclean

sdl:
	make -j8 -C $(UV_FLASHPLAYER_SDL_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_SDL_SOURCE_DIR) install

sdl-config:
	cd $(UV_FLASHPLAYER_SDL_SOURCE_DIR) && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) \
		--without-x --disable-esd --disable-arts

sdl-install:
	make -C $(UV_FLASHPLAYER_SDL_SOURCE_DIR) install

sdl-clean:
	make -C $(UV_FLASHPLAYER_SDL_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_SDL_SOURCE_DIR) distclean

agg:
	make -j8 -C $(UV_FLASHPLAYER_AGG_SOURCE_DIR)
	make -C $(UV_FLASHPLAYER_AGG_SOURCE_DIR) install

agg-config:
	cd $(UV_FLASHPLAYER_AGG_SOURCE_DIR) && chmod +x ./autogen.sh && ./autogen.sh && \
		make clean && make distclean && \
		export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS)" && \
		export PKG_CONFIG_PATH=$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig && \
		./configure --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --host=$(UV_FLASHPLAYER_CROSS) \
		--without-x --disable-platform --disable-examples

agg-install:
	make -C $(UV_FLASHPLAYER_AGG_SOURCE_DIR) install

agg-clean:
	make -C $(UV_FLASHPLAYER_AGG_SOURCE_DIR) clean
	make -C $(UV_FLASHPLAYER_AGG_SOURCE_DIR) distclean

gnash:
	make -j8 -C $(UV_FLASHPLAYER_GNASH_DIR)
	make -C $(UV_FLASHPLAYER_GNASH_DIR) install

gnash-clean:
	make -C $(UV_FLASHPLAYER_GNASH_DIR) clean
	make -C $(UV_FLASHPLAYER_GNASH_DIR) distclean

gnash-install:
	make -C $(UV_FLASHPLAYER_GNASH_DIR) install

gnash-config:
	cp -fr openvg_install/drivers/*.so $(UV_FLASHPLAYER_INSTALL_PATH)/lib
	cp -fr openvg_install/include/* $(UV_FLASHPLAYER_INSTALL_PATH)/include
	cd $(UV_FLASHPLAYER_GNASH_DIR) && ./autogen.sh && \
		export PKG_CONFIG_PATH=$(UV_FLASHPLAYER_INSTALL_PATH)/lib/pkgconfig && \
		export PKG_CONFIG=pkg-config && \
        	export CFLAGS="$(UV_FLASHPLAYER_LOCAL_CFLAGS)" && \
		export CPPFLAGS="$(UV_FLASHPLAYER_LOCAL_CPPFLAGS) -I$(UV_FLASHPLAYER_INSTALL_PATH)/include/glib-2.0 -I$(UV_FLASHPLAYER_INSTALL_PATH)/include \
		-I$(UV_FLASHPLAYER_INSTALL_PATH)/lib/glib-2.0/include -I$(UV_FLASHPLAYER_INSTALL_PATH)/include/libxml2 \
		-lm " && \
		export LDFLAGS="-L$(UV_FLASHPLAYER_INSTALL_PATH)/lib -L$(UV_FLASHPLAYER_INSTALL_PATH)/lib/gnash -lgdk-directfb-2.0 -lfontconfig -lfreetype -lxml2 -lz -lpng \
		-lpixman-1 -lpango-1.0 -lglib-2.0 -lgio-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -ldirect -lpangoft2-1.0 -ldirectfb -lfusion \
		-lgdk_pixbuf-2.0 -latk-1.0 -lcairo -lpangocairo-1.0 -pthread -lOpenVG -lGAL -lVIVANTE -lm -ldl" && \
		export LIBS="-lm -ldl" && \
		./configure --host=$(UV_FLASHPLAYER_CROSS) --prefix=$(UV_FLASHPLAYER_INSTALL_PATH) --exec-prefix=$(UV_FLASHPLAYER_INSTALL_PATH) \
		--without-gconf --disable-extensions --disable-docbook --without-docbook-styles \
		--enable-gui=sdl --enable-renderer=openvg --enable-device=rawfb \
		--disable-npapi --with-png-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include --with-png-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-curl-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include --with-curl-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-speex-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/speex --with-speex-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-speexdsp-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/speex --with-speexdsp-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-z-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include --with-z-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-freetype-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/freetype2 --with-freetype-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-fontconfig-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include --with-fontconfig-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-jpeg-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include --with-jpeg-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-gif-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include --with-gif-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-atk-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/atk-1.0 --with-atk-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-boost-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/boost-1_34_1 --with-boost-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-gstreamer-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/gstreamer-0.10 --with-gstreamer-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-glib-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/glib-2.0 --with-glib-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-sdl-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/SDL --with-sdl-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-agg-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/agg2 --with-agg-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-cairo-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/cairo --with-cairo-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib \
		--with-pango-incl=$(UV_FLASHPLAYER_INSTALL_PATH)/include/pango-1.0 --with-pango-lib=$(UV_FLASHPLAYER_INSTALL_PATH)/lib 

