import processing.pdf.*;
import ddf.minim.*;
Minim minim;
AudioPlayer sound_play;
boolean rect1over=false;
Boolean rect2over=false,click=false,save_pd=false,save_jpg=false,color_set=false,
media_play=false,image=false;
boolean circleover=false,lineover=false,freeover=false,mousep=false;
int x1=0, x2=0, y1=0, y2=0;
int flag=0,set=0;
int mousecount=0;
int a[]=new int[0];
int b[]=new int[0];
int c[]=new int[0];
int d[]=new int[0];
int p[]=new int[0];
int q[]=new int[0];
int r[]=new int[0];
int s[]=new int[0];
int w[]=new int[0];
int x[]=new int[0];
int y[]=new int[0];
int z[]=new int[0];
void setup() {
  size(700,500);
  beginRecord(PDF,"sketch.pdf");
  smooth();
  rect(10, 10, 40, 20);
  rect(15,15,30,10);
  rect(70, 10, 40, 20);
  rect(130, 10, 40, 20);
  line(71,10,110,30);
  ellipse(150,20,40,20);
  rect(190,10,40,20);
  strokeWeight(2.0);
  line(192,10,230,30);
  stroke(255,0,0);
  line(0,40,width,40);
  stroke(0);
  strokeWeight(1.0);
  rect(250,10,55,20);
  fill(0, 102, 153, 204);
  text("free hand",253,25);
  rect(325,10,55,20);
  fill(0, 102, 153, 204);
  text("save pdf",327,25);
  rect(400,10,55,20);
  fill(0, 102, 153, 204);
  text("save img",402,25);
  fill(255);
  rect(475,10,55,20);
  fill(0, 102, 153, 204);
  text("color",479,25);
  rect(550,10,55,20);
  fill(0, 102, 153, 204);
  text("media",554,25);
  rect(625,10,55,20);
  fill(0, 102, 153, 204);
  text("image",629,25);
  minim=new Minim(this);
  sound_play=minim.loadFile("1.mp3");  
}
void draw()
{  
  //background(204);
  update();
  //if (rect1over == true && flag == 2){
    //rect(x1,y1, x2, y2);        
  // }  
  if (freeover == true && flag==1 && mousep==true ){
    if(pmouseY>40 &&mouseY>40)
        line(pmouseX,pmouseY,mouseX,mouseY);
  }
  if(media_play)
  {
    background(128,128,128);
    stroke(0);
    rect(100,100,500,300);
    fill(255,255,0);
    textSize(20);
    text("DRDO PLAYER",300,130);     
    text("PRESS:- A TO play music",130,180);
    text("PRESS:- B TO rewind music",130,230);
    text("PRESS:- C TO pause music",130,280);
    text("PRESS:- X TO exit music player",130,330);    
  }
}
void update()
{
  if (overrect(10, 10, 40, 20))
  {
    if(click==true && media_play==false){
        rect1over=true;
        rect2over=false;
        circleover=false;
        freeover=false;
        lineover=false;
        media_play=false;
        save_jpg=false;
        //color_set=true;
        save_pd=false;
        fill(204);
        rect(10, 10, 40, 20);
        rect(15,15,30,10);
       }
    else if(mouseY>10 && mouseY<30){
        fill(204);
        rect(10, 10, 40, 20);
        rect(15,15,30,10);
      }
    }   
  else
  {
      fill(255);
      rect(10, 10, 40, 20);
      rect(15,15,30,10);
  }    
    mousecount=1;
    if (overrect(70, 10, 40, 20)) {
      if(click==true && media_play==false){
          rect2over=true;
          rect1over=false;
          circleover=false;
          media_play=false;
          freeover=false;
          lineover=false;
          save_jpg=false;
        //color_set=true;
          save_pd=false;
          fill(204);
          mousecount=1;
          rect(70, 10, 40, 20);
      }   
      else {
          fill(204);
          rect(70, 10, 40, 20);
          line(71,10,110,30);
      }
    }
    else {
      fill(255);
      rect(70, 10, 40, 20);
      line(71,10,110,30);      
    }    
    if (overrect(130, 10, 40, 20)) {
        if(click==true&&media_play==false){
            circleover=true;
            rect1over=false;
            rect2over=false;
            lineover=false;
            freeover=false;
            media_play=false;
            save_jpg=false;
           //color_set=true;
            save_pd=false;
            mousecount=1;
         }
        else if(mouseY>10&&mouseY<30){
            fill(204);
            rect(130,10,40,20);
            ellipse(150,20,40,20);    
         }
    }
    else
    {
      fill(255);
      rect(130,10,40,20);
      ellipse(150,20,40,20);  
    }
    if (overrect(190, 10, 40, 20)) {
      if(click==true&&media_play==false){
          circleover=false;
          rect1over=false;
          rect2over=false;
          lineover=true;
          freeover=false;
          save_pd=false;
          media_play=false;
          save_jpg=false;
         //color_set=true;
          mousecount=1;
        }
     else if(mouseY>10&&mouseY<30){
         fill(204);
         rect(190,10,40,20);
         strokeWeight(2.0);
         line(192,10,230,30);
         strokeWeight(1.0);    
       }
    }
    else
      {
        fill(255);
        rect(190,10,40,20);
        strokeWeight(2.0);
        line(192,10,230,30);
        strokeWeight(1.0);     
      }   
   if (overrect(250, 10, 55, 20)) {
    if(click==true&&media_play==false){
        circleover=false;
        rect1over=false;
        rect2over=false;
        freeover=true;
        media_play=false;
        lineover=false;
        save_jpg=false;
       //color_set=true;
        save_pd=false;
        mousecount=1;
    }
   else if(mouseY>10&&mouseY<30){
       fill(204);
       rect(250,10,55,20);
       fill(0, 102, 153, 204);
       text("free hand",253,25);  
    }
  }
  else
  {
      fill(255);
      rect(250,10,55,20);
      fill(0, 102, 153, 204);
      text("free hand",253,25);
  }
  
  if (overrect(325, 10, 55, 20)) {
    if(click==true && media_play==false){
       circleover=false;
       rect1over=false;
       rect2over=false;
       freeover=false;
       lineover=false;
       media_play=false;
     //color_set=true;
       save_jpg=false;
       save_pd=true;
       endRecord();
       exit();     
       mousecount=1;
  }
   else if(mouseY>10 && mouseY<30){
     fill(204);
     rect(325,10,55,20);
     fill(0, 102, 153, 204);
     text("save pdf",327,25);  
    }
  }
  else
  {
     fill(255);
     rect(325,10,55,20);
     fill(0, 102, 153, 204);
     text("save pdf",327,25);
  }
  
  if (overrect(400,10, 55, 20)) {
    if(click==true && media_play==false){
         circleover=false;
         rect1over=false;
         rect2over=false;
         freeover=false;
         lineover=false;
         save_pd=false;
         save_jpg=true;
         media_play=false;
         //color_set=true;
         saveFrame("drawing.jpg");
         exit();   
         mousecount=1;
      }
   else if(mouseY>10&&mouseY<30){
         fill(204);
         rect(400,10,55,20);
         fill(0, 102, 153, 204);
         text("save img",402,25);  
      }
  }
  else
  {
      fill(255);
      rect(400,10,55,20);
      fill(0, 102, 153, 204);
      text("save img",402,25);
  }  
  
  if (overrect(475,10, 55, 20)) {
    if(click==true && media_play==false){
           circleover=false;
           rect1over=false;
           rect2over=false;
           freeover=false;
           lineover=false;
           save_pd=false;
           save_jpg=false;
           media_play=false;
           if(color_set==true) {
              if(mousePressed)
                 color_set=false;
           }
           else {
             if(mousePressed)
                 color_set=true;
           }
           println(color_set);
           mousecount=1;
     }
     
   else if(mouseY>10&&mouseY<30){
         fill(204);
         rect(475,10,55,20);
         fill(0, 102, 153, 204);
         text("color",479,25);  
      }
  }
  else
  {
      fill(255);
      rect(475,10,55,20);
      fill(0, 102, 153, 204);
      text("color",479,25);
  }
  
  if (overrect(550,10, 55, 20)) {
    if(click==true && media_play==false){
         circleover=false;
         rect1over=false;
         rect2over=false;
         freeover=false;
         lineover=false;
         save_pd=false;
         save_jpg=false;
         media_play=true;
         image=false;          
         mousecount=1;
     }
    else if(mouseY>10&&mouseY<30){
         fill(204);
         rect(550,10,55,20);
         fill(0, 102, 153, 204);
         text("media",554,25);
     }
  }
  else
  {
      fill(255);
      rect(550,10,55,20);
      fill(0, 102, 153, 204);
      text("media",554,25);
  }
  if (overrect(625,10, 55, 20)) {
    if(click==true && media_play==false){
         circleover=false;
         rect1over=false;
         rect2over=false;
         freeover=false;
         lineover=false;
         save_pd=false;
         save_jpg=false;
         image=true;
         media_play=false;        
         mousecount=1;
  }
   else if(mouseY>10&&mouseY<30){
         fill(204);
         rect(625,10,55,20);
         fill(0, 102, 153, 204);
         text("image",629,25);
    }
  }
  else
  {
         fill(255);
         rect(625,10,55,20);
         fill(0, 102, 153, 204);
         text("image",629,25);
  }    
}
boolean overrect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  }
  else 
    return false;
}
void mousePressed() {
    if(mouseY < 40)
          click=true;
    if (mouseY >= 40) {
          mousep=true;
          x1=mouseX;
          y1=mouseY;
    
    if(rect1over==true){
          a=append(a,mouseX);
          b=append(b,mouseY);
    }
    if(rect2over==true){
          p=append(p,mouseX);
          q=append(q,mouseY);
    }
    if(circleover==true){
          w=append(w,mouseX);
          x=append(x,mouseY);
    }    
    click=false;
    flag=1;
 }
}
void mouseDragged()
{
  if(set==1)
    fill(255,0,0);
  if(set==0)
    fill(255);
  if(set==3)
    fill(0,255,0);
  if(set==4)
    fill(0,0,255);
  if(set==5)
    fill(128,0,128);
  if(set==6)
    fill(255,0,255);
  if(set==7)
    fill(0,255,255);
  if(set==8)
    fill(255,255,0);
  if(set==9)
    fill(128,128,128);    
  if(mousecount == 1 && flag == 1 && rect1over == true)
  {
    if(y1>40 && mouseY>40 && (x1+(mouseX-x1)) < width && (y1+(mouseY-y1)) < height )
                  rect(x1,y1,mouseX-x1,mouseY-y1);    
  }
  if(mousecount == 1 && flag == 1 && circleover == true)
  {
    if((y1-(mouseY-y1)/2)>40 && (x1-(mouseX-x1)/2)>0 && (x1-(mouseX+x1)/2)<width && (y1-(mouseY+y1)/2)<height)
        ellipse(x1,y1,mouseX-x1,mouseY-y1);
  }
}
void mouseReleased()
{
  if(set==1)
    fill(255,0,0);
  if(set==0)
    fill(255);
  if(set==3)
    fill(0,255,0);
  if(set==4)
    fill(0,0,255);
  if(set==5)
    fill(128,0,128);
  if(set==6)
    fill(255,0,255);
  if(set==7)
    fill(0,255,255);
  if(set==8)
    fill(255,255,0);
  if(set==9)
    fill(128,128,128);    
  mousep=false;
  if(flag == 2 && rect1over == true){
     c=append(c,mouseX);
     d=append(d,mouseY);
     rect(x1,y1,mouseX-x1,mouseY-y1);
  }
  if(flag == 1 && rect2over == true){
    if(mouseY>40)
      line(x1,y1,mouseX,mouseY);
     r=append(r,mouseX);
     s=append(s,mouseY);
  }
  if(flag == 2 && circleover == true)
  {
     ellipse(x1,y1,mouseX-x1,mouseY-y1);
     y=append(y,mouseX);
     z=append(z,mouseY);    
  }
  if(flag == 1 && lineover == true){
    strokeWeight(2.0);
    if(mouseY>40)
      line(x1,y1,mouseX,mouseY);
  }    
}
void keyPressed()
{
  if(key=='s')
  {
    String rects[]=new String[a.length];
    for(int j=0;j<a.length;j++)
    {
       rects[j]=a[j] + " " + b[j] + " " + c[j] + " " + d[j];
       print(a[j]);
    }
    saveStrings("rects.txt",rects);    
    
    String lines[]=new String[p.length];
    for(int j=0;j<p.length;j++)
    {
       lines[j]=p[j] + " " + q[j] + " " + r[j] + " " + s[j];
       print(p[j]);
    }
    saveStrings("lines.txt",lines);    
    String circles[]=new String[w.length];
    for(int j=0;j<w.length;j++)
    {
       circles[j]=w[j] + " " + x[j] + " " + y[j] + " " + z[j];
       print(w[j]);
    }
    saveStrings("circles.txt",circles);
    exit();    
  }
  if(key=='r' && color_set==true)
      set=1;  
  if(key=='G' && color_set==true)
      set=3;  
  if(key=='b' && color_set==true)
      set=4;  
  if(key=='p' && color_set==true)
      set=5;
  if(key=='m' && color_set==true)
      set=6;
  if(key=='c' && color_set==true)
      set=7;
  if(key=='y' && color_set==true)
      set=8;
  if(key=='g' && color_set==true)
      set=9;
  if(key=='a')
  {
    if (! sound_play.isPlaying())
      {
          sound_play.play();
      }
  }
  if(key=='b')
    sound_play.rewind();
  if(key=='c')
    sound_play.pause();
}
