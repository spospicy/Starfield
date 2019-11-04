//your code here
Particle[] part = new Particle[1000];
void setup()
{
	//your code here
	size(750,750);
	for(int i =  0; i < part.length; i++)
	{
		part[i] = new Particle();
	}
	part[0] = new OddballParticle();
}
void mousePressed()
{
	setup();
}
void draw()
{
	//your code here
	background(0);
	for(int i = 0; i < part.length; i++)
	{
		part[i].move();
		part[i].show();
	}
}
class Particle
{
	//your code here
	double myX, myY, mySpeed, myAngle;
	int myColor;
	Particle()
	{ 
		myX = myY = 375;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*6+3;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move()
	{
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY = myY + Math.sin(myAngle) * mySpeed;
		myColor = color(255,255,255,200);
		if (myX >= 745 || myY >= 745)
		{
			myX = 375;
			myY = 375;
			myAngle = Math.random()*2*Math.PI;
		}
		if (myX <= 0 || myY <= 0)
		{
			myX = 375;
			myY = 375;
			myAngle = Math.random()*2*Math.PI;
		}
	}
	void show()
	{
		fill(myColor);
		noStroke();
		ellipse((float)myX,(float)myY,7.5,7.5);
	}
}

class OddballParticle extends Particle //inherits from Particle
{
	//your code here
	OddballParticle()
	{
		myX = myY = 375;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*3+6;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move()
	{
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY = myY + Math.sin(myAngle) * mySpeed;
		if (myX >= 775 || myY >= 775)
		{
			myX = 375;
			myY = 375;
			myAngle = Math.random()*2*Math.PI;
			myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		}
		if (myX <= -25 || myY <= -25)
		{
			myX = 375;
			myY = 375;
			myAngle = Math.random()*2*Math.PI;
			myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		}
	}
	void show()
	{
		fill(myColor);
		noStroke();
		ellipse((float)myX,(float)myY,50,50);
	}
}


