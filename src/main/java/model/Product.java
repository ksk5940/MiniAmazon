package model;

public class Product {
    private int id;
    private String name, desc, image;
    private double price;

    public Product(int id, String name, String desc, String image, double price){
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.image = image;
        this.price = price;
    }
    public int getId(){ return id; }
    public String getName(){ return name; }
    public String getDesc(){ return desc; }
    public String getImage(){ return image; }
    public double getPrice(){ return price; }
}
