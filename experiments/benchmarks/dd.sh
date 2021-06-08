mkdir random_cnf
for file in random_smt/*; do
    echo "$(basename "$file")"
    ./boolector -dd $file >> random_cnf/$(basename "$file")
done
for file in random_cnf/*; do
	mv -v $file ${file%.smt2}.cnf
done
