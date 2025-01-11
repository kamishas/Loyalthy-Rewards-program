package com.example.loyaltyfirst;

public class Transaction {
    private String ref;
    private String date;
    private String points;
    private String amount;

    public Transaction(String ref, String date, String points, String amount) {
        this.ref = ref;
        this.date = date;
        this.points = points;
        this.amount = amount;
    }

    public String getRef() {
        return ref;
    }

    public String getDate() {
        return date;
    }

    public String getPoints() {
        return points;
    }

    public String getAmount() {
        return amount;
    }
}
