cd clash-verge-bin

ver=$(curl -s https://api.github.com/repos/zzzgydi/clash-verge/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm clash-verge_${ver}_amd64.deb
cd -