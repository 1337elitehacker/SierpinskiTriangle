
public void setup()

{size(900,900);

}
public void draw()


{ background((int)(Math.random()*257));
	sierpinski(700,700,600);
	ellipse(400,500,180,40);
	ellipse(400,500,20,20);
}

public void mouseDragged()//optional
{

}


public void sierpinski(int x, int y, int len)
{
 if (len <= 20)
{  fill((int)(Math.random()*257),(int)(Math.random()*257),(int)(Math.random()*257));
   stroke((int)(Math.random()*257),(int)(Math.random()*257),(int)(Math.random()*257));
   triangle(x-(len/2),y-len,x,y,x-len,y);
}
  else
  {
     sierpinski(x,y,len/2);
     sierpinski(x-(len/2),y,len/2);
     sierpinski(x-(len/4),y-(len/2),len/2);
 }
}

