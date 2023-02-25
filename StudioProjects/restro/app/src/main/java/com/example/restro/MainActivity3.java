package com.example.restro;

import static com.example.restro.R.id.imageButton3;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;



public class MainActivity3 extends AppCompatActivity {

        ImageButton imagebutton3;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main4);



        imagebutton3 = (ImageButton) findViewById(imageButton3);

        // Add_button add clicklistener
        imagebutton3.setOnClickListener(new View.OnClickListener() {

            public void onClick(View v)
            {

                // Intents are objects of the android.content.Intent type. Your code can send them
                // to the Android system defining the components you are targeting.
                // Intent to start an activity called SecondActivity with the following code:

                Intent intent = new Intent(MainActivity3.this, MainActivity4.class);

                // start the activity connect to the specified class
                startActivity(intent);
        }
    });
    }}



