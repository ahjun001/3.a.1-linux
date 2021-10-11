#!/usr/bin/env bash

# ffmpeg -i in.mp4 -filter_complex \
#   "[0:v]boxblur = 20 : enable = 'between(t , 12 , 34)' ,  crop = x = 260 : y = 840 : w = 320 : h = 100 [c1];
#                                              [0:v][c1] overlay = x = 260 : y = 840 : enable = 'between(t, 12, 34)' [v1];
#   [0:v]boxblur = 20 : enable = 'between(t , 32 , 44)' ,  crop = x = 1375 : y = 165 : w = 320 : h = 100 [c2];
#                                              [v1][c2] overlay = x = 1375 : y = 165 : enable = 'between(t, 32 , 44)' [v2];
#   [0:v]boxblur = 20 : enable = 'between(t , 44, 60+5)' ,  crop = x = 1520 : y = 60 : w = 320 : h = 100 [c3];
#                                              [v2][c3] overlay = x = 1520 : y = 60 : enable = 'between(t, 44, 65)'  [v3];
#   [0:v]boxblur = 20 : enable = 'between(t , 60+7 , 60+10)' ,  crop = x = 260 : y = 840 : w = 320 : h = 100 [c4];
#                                              [v3][c4] overlay = x = 260 : y = 840 : enable = 'between(t, 67, 60+10)' [v4];
#   [0:v]boxblur = 20 : enable = 'between(t , 60+9 , 60+35)' ,  crop = x = 1520 : y = 60 : w = 320 : h = 100 [c5];
#                                              [v4][c5] overlay = x = 1520 : y = 60 : enable = 'between(t, 69, 95)' [v5];
#   [0:v]boxblur = 20 : enable = 'between(t , 60+52 , 2*60+15)' ,  crop = x = 260 : y = 840 : w = 320 : h = 100 [c6];
#                                              [v5][c6] overlay = x = 260 : y = 840 : enable = 'between(t, 112, 135)' [v6];
#   [0:v]boxblur = 20 : enable = 'between(t , 2*60+22 , 2*60+52)' ,  crop = x = 80 : y = 910 : w = 315 : h = 100 [c7];
#                                              [v6][c7] overlay = x = 80 : y = 910 : enable = 'between(t,  2*60+23, 2*60+52)' [v]" \
#   -map "[v]" -y out.mp4

# ffmpeg -i in.mp4 -filter_complex \
#   "[0:v]boxblur = 20 : enable = 'between(t , 0 , 10)' ,  crop = x = 260 : y = 840 : w = 320 : h = 100 [c1];
#                                              [0:v][c1] overlay = x = 260 : y = 840 : enable = 'between(t, 0.00, 10.00)' [v1];
#   [0:v]boxblur = 20 : enable = 'between(t , 0 , 10)' ,  crop = x = 80 : y = 910 : w = 315 : h = 100 [c7];
#                                              [v1][c7] overlay = x = 80 : y = 910 : enable = 'between(t, 0, 10)' [v]" \
#   -map "[v]" -y out.mp4

# b1=20 s1=0.00; f1=10.00; x1=0;    y1=0;   w1=500; h1=500
# b2=30 s2=0.00; f2=10.00; x2=400;  y2=400; w2=600; h2=600
# ffmpeg -i in.mp4 -filter_complex \
#   "[0:v]boxblur = $b1 : enable = 'between(t , $s1 , $f1)' ,  crop = x = $x1 : y = $y1 : w = $w1 : h = $h1 [b1];
#                                              [0:v][b1] overlay = x = $x1 : y = $y1 : enable = 'between(t, $s1, $f1)' [ov1];
#   [0:v]boxblur = $b2 : enable = 'between(t , $s2 , $f2)' ,  crop = x = $x2 : y = $y2 : w = $w2 : h = $h2 [b7];
#                                              [ov1][b7] overlay = x = $x2 : y = $y2 : enable = 'between(t, $s2, $f2)' [v]" \
#   -map "[v]" -y out.mp4

# b1=20 s1=0.00; f1=10.00; x1=0;    y1=0;   w1=500; h1=500
# b2=30 s2=0.00; f2=10.00; x2=400;  y2=400; w2=600; h2=600
# ffmpeg -i in.mp4 -filter_complex \
#   "[0:v]boxblur = $b1 : enable = 'between(t , $s1 , $f1)' ,  crop = x = $x1 : y = $y1 : w = $w1 : h = $h1 [b1];
#                                              [0:v][b1] overlay = x = $x1 : y = $y1 : enable = 'between(t, $s1, $f1)' [v]" \
#   -map "[v]" -y out.mp4

# b1=10 s1=0.00; f1=5.00; x1=0;    y1=0;   w1=500; h1=500
# ffmpeg -i in.mp4 -filter_complex \
#   "[0:v]boxblur = $b1 , crop = x = $x1 : y = $y1 : w = $w1 : h = $h1 [b1];
#                                              [0:v][b1] overlay = x = $x1 : y = $y1 : enable = 'between(t, $s1, $f1)' [v]" \
#   -map "[v]" -y out.mp4

# b1=10 s1=1.00; f1=10.00; x1=100;  y1=100; w1=700; h1=700
# b2=20 s2=2.00; f2=10.00; x2=200;  y2=200; w2=600; h2=600
# b3=30 s3=3.00; f3=10.00; x3=300;  y3=300; w3=500; h3=500
# b4=40 s4=4.00; f4=10.00; x4=400;  y4=400; w4=400; h4=400
# b5=50 s5=5.00; f5=10.00; x5=500;  y5=500; w5=300; h5=300
# b6=60 s6=6.00; f6=10.00; x6=600;  y6=600; w6=200; h6=200
# b7=70 s7=7.00; f7=10.00; x7=700;  y7=700; w7=100; h7=100
# ffmpeg -i in.mp4 -filter_complex \
#  "[0:v]boxblur = $b1 : enable = 'between(t , $s1, $f1)' ,  crop = x = $x1 : y = $y1 : w = $w1 : h = $h1 [box1];
#                                          [0:v][box1] overlay = x = $x1 : y = $y1 : enable = 'between(t, $s1, $f1)' [ovl1];
#   [0:v]boxblur = $b2 : enable = 'between(t , $s2, $f2)' ,  crop = x = $x2 : y = $y2 : w = $w2 : h = $h2 [box2];
#                                         [ovl1][box2] overlay = x = $x2 : y = $y2 : enable = 'between(t, $s2, $f2)' [ovl2];
#   [0:v]boxblur = $b3 : enable = 'between(t , $s3, $f3)' ,  crop = x = $x3 : y = $y3 : w = $w3 : h = $h3 [box3];
#                                         [ovl2][box3] overlay = x = $x3 : y = $y3 : enable = 'between(t, $s3, $f3)' [ovl3];
#   [0:v]boxblur = $b4 : enable = 'between(t , $s4, $f4)' ,  crop = x = $x4 : y = $y4 : w = $w4 : h = $h4 [box4];
#                                         [ovl3][box4] overlay = x = $x4 : y = $y4 : enable = 'between(t, $s4, $f4)' [ovl4];
#   [0:v]boxblur = $b5 : enable = 'between(t , $s5, $f5)' ,  crop = x = $x5 : y = $y5 : w = $w5 : h = $h5 [box5];
#                                         [ovl4][box5] overlay = x = $x5 : y = $y5 : enable = 'between(t, $s5, $f5)' [ovl5];
#   [0:v]boxblur = $b6 : enable = 'between(t , $s6, $f6)' ,  crop = x = $x6 : y = $y6 : w = $w6 : h = $h6 [box6];
#                                         [ovl5][box6] overlay = x = $x6 : y = $y6 : enable = 'between(t, $s6, $f6)' [ovl6];
#   [0:v]boxblur = $b7 : enable = 'between(t , $s7, $f7)' ,  crop = x = $x7 : y = $y7 : w = $w7 : h = $h7 [box7];
#                                         [ovl6][box7] overlay = x = $x7 : y = $y7 : enable = 'between(t,  $s7, $f7)' [v]" \
#   -map "[v]" -y out.mp4

b1=10; s1=1.11; f1=10.11; x1=100;  y1=100; w1=1000; h1=500
b2=20; s2=2.22; f2=10.22; x2=200;  y2=200; w2=1000; h2=500
b3=30; s3=3.33; f3=10.33; x3=300;  y3=300; w3=1000; h3=500
b4=40; s4=4.44; f4=10.44; x4=400;  y4=100; w4=1000; h4=500
b5=50; s5=5.55; f5=10.55; x5=500;  y5=200; w5=1000; h5=500
b6=60; s6=6.66; f6=10.66; x6=600;  y6=300; w6=1000; h6=500
b7=70; s7=7.77; f7=10.77; x7=700;  y7=100; w7=1000; h7=500
ffmpeg -i in.mp4 -filter_complex \
 "[0:v]boxblur=$b1 , crop=$w1:$h1:$x1:$y1 [box1];
  [0:v]boxblur=$b2 , crop=$w2:$h2:$x2:$y2 [box2];
  [0:v]boxblur=$b3 , crop=$w3:$h3:$x3:$y3 [box3];
  [0:v]boxblur=$b4 , crop=$w4:$h4:$x4:$y4 [box4];
  [0:v]boxblur=$b5 , crop=$w5:$h5:$x5:$y5 [box5];
  [0:v]boxblur=$b6 , crop=$w6:$h6:$x6:$y6 [box6];
  [0:v]boxblur=$b7 , crop=$w7:$h7:$x7:$y7 [box7];
                 [0:v][box1] overlay=$x1:$y1 : enable='between(t, $s1, $f1)' [ovl1];
                [ovl1][box2] overlay=$x2:$y2 : enable='between(t, $s2, $f2)' [ovl2];
                [ovl2][box3] overlay=$x3:$y3 : enable='between(t, $s3, $f3)' [ovl3];
                [ovl3][box4] overlay=$x4:$y4 : enable='between(t, $s4, $f4)' [ovl4];
                [ovl4][box5] overlay=$x5:$y5 : enable='between(t, $s5, $f5)' [ovl5];
                [ovl5][box6] overlay=$x6:$y6 : enable='between(t, $s6, $f6)' [ovl6];
                [ovl6][box7] overlay=$x7:$y7 : enable='between(t, $s7, $f7)' [v]" \
  -map "[v]" -y out.mp4

date +"%T"
ls -l out.mp4
read -s -n 1 -p "Press any key to continue ..."
celluloid out.mp4
exit
