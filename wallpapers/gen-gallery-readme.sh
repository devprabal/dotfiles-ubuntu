#!/bin/bash
write_headers () {
    cat > README.md << _EOF_
# Wallpapers Collection :framed_picture:

## Credits
 - [Alex Martin](https://www.alexstevenmartin.com/)
 - user \`nuaNce#4387\` (discord) on unixporn server
 - [Wallpaperflare](www.wallpaperflare.com)
 - I don't remember some of them :sweat: . Contact me if you see your artwork not credited above.

## Gallery

<p align="center">

_EOF_
}

write_images () {
    cat >> README.md << _EOF_
<a href="gallery/$1"><img src="gallery/$1" width="150" height="100"></a>
_EOF_
}

write_headers

for filename in $(ls gallery)
do
    write_images $filename
done

echo -e '\n</p>' >> README.md


