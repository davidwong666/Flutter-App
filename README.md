# firstapp
<h2>Introduction</h2>

This is a counter app written in **dart**.  
It contains **2** tabs.  
The lower tab is the **Add** button.  
The upper tab shows the **number of times the button is clicked**.  
Click the button to start counting!    
You can run the program by executing the following command to the terminal:  
`flutter run lib\main.dart`  
And then choose the desired environment or device.

<h2>Working principles:</h2>

1. A provider **ChangeNotifierProvider** helps pass the change in data to the widget updating the count every time the button is clicked.
2. The title is aligned at the center on the top by setting `centerTitle` to true.
3. Two tabs are separated evenly using `MainAxisAlignment.spaceEvenly`
4. Both tabs (the count and the button) are aligned at the center of the body. Noted that they are in a *column widget*.
5. The column widget contains **2** children, `Text` and `FloatingActionButton`.
6. `Text` refers to the number of counts.
7. `FloatingActionButton` refers to the button.
