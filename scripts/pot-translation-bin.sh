cd pot-translation-bin

ver=$(curl -H "Authorization: Bearer ${INPUT_TOKEN}" -s https://api.github.com/repos/Pylogmon/pot/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm pot-${ver}-x86_64.deb
cd -