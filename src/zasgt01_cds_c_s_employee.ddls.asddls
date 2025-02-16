@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Singleton : Employee'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@UI.headerInfo: {
    typeName: 'Manage Employee',
    typeNamePlural: 'Manage Employee',
    title: {
        type: #STANDARD,
        value: 'singleton'
    }
}
define root view entity ZASGT01_CDS_C_S_EMPLOYEE
  provider contract transactional_query
  as projection on ZASGT01_CDS_IF_S_EMPLOYEE
{
      @EndUserText: {
          label: ' ',
          quickInfo: ' '
      }
  key singleton,
      maxChangedAt,

      -- CHILD --
      _employee : redirected to composition child ZASGT01_CDS_C_EMPLOYEE
}
