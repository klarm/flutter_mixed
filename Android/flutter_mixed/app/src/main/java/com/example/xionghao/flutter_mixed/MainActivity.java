package com.example.xionghao.flutter_mixed;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.view.View;
import io.flutter.facade.Flutter;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.activity_main);

        setContentView(R.layout.my_layout);

        findViewById(R.id.btnStartAnotherAty).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                // 跳转到另一个activity
                startActivity(new Intent(MainActivity.this, AnotherAty.class));
            }
        });


//        View flutterView = Flutter.createView(
//                MainActivity.this,
//                getLifecycle(),
//                "route1"
//        );
//        FrameLayout.LayoutParams layout = new FrameLayout.LayoutParams(600, 800);
//        layout.leftMargin = 100;
//        layout.topMargin = 200;
//        addContentView(flutterView, layout);

    }
}
