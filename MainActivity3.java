package com.example.loyaltyfirst;

import android.os.Bundle;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.ArrayList;
import java.util.List;

public class MainActivity3 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main3);

        RecyclerView rvTransactions = findViewById(R.id.rvTransactions);

        // Set up RecyclerView
        rvTransactions.setLayoutManager(new LinearLayoutManager(this));
        TransactionAdapter adapter = new TransactionAdapter(new ArrayList<>());
        rvTransactions.setAdapter(adapter);

        String customerId = getIntent().getStringExtra("cid");
        if (customerId != null) {
            fetchTransactions(customerId, adapter);
        } else {
            Toast.makeText(this, "Customer ID is missing", Toast.LENGTH_SHORT).show();
        }
    }

    private void fetchTransactions(String customerId, TransactionAdapter adapter) {
        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/Transactions.jsp?cid=" + customerId;

        RequestQueue queue = Volley.newRequestQueue(this);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            // Parse response into a list of transactions
            List<Transaction> transactions = new ArrayList<>();
            String[] transactionLines = response.trim().split("\n");

            for (String line : transactionLines) {
                // Assuming the server response format is: "ref,date,points,amount"
                String[] parts = line.split(",");
                if (parts.length == 4) {
                    Transaction transaction = new Transaction(parts[0], parts[1], parts[2], parts[3]);
                    transactions.add(transaction);
                }
            }

            // Update the adapter's data
            adapter.updateTransactions(transactions);
        }, error -> Toast.makeText(MainActivity3.this, "Error fetching transactions", Toast.LENGTH_SHORT).show());

        queue.add(request);
    }
}
