import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShowPoint5Component } from './show-point5.component';

describe('ShowPoint5Component', () => {
  let component: ShowPoint5Component;
  let fixture: ComponentFixture<ShowPoint5Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ShowPoint5Component ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ShowPoint5Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
