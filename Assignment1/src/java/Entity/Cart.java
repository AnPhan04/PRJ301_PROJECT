/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import java.util.Vector;

/**
 *
 * @author Tran Tuan
 */
public class Cart {

    private Vector<Item> items;

    public Cart() {
        items = new Vector<>();
    }

    public Cart(Vector<Item> items) {
        this.items = items;
    }

    public Vector<Item> getItems() {
        return items;
    }

    public void setItems(Vector<Item> items) {
        this.items = items;
    }

    //Lấy ra item bởi tên id
    public Item getItemByID(String id, int size) {
        for (Item i : items) {
            if (i.getProduct().getProductID().equals(id) && i.getSize() == size) {
                return i;
            }
        }
        return null;
    }

    //Lấy ra số lượng của item khi thêm vào giỏ hàng
    public int getQuantityByID(String id, int size) {
        return getItemByID(id, size).getQuantity();
    }

    //Thêm vào cart
    public void addItem(Item t) {
        //có ở  giỏ rồi
        if (getItemByID(t.getProduct().getProductID(), t.getSize()) != null) {
            Item i = getItemByID(t.getProduct().getProductID(), t.getSize());
            i.setQuantity(i.getQuantity() + t.getQuantity());
        } else {
            //chưa có
            items.add(t);
        }
    }

    //xóa đi 1 sản phẩm trong giỏ
    public void removeItem(String id, int size) {
        if (getItemByID(id, size) != null) {
            items.remove(getItemByID(id, size));
        }
    }

    //
    public float getTotalMoney() {
        float t = 0;
        for (Item item : items) {
            t += item.getQuantity() * item.getPrice();
        }
        return t;
    }

    private Product getProductByID(String id, Vector<Product> list) {
        for (Product i : list) {
            if (i.getProductID().equals(id)) {
                return i;
            }
        }
        return null;
    }

    public Cart(String txt, Vector<Product> list) {
        items = new Vector<>();
        if (txt != null && txt.length() != 0) {
            String[] s = txt.split("'");
            for (String i : s) {
                String[] n = i.split(":");
                String id = n[0];
                int quantity = Integer.parseInt(n[1]);
                int size = Integer.parseInt(n[2]);
                Product p = getProductByID(id, list);
                Item t = new Item(p, quantity, size, p.getPrice());
                addItem(t);
            }
        }
    }

    @Override
    public String toString() {
        return "Cart{" + "items=" + items + '}';
    }
}
