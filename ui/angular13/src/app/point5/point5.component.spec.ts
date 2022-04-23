import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Point5Component } from './point5.component';

describe('Point5Component', () => {
  let component: Point5Component;
  let fixture: ComponentFixture<Point5Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Point5Component ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(Point5Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
