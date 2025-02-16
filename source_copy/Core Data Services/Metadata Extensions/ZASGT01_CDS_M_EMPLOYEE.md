[HOME](/README.md)
___
```cds
@Metadata.layer: #CORE
annotate view ZASGT01_CDS_C_EMPLOYEE with
{
  @UI.facet: [
      {
          purpose: #STANDARD,
          type: #IDENTIFICATION_REFERENCE,
          label: 'Employee Inline Edit',
          position: 10
      }
    ]
    
  @UI.lineItem: [{ position: 10 }]
  @UI.identification: [{ position: 10 }]
  Id;
  
  @UI.lineItem: [{ position: 20 }]
  @UI.identification: [{ position: 20 }]
  Fname;
  
  @UI.lineItem: [{ position: 30 }]
  @UI.identification: [{ position: 30 }]
  Lname;
  
  @UI.lineItem: [{ position: 40 }]
  @UI.identification: [{ position: 40 }]
  Dept;
  
  @UI.lineItem: [{ position: 50 }]
  @UI.identification: [{ position: 50 }]
  JoinDate;
  
  @UI.lineItem: [{ position: 60 }]
  @UI.identification: [{ position: 60 }]
  IsActive;
}
```