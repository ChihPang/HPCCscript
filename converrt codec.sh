#This is script for output time in cover reslotion video in ten times
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
do	
#	(time ffmpeg -i output$i.ts -vcodec libx264 -acodec copy video_outputvideo$i.ts) &> outputresult$i
#	(time ffmpeg -i convervideo$i.ts -vcodec mpeg2video -acodec copy mpeg_outputvideo$i.ts) &> mpeg_outputresult$i
	


# FFmpeg call for conver codec		
	(time ffmpeg -i convervideo$i.ts -vcodec libvpx-vp9 -acodec copy vp9_outputvideo$i.ts) &> vp9_outputresult$i
	(time ffmpeg -i convervideo$i.ts -vcodec libx265 -acodec copy 265_outputvideo$i.ts) &> 265_outputresult$i

# remove output video so it do not need overwite next time and save disk
	rm vp9_outputvideo$i.ts
	rm 265_outputvideo$i.ts
	
	
	
#get the time and output it 	
	grep real vp9_outputresult$i >> vp9frealSL
	grep real 265_outputresult$i >> 265frealSL
	

done

#sepreat them by line
echo "-----------">> vp9frealSL
echo "-----------">> 265frealSL
