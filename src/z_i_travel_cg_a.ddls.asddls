@EndUserText.label: 'Interfaz Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity Z_I_TRAVEL_CG_A
  provider contract transactional_interface
  as projection on ZR_TRAVEL_CG_A
{
  key TravelUUID,
      TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child zi_booking_cg_a,
      _Currency,
      _Customer,
      _OverallStatus
}
