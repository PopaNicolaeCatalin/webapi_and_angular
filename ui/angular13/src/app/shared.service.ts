import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class SharedService {
  readonly APIUrl = 'http://localhost:5000/api';

  constructor(private http: HttpClient) { }

  getCountryList(): Observable<any[]> {
    return this.http.get<any>(this.APIUrl + '/country');
  }

  addCountry(val: any) {
    return this.http.post(this.APIUrl + '/country', val);
  }
  getPortList(): Observable<any[]> {
    return this.http.get<any>(this.APIUrl + '/port');
  }
  getShipList(): Observable<any[]> {
    return this.http.get<any>(this.APIUrl + '/ship');
  }
  getVoyageList(): Observable<any[]> {
    return this.http.get<any>(this.APIUrl + '/voyage');
  }
  getPoint5List(): Observable<any[]> {
    return this.http.get<any>(this.APIUrl + '/Point5');
  }
}
