package com.example.loyaltyfirst;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
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

public class MainActivity6 extends AppCompatActivity {

    private static final String TAG = "MainActivity6";

    private Spinner spinnerTransactions;
    private TextView tvFamilyDetails;
    private ProgressBar progressBar;
    private Button btnAddFamilyPoints;
    private RequestQueue requestQueue;
    private String customerId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main6);

        // Initialize views
        spinnerTransactions = findViewById(R.id.spinnerTransactions);
        tvFamilyDetails = findViewById(R.id.tvFamilyDetails);
        progressBar = findViewById(R.id.progressBar);
        btnAddFamilyPoints = findViewById(R.id.btnAddFamilyPoints);

        // Get customer ID from intent
        customerId = getIntent().getStringExtra("cid");
        if (customerId == null) {
            Toast.makeText(this, "Customer ID is missing.", Toast.LENGTH_SHORT).show();
            return;
        }

        Log.d(TAG, "Customer ID: " + customerId);

        // Initialize request queue
        requestQueue = Volley.newRequestQueue(this);

        // Fetch transaction references for the customer
        fetchTransactionReferences();

        // Set listener for spinner selection
        spinnerTransactions.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String selectedTransaction = parent.getItemAtPosition(position).toString();
                Log.d(TAG, "Spinner Selection: " + selectedTransaction);

                if (!selectedTransaction.equals("Select a transaction")) {
                    // Extract only the transaction reference (e.g., "T001")
                    String transactionRef = selectedTransaction.split(",")[0].split(":")[1].trim();
                    Log.d(TAG, "Extracted Transaction Ref: " + transactionRef);

                    fetchSupportFamilyIncreaseDetails(transactionRef);
                } else {
                    Log.d(TAG, "No valid transaction selected.");
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                // Do nothing
            }
        });

        // Add family points button listener
        btnAddFamilyPoints.setOnClickListener(v -> {
            String familyDetails = tvFamilyDetails.getText().toString();
            if (!familyDetails.contains("Family ID") || !familyDetails.contains("Transaction Points")) {
                Toast.makeText(this, "No valid family details found. Please select a transaction.", Toast.LENGTH_SHORT).show();
                return;
            }

            String familyId = familyDetails.split(",")[0].split(":")[1].trim();
            String pointsToAdd = familyDetails.split(",")[2].split(":")[1].trim();
            addFamilyPoints(familyId, customerId, pointsToAdd);
        });
    }

    private void fetchTransactionReferences() {
        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/Transactions.jsp?cid=" + customerId;
        Log.d(TAG, "Fetching transactions from URL: " + url);
        progressBar.setVisibility(View.VISIBLE);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            progressBar.setVisibility(View.GONE);
            Log.d(TAG, "Transactions Response: " + response.trim());
            populateSpinner(response.trim());
        }, error -> {
            progressBar.setVisibility(View.GONE);
            Log.e(TAG, "Error fetching transactions: " + error.getMessage());
            Toast.makeText(this, "Error fetching transactions.", Toast.LENGTH_SHORT).show();
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

    private void fetchSupportFamilyIncreaseDetails(String transactionRef) {
        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/SupportFamilyIncrease.jsp?tref=" + transactionRef + "&cid=" + customerId;
        Log.d(TAG, "Fetching family increase details from URL: " + url);
        progressBar.setVisibility(View.VISIBLE);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            progressBar.setVisibility(View.GONE);
            Log.d(TAG, "Support Family Details: " + response.trim());
            displaySupportFamilyDetails(response.trim());
        }, error -> {
            progressBar.setVisibility(View.GONE);
            Log.e(TAG, "Error fetching family increase details: " + error.getMessage());
            tvFamilyDetails.setText("No data available.");
        });

        requestQueue.add(request);
    }

    private void displaySupportFamilyDetails(String details) {
        if (details.contains("No data found")) {
            tvFamilyDetails.setText("No data available.");
            return;
        }

        // Directly display the full response
        tvFamilyDetails.setText(details.trim());
    }

    private void addFamilyPoints(String familyId, String customerId, String pointsToAdd) {
        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/FamilyIncrease.jsp?fid=" + familyId + "&cid=" + customerId + "&npoints=" + pointsToAdd;
        Log.d(TAG, "Adding family points with URL: " + url);
        progressBar.setVisibility(View.VISIBLE);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            progressBar.setVisibility(View.GONE);
            Log.d(TAG, "Add Family Points Response: " + response.trim());
            Toast.makeText(this, response.trim(), Toast.LENGTH_SHORT).show();
        }, error -> {
            progressBar.setVisibility(View.GONE);
            Log.e(TAG, "Error adding family points: " + error.getMessage());
            Toast.makeText(this, "Error adding family points.", Toast.LENGTH_SHORT).show();
        });

        requestQueue.add(request);
    }
}
