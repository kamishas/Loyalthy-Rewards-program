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

public class MainActivity5 extends AppCompatActivity {

    private Spinner spinnerPrizeIds;
    private TextView tvPrizeDescription, tvPointsNeeded, tvRedemptionDetails;
    private ProgressBar progressBar;
    private RequestQueue requestQueue;
    private String customerId;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main5);

        // Initialize views
        spinnerPrizeIds = findViewById(R.id.spinnerPrizeIds);
        tvPrizeDescription = findViewById(R.id.tvPrizeDescription);
        tvPointsNeeded = findViewById(R.id.tvPointsNeeded);
        tvRedemptionDetails = findViewById(R.id.tvRedemptionDetails);
        progressBar = findViewById(R.id.progressBar);

        // Get customer ID from intent
        customerId = getIntent().getStringExtra("cid");
        if (customerId == null) {
            Toast.makeText(this, "Customer ID is missing.", Toast.LENGTH_SHORT).show();
            return;
        }

        // Initialize request queue
        requestQueue = Volley.newRequestQueue(this);

        // Fetch prize IDs for the customer
        fetchPrizeIds();

        // Spinner selection listener
        spinnerPrizeIds.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String selectedPrize = parent.getItemAtPosition(position).toString();
                if (!selectedPrize.equals("Select a Prize ID")) {
                    String prizeId = selectedPrize.split(":")[1].trim(); // Extract Prize ID
                    fetchRedemptionDetails(prizeId);
                }
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
                // Do nothing
            }
        });
    }

    private void fetchPrizeIds() {
        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/PrizeIds.jsp?cid=" + customerId;
        progressBar.setVisibility(View.VISIBLE);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            progressBar.setVisibility(View.GONE);
            Log.d("DEBUG", "Prize IDs Response: " + response);
            populateSpinner(response.trim());
        }, error -> {
            progressBar.setVisibility(View.GONE);
            Log.e("ERROR", "Failed to fetch prize IDs: " + error.getMessage());
            Toast.makeText(this, "Error fetching prize IDs.", Toast.LENGTH_SHORT).show();
        });

        requestQueue.add(request);
    }

    private void populateSpinner(String response) {
        String[] prizes = response.split("\n");
        List<String> prizeList = new ArrayList<>();
        prizeList.add("Select a Prize ID"); // Default spinner option

        for (String prize : prizes) {
            prizeList.add(prize.trim());
        }

        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, prizeList);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinnerPrizeIds.setAdapter(adapter);
    }

    private void fetchRedemptionDetails(String prizeId) {
        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/RedemptionDetails.jsp?prizeid=" + prizeId + "&cid=" + customerId;
        progressBar.setVisibility(View.VISIBLE);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            progressBar.setVisibility(View.GONE);
            Log.d("DEBUG", "Redemption Details Response: " + response);
            if (response.isEmpty() || response.startsWith("No redemption history")) {
                Toast.makeText(this, "No redemption history found.", Toast.LENGTH_SHORT).show();
            } else {
                displayRedemptionDetails(response.trim());
            }
        }, error -> {
            progressBar.setVisibility(View.GONE);
            Log.e("ERROR", "Failed to fetch redemption details: " + error.getMessage());
            Toast.makeText(this, "Error fetching redemption details.", Toast.LENGTH_SHORT).show();
        });

        requestQueue.add(request);
    }

    private void displayRedemptionDetails(String details) {
        String[] lines = details.split(", ");
        try {
            tvPrizeDescription.setText(lines[0].split(":")[1].trim());
            tvPointsNeeded.setText(lines[1].split(":")[1].trim());
            tvRedemptionDetails.setText(details.replaceAll(", ", "\n").trim());
        } catch (ArrayIndexOutOfBoundsException e) {
            Log.e("ERROR", "Failed to parse redemption details: " + e.getMessage());
            Toast.makeText(this, "Error displaying redemption details.", Toast.LENGTH_SHORT).show();
        }
    }
}
