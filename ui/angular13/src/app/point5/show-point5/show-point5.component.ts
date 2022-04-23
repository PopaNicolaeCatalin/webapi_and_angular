import { Component, OnInit } from '@angular/core';
import { SharedService } from 'src/app/shared.service';

@Component({
  selector: 'app-show-point5',
  templateUrl: './show-point5.component.html',
  styleUrls: ['./show-point5.component.css']
})
export class ShowPoint5Component implements OnInit {

  constructor(private service: SharedService) { }

  Point5List: any = [];
  ngOnInit(): void {
    this.refreshPoint5List();
  }

  refreshPoint5List() {
    this.service.getPoint5List().subscribe(data => {
      this.Point5List = data;
    });
  }
}
