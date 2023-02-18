cd wallhaven-desktop-bin

ver=$(curl -H "Authorization: Bearer ${TOKEN}" -s https://api.github.com/repos/Pylogmon/wallhaven-desktop/releases/latest | jq '.tag_name' | tr -d '"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm wallhaven-desktop-${ver}-x86_64.deb
cd -
