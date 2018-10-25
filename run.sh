#!/bin/sh
for i in template/*.j2 template/**/*.j2 template/**/**/*.j2; do
    [ -f "$i" ] || break
    # exchange `template` path to `ecp`
    out="ecp${i#template}"
    # create `ecp` directory and subdirs
    mkdir -p ${out%/*}
    # explode the template with yasha
    yasha -v config.yaml "$i" -o "${out%.*}"
done

# copy all the files form template to ecp, but not `j2` ones`
rsync -avq template/* ./ecp/ --exclude="**/*.j2"
