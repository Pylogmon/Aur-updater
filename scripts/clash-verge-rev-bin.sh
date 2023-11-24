cd clash-verge-rev-bin

ver=$(curl -H "Authorization: Bearer ${INPUT_TOKEN}" -s https://api.github.com/repos/wonfen/clash-verge-rev/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm clash-verge-${ver}-x86_64.deb
cd -
