import {Component} from '@angular/core';
import {Platform} from 'ionic-angular';
import {StatusBar} from '@ionic-native/status-bar';
import {SplashScreen} from '@ionic-native/splash-screen/ngx';
import {HomePage} from '../pages/Home/Home'
import {BackgroundMode} from '@ionic-native/background-mode/ngx';
import {Autostart} from '@ionic-native/autostart/ngx';

import {s_permissions} from '../components/services/s_permissions';
import {s_memcache} from '../components/services/s_memcache';

@Component({
    templateUrl: 'app.html'
})
export class MyApp {
    rootPage: any = HomePage;

    constructor(public splashScreen: SplashScreen,
                public s_permissions: s_permissions,
                public s_memcache: s_memcache,
                public BackgroundMode:BackgroundMode,
                public Autostart: Autostart,
                public platform: Platform) {

        this.s_memcache.data = {}

        this.platform.ready().then(() => {
            this.s_memcache.data.locationEnabled = false
            if (this.platform.is('cordova')) {
                this.splashScreen.hide()
                this.Autostart.enable()
                this.BackgroundMode.enable()
                this.s_permissions.checkPerms().then(() => {
                    if (this.s_memcache.data.locationEnabled == true &&
                        (this.s_permissions.permissions['android.permission.ACCESS_FINE_LOCATION'] == true ||
                            this.s_permissions.permissions['android.permission.BLUETOOTH_SCAN'] == true ||
                            this.s_permissions.permissions['android.permission.ACCESS_COARSE_LOCATION'] == true)) {
                    } else {
                        this.s_permissions.getPerms().then(() => {
                        })
                    }
                })
            }
        })
    }

}

