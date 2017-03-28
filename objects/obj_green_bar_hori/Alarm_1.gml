if(image_yscale>0.2){
   image_yscale-=0.05;
   image_alpha-=0.02;
   alarm[1]=1;
}
else{
   instance_destroy();
}

