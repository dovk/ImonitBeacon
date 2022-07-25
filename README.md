IMONIT is an Attendance and Tasks app, developed with Ionic/Angular and Firebase (RT).
It also uses a Nodejs/Express server to handle API calls and backend tasks such as reports and payments (PayPal and Stripe).
The mobile client uses Cordova plugins to implement Geofencing (Foreground and Background location).

In our experience this has not been an ideal solution because of issues relating to permissions, accuracy, and availability.
We also do not need to track the user all of the time – we only need to know when the user enters or leaves the workplace.

As a result, we started to look at the alternative of using BLE Beacons instead,
These would be placed at the workplace entrance and exit and the app could clock the user in and out of work automatically.
We have already tested this in the app, and we have seen that it works when the app is active and in the background.

We have read that it is possible to have the app respond to the BLE beacon even when it is closed, but as of yet are not sure how to achieve this.
We weren't clear as to the purpose and use of plugins such as Background Mode, Autostart, Background Fetch, FCM and others in that respect.
For now we have included BackgroundMode and Autostart, and we enable them in app.component.ts
We would like to know if and how it is possible to ensure that the app will always respond to the beacon, and if so, how to implement this in the best possible way.

The code was taken from our working ap and is the minimal needed to test - 
app.component.ts invokes the service s_permissions to check and set the relevant permissions (using the Android permissions plugin).
We also perform BackgroundMode.enable() and Autostart,enable() there as well, although we're not sure if these are needed or properly configured.
Another service called s_memcache serves as a common memory object that holds data like a global variable which is then available throughout the app.
There is only one page called Home which invokes the iBeacon
