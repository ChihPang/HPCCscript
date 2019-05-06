
#This is script for for run 100 folder and 30 times


for i in {1..100} 
do
	cd ~/short_video	
	for j in {1..30}
	do
		echo "i am doing convert reslution $i run in $j file"
		cd $j/
		
		#script name want run here is running testcr.sh 
		./testcr.sh
		cd ..		
	done
done











