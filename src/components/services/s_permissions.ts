import {Injectable} from '@angular/core';
import {ModalController, Platform} from 'ionic-angular';

import {s_memcache} from './s_memcache';

import {AndroidPermissions} from "@ionic-native/android-permissions/ngx";
import {LocationAccuracy} from '@ionic-native/location-accuracy/ngx';

@Injectable()
export class s_permissions {

    public perms = [
//'android.permission.ACCESS_BACKGROUND_LOCATION',
        'android.permission.ACCESS_COARSE_LOCATION',
        'android.permission.ACCESS_FINE_LOCATION',
        'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS',
        'android.permission.ACCESS_NETWORK_STATE',
        'android.permission.ACCESS_WIFI_STATE',
        'android.permission.ACTIVITY_RECOGNITION',
        'android.permission.BLUETOOTH',
        'android.permission.BLUETOOTH_BLE',
        'android.permission.BLUETOOTH_SCAN',
        'android.permission.FOREGROUND_SERVICE',
        'android.permission.INTERNET',
        'android.permission.LOCATION_HARDWARE',
// 'android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND',
        'android.permission.RECEIVE_BOOT_COMPLETED'
    ]

    public permissions = {}

    constructor(public mc: ModalController,
                public locationAccuracy: LocationAccuracy,
                public androidPermissions: AndroidPermissions,
                public platform: Platform,
                public s_memcache: s_memcache) {

    }

// CHECK PERMS
    checkPerms() {
        return new Promise<void>(resolve => {
            this.locationEnabledCheck().then(res => {
                if (res) {
                    this.checkPermsLoop(this.perms, 0).then(() => {
                        resolve()
                    })
                } else {
                    resolve()
                }
            })
        })
    }

    checkPermsLoop(perms, i) {
        return new Promise<void>(resolve => {
            let len = perms.length
            if (i >= len) {
                resolve()
            } else {
                let perm = perms[i]
                this.checkPerm(perm).then((res) => {
                    let j = i + 1
                    resolve(this.checkPermsLoop(perms, j))
                })
            }
        })
    }

    checkPerm(perm) {
        return new Promise(resolve => {
            this.permissions[perm] = false
            this.androidPermissions.checkPermission(perm).then((result) => {
                let hasPermission = result.hasPermission
                this.permissions[perm] = hasPermission
                resolve(hasPermission)
            })
        })
    }

    getPerms() {
        return new Promise<void>(resolve => {
            this.locationEnabledSet().then(res => {
                if (res) {
                    this.s_memcache.data.locationEnabled = true
                    this.getPermsLoop(this.perms, 0).then(() => {
                        resolve()
                    })
                } else {
                    this.s_memcache.data.locationEnabled = false
                    resolve()
                }
            })
        })
    }

// GET PERMS
    getPermsLoop(perms, i) {
        return new Promise<void>(resolve => {
            let len = perms.length
            if (i >= len) {
                resolve()
            } else {
                let perm = perms[i]
                this.getPerm(perm).then(() => {
                    let j = i + 1
                    resolve(this.getPermsLoop(perms, j))
                })
            }
        })
    }

    getPerm(perm) {
        return new Promise<void>(resolve => {
            let permission = perm.toString().trim()
            this.checkPerm(permission).then((hasPermission) => {
                if (hasPermission) {
                    resolve()
                } else {
                    this.requestPerm(permission).then(() => {
                        this.checkPerm(permission).then((hp) => {
                            resolve()
                        })
                    })
                }
            })
        })
    }


// REQUEST_PERM

    requestPerm(perm) {
        return new Promise<void>(resolve => {
            this.androidPermissions.requestPermission(perm).then((result) => {
                resolve()
            })
        })
    }

// check for location enabled on phone
    locationEnabledCheck() {
        return new Promise(resolve => {
            this.s_memcache.data.locationEnabled = false
            this.locationAccuracy.canRequest().then((canRequest) => {
                if (canRequest) {
                    this.s_memcache.data.locationEnabled = true
                    resolve(true)
                } else {
                    this.s_memcache.data.locationEnabled = false
                    resolve(false)
                }
            })
        })
    }

    locationEnabledSet() {
        return new Promise<boolean>(resolve => {
            this.locationAccuracy.request(this.locationAccuracy.REQUEST_PRIORITY_HIGH_ACCURACY).then(
                () => resolve(true),
                error => resolve(false)
            );
        })
    }

}

