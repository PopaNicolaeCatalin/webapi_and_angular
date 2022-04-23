import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddEditPortComponent } from './add-edit-port.component';

describe('AddEditPortComponent', () => {
  let component: AddEditPortComponent;
  let fixture: ComponentFixture<AddEditPortComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AddEditPortComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AddEditPortComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
