cd wallhaven-desktop-bin

ver=$(curl -s https://api.github.com/repos/Pylogmon/wallhaven-desktop/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm wallhaven-desktop-${ver}-x86_64.deb
cd -