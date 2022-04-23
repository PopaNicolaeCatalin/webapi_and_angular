import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShowShipComponent } from './show-ship.component';

describe('ShowShipComponent', () => {
  let component: ShowShipComponent;
  let fixture: ComponentFixture<ShowShipComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ShowShipComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ShowShipComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
