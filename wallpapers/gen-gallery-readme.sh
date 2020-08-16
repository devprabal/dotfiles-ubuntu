#!/bin/bash
write_headers () {
    cat > README.md << _EOF_
# Wallpapers and Art Collection :framed_picture:

## Credits
 - [Alex Martin](https://www.alexstevenmartin.com/)
 - *wallpapers* channel on unixporn discord server
 - u/Alcimidius on r/awwnime
 - Twitter@15nichi
 - [Wallpaperflare](www.wallpaperflare.com)
 - [Mat Szulik](https://matszulik.artstation.com/)
 - [Thomas Dubois](https://www.artstation.com/thomas_dubois)
 - [Peter Lee](https://www.artstation.com/peterconcept)
 - [Space goose](https://www.artstation.com/spacegooose)
 - I don't remember some of them :sweat: . Contact me if you see your artwork not credited above.

## Gallery

Can be used as wallpapers

<p align="center">

_EOF_
}

write_images () {
    cat >> README.md << _EOF_
<a href="$2/$1"><img src="$2/$1" width="$3" height="$4"></a>
_EOF_
}

write_headers

ls gallery | while read -r filename
do
    filename="${filename// /%20}" # replace all spaces with %20
    write_images "$filename" "gallery" "150" "100"
done

echo -e '\n</p>\n\n## Art\n\nFound them too beautiful to leave out even if they do not become wallpapers\n\n<p align="center">\n' >> README.md

ls artwork | while read -r filename
do
    filename="${filename// /%20}" # replace all spaces with %20
    write_images "$filename" "artwork" "100" "133"
done

echo -e '\n</p>' >> README.md

