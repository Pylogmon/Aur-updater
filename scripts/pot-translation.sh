cd pot-translation

ver=$(curl -H "Authorization: Bearer ${INPUT_TOKEN}" -s https://api.github.com/repos/pot-app/pot-desktop/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm pot-${ver}.tar.gz
cd -
