package com.app.geometry;

public class point2D
{
    private int x,y;

    public point2D(int x, int y)
    {
        this.x=x;
        this.y=y;
    }
    public String getDetails()
    {
        return "x-co-ordinate : "+x+" y-co-ordinate : "+y;
    }
    public boolean isEqual(point2D gps)
    {
        return (this.x==gps.x && this.y==gps.y);
    }
    public double calculateDistance(point2D gps)
    {
        double distance = Math.hypot(this.x-gps.x,this.y-gps.y);
        return distance;
    } 
    public double distance(point2D gps)
    {
        double d = Math.pow(this.x-gps.x, 2) + Math.pow(this.y-gps.y, 2);
        return Math.sqrt(d);
    }

}