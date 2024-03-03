f=$(mktemp)
wl-paste > $f
foot --app-id=float_foot -- hx $f
cat $f | wl-copy
rm $f
