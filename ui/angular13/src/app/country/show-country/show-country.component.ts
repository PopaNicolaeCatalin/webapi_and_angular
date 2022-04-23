import { Component, OnInit } from '@angular/core';
import { SharedService } from 'src/app/shared.service';

@Component({
  selector: 'app-show-country',
  templateUrl: './show-country.component.html',
  styleUrls: ['./show-country.component.css']
})
export class ShowCountryComponent implements OnInit {

  
  constructor(private service:SharedService) { }

  CountryList: any = [];

  ngOnInit(): void {
    this.refreshCountryList();
    //never forget to add this thing above
  }

  refreshCountryList() {
    this.service.getCountryList().subscribe(data => {
      this.CountryList = data;
    });
  }

}
