/* Processing JS for Windows 8 Store App Demo
 * 
 * by Antonius Wiriadjaja <http://antoni.us>
 * November 19, 2012
 *
 * More info at http://antoni.us/tagged/pjswin8/
 *
 * */

___

Running Processing JS Sketches as Windows 8 Store Apps

As part of my creative fellowship with ITP and Mindspark, I get to play around with Windows 8 and Windows RT app development. Since I belong to the Dan Shiffman school of coding, I mostly make things with Processing. And when I discovered that Windows 8 apps can be built with javascript, I got majorly excited because I realized all my processing sketches can run as Windows 8 Apps.

http://farm9.staticflickr.com/8347/8201058144_e330ea04a0_c.jpg

Also, ever since the Microsoft’s Windows RT Surface was released, one of my main questions was how do I run apps on the thing since the device can’t run executables. Luckily, Microsoft provides a pretty good tutorial on how to set up remote debugging on your device. Which means that all my Processing sketches can now run on any Windows 8 or Windows RT slate.

Tools needed:
Processing 2.0+
Microsoft Visual Studio Express 2012 for Windows 8
Optional: Surface with Remote Tools for Visual Studio 2012 installed

Step 1:
In processing, switch to javascript mode and go to javascript > start custom template
http://farm9.staticflickr.com/8068/8199573481_3da79b2919_o.jpg

Step 2:
Processing will make a new template folder in your sketch folder with a template.html file that you can customize. Delete that template, copy the PJSWin8template into the folder and rename it to template.html
http://farm9.staticflickr.com/8062/8200665616_65a4904c7c_c.jpg

Step 3:
Run your sketch in javascript mode. You should notice the page looks different from a regular Processing JS sketch.
http://farm9.staticflickr.com/8065/8199573353_ee5302d224_c.jpg

Step 4:
Load up Visual Studio and make a new project. From the templates, select Javascript > Windows Store > Fixed Layout App.
http://farm9.staticflickr.com/8479/8200665500_61edc5ab74_c.jpg

Step 5:
In the Solution Explorer, right click on your project’s main folder, and select Add > Existing Item...
http://farm9.staticflickr.com/8481/8199573241_4a741fdeed_c.jpg

Step 6:
Browse to your Processing Sketch’s web-export folder and select all the files in it.
http://farm9.staticflickr.com/8205/8200665394_f4cbb6a51e_o.jpg

Step 7:
Delete the default.html file
http://farm9.staticflickr.com/8060/8199573129_d716c6cd94_c.jpg

and rename the index.html to default.html
http://farm9.staticflickr.com/8067/8200665290_607aebcdc1_c.jpg

Step 8:
Your app should be ready to roll! Build it on your local machine.
http://farm9.staticflickr.com/8204/8199573047_dd9038269c_o.jpg

Loading your app to a Windows RT device or a Windows 8 slate needs a little more setup, but once you’ve got the proper tools installed it should be smooth sailing.

Step 9:
On your device, download the Remote Tools for Visual Studio 2012 for your appropriate device (MS Surface needs the ARM version). Follow the install wizard to let the remote debugger change the firewall settings on your device. You will need administrator access and also a developer’s license. While you’re here, you probably want to find out your device’s IPv4. Search for ‘cmd’ and  Find out your device’s IPv4 by searching for the ‘cmd’ app and entering ‘ipconfig’ on the command prompt.
http://farm9.staticflickr.com/8206/8199896581_8efe4afc0b_c.jpg

Step 10:
Make sure your PC and your device are connected on the same network via wifi, or connect the two via the PC’s Ethernet to the device’s USB. Then, on your PC, go to your Visual Studio project’s Property Pages (Project > Properties) and under debugging, select Remote Machine under debugger to launch. Enter your device’s IPv4 or its name (I found using the IPv4 to be more successful).
http://farm9.staticflickr.com/8199/8199818521_d9c31e189f_c.jpg

Step 11:
Run the Remote Debugger app on your device. You can change the port and authentication mode via Tools > Options. If you’re on a secure network, it might be easier to choose No Authentication and Allow any user to debug.


Step 12:
You’re ready to roll! Debug as ‘Remote Machine’ and if you configured everything right, your app should run on your remote device. Usually the app will run very slowly the first time, so I go back to the device’s start screen scroll to the far right and run it again.
http://farm9.staticflickr.com/8341/8200962430_5c896f061f_o.jpg
http://farm9.staticflickr.com/8346/8199896509_05a50b88a9_c.jpg

Here’s video proof:
http://www.flickr.com/photos/31090466@N08/8200983296/

Pro tip: The surface’s keyboard doesn’t have a Prtn Scrn button, but it can still take screenshots? Just hold down on the Windows logo, and press the down volume button. It saves your files to libraries \ pictures \ screenshots