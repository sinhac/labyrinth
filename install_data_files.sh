# Run this to install Labyrinth's optional data files - language packs, icons,
# and the .desktop file.
#
# Set the $DESTDIR environment variable to install somewhere other than root.
set -e

echo "Installing icons"
for size in 16x16 22x22 24x24 32x32 36x36 48x48 64x64 72x72 96x96 128x128 192x192 256x256 512x512 scalable; do install -d $DESTDIR/usr/share/icons/hicolor/$size/apps; done
install -m 644 data/labyrinth-16.png $DESTDIR/usr/share/icons/hicolor/16x16/apps/labyrinth.png
install -m 644 data/labyrinth-22.png $DESTDIR/usr/share/icons/hicolor/22x22/apps/labyrinth.png
install -m 644 data/labyrinth-24.png $DESTDIR/usr/share/icons/hicolor/24x24/apps/labyrinth.png
install -m 644 data/labyrinth-32.png $DESTDIR/usr/share/icons/hicolor/32x32/apps/labyrinth.png
install -m 644 data/labyrinth-36.png $DESTDIR/usr/share/icons/hicolor/36x36/apps/labyrinth.png
install -m 644 data/labyrinth-48.png $DESTDIR/usr/share/icons/hicolor/48x48/apps/labyrinth.png
install -m 644 data/labyrinth-64.png $DESTDIR/usr/share/icons/hicolor/64x64/apps/labyrinth.png
install -m 644 data/labyrinth-72.png $DESTDIR/usr/share/icons/hicolor/72x72/apps/labyrinth.png
install -m 644 data/labyrinth-96.png $DESTDIR/usr/share/icons/hicolor/96x96/apps/labyrinth.png
install -m 644 data/labyrinth-128.png $DESTDIR/usr/share/icons/hicolor/128x128/apps/labyrinth.png
install -m 644 data/labyrinth-192.png $DESTDIR/usr/share/icons/hicolor/192x192/apps/labyrinth.png
install -m 644 data/labyrinth-256.png $DESTDIR/usr/share/icons/hicolor/256x256/apps/labyrinth.png
install -m 644 data/labyrinth-512.png $DESTDIR/usr/share/icons/hicolor/512x512/apps/labyrinth.png
install -m 644 data/labyrinth.svg $DESTDIR/usr/share/icons/hicolor/scalable/apps/labyrinth.svg
for size in 16x16 22x22 24x24 32x32 36x36 48x48 64x64 72x72 96x96 128x128 192x192 256x256 512x512 scalable; do install -d $DESTDIR/usr/share/icons/gnome/$size/apps; done
install -m 644 data/labyrinth-16.png $DESTDIR/usr/share/icons/gnome/16x16/apps/labyrinth.png
install -m 644 data/labyrinth-22.png $DESTDIR/usr/share/icons/gnome/22x22/apps/labyrinth.png
install -m 644 data/labyrinth-24.png $DESTDIR/usr/share/icons/gnome/24x24/apps/labyrinth.png
install -m 644 data/labyrinth-32.png $DESTDIR/usr/share/icons/gnome/32x32/apps/labyrinth.png
install -m 644 data/labyrinth-36.png $DESTDIR/usr/share/icons/gnome/36x36/apps/labyrinth.png
install -m 644 data/labyrinth-48.png $DESTDIR/usr/share/icons/gnome/48x48/apps/labyrinth.png
install -m 644 data/labyrinth-64.png $DESTDIR/usr/share/icons/gnome/64x64/apps/labyrinth.png
install -m 644 data/labyrinth-72.png $DESTDIR/usr/share/icons/gnome/72x72/apps/labyrinth.png
install -m 644 data/labyrinth-96.png $DESTDIR/usr/share/icons/gnome/96x96/apps/labyrinth.png
install -m 644 data/labyrinth-128.png $DESTDIR/usr/share/icons/gnome/128x128/apps/labyrinth.png
install -m 644 data/labyrinth-192.png $DESTDIR/usr/share/icons/gnome/192x192/apps/labyrinth.png
install -m 644 data/labyrinth-256.png $DESTDIR/usr/share/icons/gnome/256x256/apps/labyrinth.png
install -m 644 data/labyrinth-512.png $DESTDIR/usr/share/icons/gnome/512x512/apps/labyrinth.png
install -m 644 data/labyrinth.svg $DESTDIR/usr/share/icons/gnome/scalable/apps/labyrinth.svg

echo "Installing .desktop file"
install -D -m 755 data/labyrinth.desktop $DESTDIR/usr/share/applications/labyrinth.desktop

echo "Installing translations"
make -C po loecaledir=$DESTDIR/usr/share/locale install
