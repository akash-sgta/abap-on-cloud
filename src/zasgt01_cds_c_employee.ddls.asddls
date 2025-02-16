@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Employee'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Employee',
    typeNamePlural: 'Employees',
    title: {
        type: #STANDARD,
        value: 'Id'
    }
}
define view entity ZASGT01_CDS_C_EMPLOYEE
  as projection on ZASGT01_CDS_IF_EMPLOYEE
{
      @EndUserText: {
          label: 'ID',
          quickInfo: 'Employee Id'
      }
  key Id,
      singleton,
      @EndUserText: {
          label: 'First Name',
          quickInfo: 'First Name'
      }
      Fname,
      @EndUserText: {
          label: 'Last Name',
          quickInfo: 'Last Name'
      }
      Lname,
      @EndUserText: {
          label: 'Department',
          quickInfo: 'Department'
      }
      Dept,
      @EndUserText: {
          label: 'Joining Date',
          quickInfo: 'Joining Date'
      }
      JoinDate,
      @EndUserText: {
          label: 'Active Employee',
          quickInfo: 'Active Employee'
      }
      IsActive,
      CreatedBy,
      CreatedAt,
      ChangedBy,
      ChangedAt,
      LocalLastChangedAt,

      -- PARENT --
      _employee_s : redirected to parent ZASGT01_CDS_C_S_EMPLOYEE
}
