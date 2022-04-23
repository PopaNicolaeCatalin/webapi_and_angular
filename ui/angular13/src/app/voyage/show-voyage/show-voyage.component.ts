import { Component, OnInit } from '@angular/core';
import { SharedService } from 'src/app/shared.service';
import { formatDate } from '@angular/common';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'app-show-voyage',
  templateUrl: './show-voyage.component.html',
  styleUrls: ['./show-voyage.component.css']
})
export class ShowVoyageComponent implements OnInit {

  constructor(private service: SharedService) { }
  

  VoyageList: any = [];

  ngOnInit(): void {
    this.refreshVoyageList();
  }

  refreshVoyageList() {
    this.service.getVoyageList().subscribe(data => {
      this.VoyageList = data;
    });
  }

}
