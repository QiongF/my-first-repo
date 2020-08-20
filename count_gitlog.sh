# Creat a file that contains the Git log for this repository. 
# Use grep to see which day of the week most of the commits occurred on.

echo $(git log) > git_log.txt

days=(Mon Tus Wed Thu Fri Sat Sun)
echo "How many times the commits occrred on each week day:" > count_gitlog.txt

for i in ${days[*]}
do
	echo "$i:" >> count_gitlog.txt
	# grep -o print only the matched parts of a matching line (instead of the whole line), with each such part on a separate output line.
	# grep -i ignore case (m&M,w&W...)
	grep -oi "$i" git_log.txt | wc -w >> count_gitlog.txt 
	# wc -l also works
done

