DESCRIPTION = "Hello World"
HOMEPAGE = "https://github.com/leon-anavi/hello-world"
SECTION = "console/utils"
LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://LICENSE;md5=f388cad0df1af35e3626518d587c0cb6"

SRC_URI = "git://github.com/leon-anavi/hello-world.git;branch=master;protocol=https"
SRCREV = "f66f58e7bcdcc834568d8c7c6fc51e30765befad"

S = "${WORKDIR}/git"

inherit autotools