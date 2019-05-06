

for i in 1  



do

	
	for j in 1  	

	do


		echo "i am doing $i run $j folder"
		cd $j/
		cd original/
		
		(ffmpeg -i *.*) &>outputresult
		
		grep Stream #0.0(eng):
		

#		grep Duration: outputresult$i  >> realSL
		cd ..
		cd ..
			
	done


done



