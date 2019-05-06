
#number depent on how many file you have
for i in 1 2 3 4 5 6
do

#FFmpeg for convert resolution 
	(time ffmpeg -y -i convertvideo$i.ts -vf scale=720:480 720convertvideo$i.ts)&> 720outputresult$i
	(time ffmpeg -y -i convertvideo$i.ts -vf scale=480:320 480convertvideolow$i.ts)&> 480outputresul$i


#get the time
	grep real 720outputresult$i  >> 720real
	grep real 480outputresul$i  >> 80real

#remove the video been convert 
	rm 720convertvideo$i.ts
	rm 480convertvideolow$i.ts

		
done


#sepresat them by line 
echo "-----------">> 720real
echo "-----------">> 480real
