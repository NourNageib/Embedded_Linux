
#!/bin/bash
echo "Today is " `date`


hello()
{
	echo "WELCOME TASK 1"
	mkdir myDirectory
	cd ./myDirectory
	mkdir secondDirectory
	cd ./secondDirectory
	touch myNotePaper
	cd ../
	cp ./secondDirectory/myNotePaper myOldNotePaper
	echo"DONE : )"


}
hello
