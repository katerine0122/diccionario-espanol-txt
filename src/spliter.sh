#ª/bin/bash

LETRAS=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'ñ' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z')

cat palabras_todas.txt | grep -v '.*-$' | grep -v ^- | sort | uniq > docs/0_palabras_todas.txt

cat palabras_todas.txt | grep '.*-$' | sort | uniq > docs/0_prefijos.txt
cat palabras_todas.txt | grep ^- | sort | uniq > docs/0_subfijos.txt

for l in "${LETRAS[@]}"; do
  cat docs/0_palabras_todas.txt | grep ^$l > docs/palabras_$l.txt
done
