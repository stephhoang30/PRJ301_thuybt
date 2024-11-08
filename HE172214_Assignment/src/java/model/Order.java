/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author stephhoang
 */
public class Order {

    private int id;
    private int amount;
    private int accountId;
    private Timestamp createAt;
    List<OrderDetails> listOrderDetails = new ArrayList<>();

    public Order() {
    }

    public Order(int id, int amount, int accountId, Timestamp createAt) {
        this.id = id;
        this.amount = amount;
        this.accountId = accountId;
        this.createAt = createAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public Timestamp getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Timestamp createAt) {
        this.createAt = createAt;
    }

    public List<OrderDetails> getListOrderDetails() {
        return listOrderDetails;
    }

    public void setListOrderDetails(List<OrderDetails> listOrderDetails) {
        this.listOrderDetails = listOrderDetails;
    }

}
