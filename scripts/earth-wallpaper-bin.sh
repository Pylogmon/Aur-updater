cd earth-wallpaper-bin

ver=$(curl -H "Authorization: Bearer ${INPUT_TOKEN}" -s https://api.github.com/repos/Pylogmon/earth_wallpaper/releases/latest | jq '.tag_name' | tr -d '"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD
sudo -u builder  updpkgsums

rm earth-wallpaper-${ver}.tar.gz
cd -
