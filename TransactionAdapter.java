package com.example.loyaltyfirst;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

public class TransactionAdapter extends RecyclerView.Adapter<TransactionAdapter.ViewHolder> {
    private List<Transaction> transactions;

    // Constructor to pass the list of transactions
    public TransactionAdapter(List<Transaction> transactions) {
        this.transactions = transactions;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        // Inflate the item layout (item_transaction.xml)
        View view = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.item_transaction, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        // Get the transaction for the current position
        Transaction transaction = transactions.get(position);

        // Bind the data to the views
        holder.tvRef.setText("Ref: " + transaction.getRef());
        holder.tvDate.setText("Date: " + transaction.getDate());
        holder.tvPoints.setText("Points: " + transaction.getPoints());
        holder.tvAmount.setText("Amount: " + transaction.getAmount());
    }

    @Override
    public int getItemCount() {
        // Return the total number of items
        return transactions.size();
    }

    // Method to update the transactions in the adapter
    public void updateTransactions(List<Transaction> newTransactions) {
        this.transactions = newTransactions;
        notifyDataSetChanged(); // Notify the adapter of data changes
    }

    // ViewHolder class for caching views
    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView tvRef, tvDate, tvPoints, tvAmount;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            // Initialize the views from item_transaction.xml
            tvRef = itemView.findViewById(R.id.tvRef);
            tvDate = itemView.findViewById(R.id.tvDate);
            tvPoints = itemView.findViewById(R.id.tvPoints);
            tvAmount = itemView.findViewById(R.id.tvAmount);
        }
    }
}
