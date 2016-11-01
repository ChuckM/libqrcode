QR Code Generator
-----------------

QR Codes are pretty cool, and there is a really easy to
use library and tool for generating them written by Kentaro
Fukuchi (fukuchi@megaui.net) and released under GPL v2.1. I
pulled the "important" files from release 3.1.1.

The way I use it is I call `QRcode_encodeString` then pull
out the QR code from the `QRcode *` structure returned and
populate a local bitmap on my ARM processor. At that point
it is displayable on what ever is attached to your embedded
processor.

From Kentaro's README file:

GENERAL INFORMATION
===================

Libqrencode is a library for encoding data in a QR Code symbol, a kind of 2D
symbology that can be scanned by handy terminals such as a mobile phone with
CCD. The capacity of QR Code is up to 7000 digits or 4000 characters, and has
high robustness.

Libqrencode accepts a string or a list of data chunks then encodes in a QR Code
symbol as a bitmap array. While other QR Code applications generate an image
file, using libqrencode allows applications to render QR Code symbols from raw
bitmap data directly.

SPECIFICATION
=============
Libqrencode supports QR Code model 2, described in JIS (Japanese Industrial
Standards) X0510:2004 or ISO/IEC 18004. Most of features in the specification
are implemented such as:
- Numeric, alphabet, Japanese kanji (Shift-JIS) or any 8 bit code can be
  embedded
- Optimized encoding of a string
- Structured-append of symbols

Currently the following features are not supported:
- ECI and FNC1 mode
- Micro QR Code
- QR Code model 1 (deprecated)

LICENSING INFORMATION
=====================
Copyright (C) 2006, 2007, 2008, 2009, 2010 Kentaro Fukuchi

This library is free software; you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free
Software Foundation; either version 2.1 of the License, or any later version.

This library is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along
with this library; if not, write to the Free Software Foundation, Inc., 51
Franklin St, Fifth Floor, Boston, MA 02110-1301 USA


CONTACTS
========
Visit the homepage at:

http://megaui.net/fukuchi/works/qrencode/index.en.html

for new releases.

