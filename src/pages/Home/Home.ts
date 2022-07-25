import {Component, ViewChild} from '@angular/core';

import {LocationStrategy} from '@angular/common';
import {ModalController, NavController, Platform, AlertController, PopoverController} from 'ionic-angular';
import {BrowserAnimationsModule, NoopAnimationsModule} from '@angular/platform-browser/animations';

import {IBeacon} from "@ionic-native/ibeacon/ngx";

import {s_memcache} from '../../components/services/s_memcache';


@Component({
    selector: 'Home',
    templateUrl: 'Home.html',
    providers: [NoopAnimationsModule, BrowserAnimationsModule]
})

export class HomePage {

    constructor(
        public IBeacon: IBeacon,
        public mc: ModalController,
        public nc: NavController,
        public platform: Platform,
        public popoverCtrl: PopoverController) {
//---------------------------------------------------------
// constructor functions
//---------------------------------------------------------

        this.testIBeacon()

    }

//---------------------------------------------------------
// lifecycle events
//---------------------------------------------------------

    testIBeacon() {
        this.platform.ready().then(() => {
            if (this.platform.is('cordova')) {
                this.beaconFunction();
            }
        })

    }

    beaconFunction() {
        let uuid = '120f1eb9-e5ca-423a-b527-e180dd7cf675'

        this.IBeacon.requestAlwaysAuthorization();//for ios
        let beaconRegion = this.IBeacon.BeaconRegion('imonit', uuid, 123, 456, true);

        this.IBeacon.startMonitoringForRegion(beaconRegion).then(() =>
                console.log('--- Native layer received the request to monitoring'),
            error => console.error('--- Native layer failed to begin monitoring: ', error)
        );

        let delegate = this.IBeacon.Delegate();
        delegate.didRangeBeaconsInRegion().subscribe(data =>
                console.log('*** Range Beacons In Region: ', JSON.stringify(data)),
            error => console.error()
        );
        delegate.didStartMonitoringForRegion().subscribe(data =>
                console.log('*** Start Monitoring For Region: ', JSON.stringify(data)),
            error => console.error()
        );
        delegate.didEnterRegion().subscribe(data => {
                console.log('*** ENTER Region: ', JSON.stringify(data));
            }
        );
        delegate.didExitRegion().subscribe(data => {
                console.log('*** EXIT Region: ', JSON.stringify(data));
            }
        );
    }

}
