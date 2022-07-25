import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar';

import { MyApp } from './app.component';
import { HomePage } from '../pages/Home/Home';
import { s_memcache } from '../components/services/s_memcache';
import { s_permissions } from '../components/services/s_permissions';

import {IBeacon} from "@ionic-native/ibeacon/ngx";
import {LocationAccuracy} from '@ionic-native/location-accuracy/ngx';
import {AndroidPermissions} from '@ionic-native/android-permissions/ngx';
import { BackgroundMode } from '@ionic-native/background-mode/ngx';
import { Autostart } from '@ionic-native/autostart/ngx';


@NgModule({
    declarations: [
        MyApp,
        HomePage
    ],
    imports: [
        BrowserModule,
        IonicModule.forRoot(MyApp)
    ],
    bootstrap: [IonicApp],
    entryComponents: [
        MyApp,
        HomePage
    ],
    providers: [
        LocationAccuracy,
        AndroidPermissions,
        Autostart,
    BackgroundMode,
    s_permissions,
        s_memcache,
        IBeacon,
        SplashScreen,
        {provide: ErrorHandler, useClass: IonicErrorHandler}
    ]
})
export class AppModule {}
