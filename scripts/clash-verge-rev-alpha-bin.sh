cd clash-verge-rev-alpha-bin

ver=$(curl -H "Authorization: Bearer ${INPUT_TOKEN}" -s https://api.github.com/repos/clash-verge-rev/clash-verge-rev/releases/latest | jq '.tag_name'|tr -d 'v"')
sed -i "s/pkgver=.*/pkgver=${ver}/" PKGBUILD

cd -
