import {Collection} from 'fireorm';

@Collection('access_points')
export class AccessPoint {
    id: string;
    projectId: string;
    name: string;
    ssid: string;
    bssid: string;
}