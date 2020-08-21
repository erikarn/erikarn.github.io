#!/bin/sh

for i in `seq -f '%04g' 1 2000`; do
	echo $i
	curl -o ASB${i}.pdf https://www.kenwood.com/usa/Support/pdf/ASB${i}.pdf

done

# ls *pdf | perl -ne 'while (<>) { chomp; printf " * [%s](%s)\n", $_, $_; }'
