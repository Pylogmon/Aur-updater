cd pot-translation

ver=$(curl -s https://api.github.com/repos/Pylogmon/pot/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm pot-translation-${ver}.tar.gz
cd -