package model;

import java.util.ArrayList;
import java.util.List;

public class ProductList {
    public static List<Product> getProducts(){
        List<Product> products = new ArrayList<>();
        products.add(new Product(1,"Laptop","High performance laptop.","assets/01.jpg",1200.0));
        products.add(new Product(2,"Phone","Latest model smartphone.","assets/02.jpg",800.0));
        products.add(new Product(3,"Tablet","Lightweight tablet device.","assets/03.jpg",500.0));
        products.add(new Product(4,"Headphones","Noise-cancelling headphones.","assets/04.jpg",150.0));
        products.add(new Product(5,"Camera","Digital SLR camera.","assets/05.jpg",700.0));
        products.add(new Product(6,"Smart Watch","Feature-rich smart watch.","assets/06.jpg",350.0));
        products.add(new Product(7,"Speaker","Portable Bluetooth speaker.","assets/07.jpg",120.0));
        products.add(new Product(8,"Monitor","24-inch LED monitor.","assets/08.jpg",250.0));
        products.add(new Product(9,"Keyboard","Wireless keyboard.","assets/09.jpg",60.0));
        products.add(new Product(10,"Mouse","Ergonomic wireless mouse.","assets/10.jpg",40.0));
        return products;
    }
}
