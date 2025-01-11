package com.example.loyaltyfirst;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ProgressBar;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.ArrayList;
import java.util.List;

public class MainActivity4 extends AppCompatActivity {

    private Spinner spinnerTransactions;
    private TextView tvTransactionDetails;
    private ProgressBar progressBar;
    private RequestQueue requestQueue;
    private String customerId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main4);

        // Initialize views
        spinnerTransactions = findViewById(R.id.spinnerTransactions);
        tvTransactionDetails = findViewById(R.id.tvTransactionDetails);
        progressBar = findViewById(R.id.progressBar);

        // Get customer ID from the intent
        customerId = getIntent().getStringExtra("cid");

        if (customerId != null) {
            requestQueue = Volley.newRequestQueue(this);
            fetchTransactionReferences();
        } else {
            Toast.makeText(this, "Customer ID is missing", Toast.LENGTH_SHORT).show();
        }

        // Set spinner selection listener
        spinnerTransactions.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String selectedTransaction = parent.getItemAtPosition(position).toString();
                if (!selectedTransaction.equals("Select a transaction")) {
                    fetchTransactionDetails(selectedTransaction);
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                // Do nothing
            }
        });
    }

    private void fetchTransactionReferences() {
        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/Transactions.jsp?cid=" + customerId;
        progressBar.setVisibility(View.VISIBLE);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            progressBar.setVisibility(View.GONE);
            populateSpinner(response.trim());
        }, error -> {
            progressBar.setVisibility(View.GONE);
            Toast.makeText(this, "Error fetching transaction references", Toast.LENGTH_SHORT).show();
        });

        requestQueue.add(request);
    }

    private void populateSpinner(String response) {
        String[] transactions = response.split("\n");
        List<String> transactionList = new ArrayList<>();
        transactionList.add("Select a transaction"); // Default spinner option
        for (String transaction : transactions) {
            transactionList.add(transaction.trim());
        }

        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, transactionList);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinnerTransactions.setAdapter(adapter);
    }

    private void fetchTransactionDetails(String transactionRef) {
        // Extract tref from the selected transaction
        String tref = transactionRef.split(",")[0].split(":")[1].trim(); // Extract "T0051"

        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/TransactionDetails.jsp?tref=" + tref;
        progressBar.setVisibility(View.VISIBLE);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            progressBar.setVisibility(View.GONE);
            if (response.isEmpty() || response.startsWith("No details")) {
                Toast.makeText(this, "No details available for this transaction", Toast.LENGTH_SHORT).show();
            } else {
                displayTransactionDetails(response.trim());
            }
        }, error -> {
            progressBar.setVisibility(View.GONE);
            Toast.makeText(this, "Error fetching transaction details", Toast.LENGTH_SHORT).show();
        });

        requestQueue.add(request);
    }

    private void displayTransactionDetails(String details) {
        // Ensure response formatting matches expected display logic
        details = details.replaceAll("<br>", "\n").trim(); // Replace HTML breaks with newlines
        tvTransactionDetails.setText(details);
    }
}
