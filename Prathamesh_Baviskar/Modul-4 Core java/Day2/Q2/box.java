class box 
{
    private double width, depth, height;
    private String color;

    box(double width, double d, double height)
    {
        this.width = width;// this : mandatory
        depth = d;// this : optional
        this.height = height;// this : mandatory
    }
    box(double width, double d, double height, String color)
    {
        this(width, d, height);
        this.color=color;
    }
    box(double side) 
    {
        // width = depth = height = side;
        this(side, side, side);// constructor chaining
    }
    box(double side, String color) 
    {
        // width = depth = height = side;
        this(side, side, side);// constructor chaining
        this.color=color;
    }
    box() 
    {
        // width=depth=height=-1;
        // this(-1,-1,-1);
        // System.out.println("in arg-less ctor");
        this(-1);// ctor chaining
    }

    String getBoxDimensions() 
    {
        return "Box Dims " + this.width + " " + depth + " " + this.height;
    } 
    double getBoxVolume() 
    {
        return width * depth * height;
    }
    boolean isEqual(box anotherBox) 
    {
        return this.width == anotherBox.width
         && depth == anotherBox.depth
         && height == anotherBox.height;
    }
    box createNewBox(double wOff, double dOff, double hOff) {
        box newBox = new box(this.width + wOff, this.depth + dOff, this.height + hOff);
        System.out.println("newbox hashcode " + newBox.hashCode());
        return newBox;
    }
    String getColor()
    {
        return color;
    }
}
