package com.example.loyaltyfirst;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.squareup.picasso.Picasso;

import de.hdodenhof.circleimageview.CircleImageView;

public class MainActivity2 extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        TextView tvCustomerInfo = findViewById(R.id.tvCustomerInfo);
        CircleImageView ivCustomerPhoto = findViewById(R.id.ivCustomerPhoto);
        Button btnViewTransactions = findViewById(R.id.btnViewTransactions);
        Button btnTransactionDetails = findViewById(R.id.btnTransactionDetails); // Navigate to Transaction Details
        Button btnRedeemDetails = findViewById(R.id.btnRedeemDetails); // Navigate to Redeem Details
        Button btnAddFamilyPoints = findViewById(R.id.btnAddFamilyPoints); // Navigate to Add Family Points
        Button btnPrizeDetails = findViewById(R.id.btnPrizeDetails); // Navigate to Prize Details

        String customerId = getIntent().getStringExtra("cid");
        Log.d("DEBUG", "Customer ID Passed to Info.jsp: " + customerId);

        if (customerId != null) {
            fetchCustomerInfo(customerId, tvCustomerInfo, ivCustomerPhoto);
        } else {
            Toast.makeText(this, "Customer ID is missing", Toast.LENGTH_SHORT).show();
        }

        btnViewTransactions.setOnClickListener(v -> {
            Intent intent = new Intent(MainActivity2.this, MainActivity3.class);
            intent.putExtra("cid", customerId);
            startActivity(intent);
        });

        btnTransactionDetails.setOnClickListener(v -> {
            Intent intent = new Intent(MainActivity2.this, MainActivity4.class);
            intent.putExtra("cid", customerId);
            startActivity(intent);
        });

        btnRedeemDetails.setOnClickListener(v -> {
            Intent intent = new Intent(MainActivity2.this, MainActivity5.class);
            intent.putExtra("cid", customerId);
            startActivity(intent);
        });

        btnAddFamilyPoints.setOnClickListener(v -> { // Navigate to MainActivity6
            Intent intent = new Intent(MainActivity2.this, MainActivity6.class);
            intent.putExtra("cid", customerId);
            startActivity(intent);
        });

        btnPrizeDetails.setOnClickListener(v -> {
            Intent intent = new Intent(MainActivity2.this, MainActivity5.class);
            intent.putExtra("cid", customerId);
            startActivity(intent);
        });
    }

    private void fetchCustomerInfo(String customerId, TextView tvCustomerInfo, CircleImageView ivCustomerPhoto) {
        Log.d("DEBUG", "Customer ID Passed to Info.jsp: " + customerId);

        String url = "http://10.0.2.2:8080/shasank/loyaltyfirst/Info.jsp?cid=" + customerId;
        RequestQueue queue = Volley.newRequestQueue(this);

        StringRequest request = new StringRequest(Request.Method.GET, url, response -> {
            Log.d("DEBUG", "Customer Info Response: " + response.trim());
            tvCustomerInfo.setText(response.trim());
            Picasso.get()
                    .load("http://10.0.2.2:8080/shasank/loyaltyfirst/images/" + customerId + ".jpeg")
                    .into(ivCustomerPhoto);
        }, error -> {
            Log.e("DEBUG", "Error fetching customer info: " + error.getMessage());
            Toast.makeText(MainActivity2.this, "Error fetching customer info", Toast.LENGTH_SHORT).show();
        });

        queue.add(request);
    }
}
