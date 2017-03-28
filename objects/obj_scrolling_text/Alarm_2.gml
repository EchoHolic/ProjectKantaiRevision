if(image_alpha>0){
   image_alpha-=0.06;
   x-=3;
   alarm[2]=1;
}
else{
   instance_destroy();
}

