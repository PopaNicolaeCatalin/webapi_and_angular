import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CountryComponent } from './country/country.component';
import { ShowCountryComponent } from './country/show-country/show-country.component';
import { AddEditCountryComponent } from './country/add-edit-country/add-edit-country.component';
import { PortComponent } from './port/port.component';
import { ShowPortComponent } from './port/show-port/show-port.component';
import { AddEditPortComponent } from './port/add-edit-port/add-edit-port.component';
import { SharedService } from './shared.service';


import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { ShipComponent } from './ship/ship.component';
import { VoyageComponent } from './voyage/voyage.component';
import { ShowShipComponent } from './ship/show-ship/show-ship.component';
import { ShowVoyageComponent } from './voyage/show-voyage/show-voyage.component';
import { Point5Component } from './point5/point5.component';
import { ShowPoint5Component } from './point5/show-point5/show-point5.component';


@NgModule({
  declarations: [
    AppComponent,
    CountryComponent,
    ShowCountryComponent,
    AddEditCountryComponent,
    PortComponent,
    ShowPortComponent,
    AddEditPortComponent,
    ShipComponent,
    VoyageComponent,
    ShowShipComponent,
    ShowVoyageComponent,
    Point5Component,
    ShowPoint5Component
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [SharedService],
  bootstrap: [AppComponent]
})
export class AppModule { }
