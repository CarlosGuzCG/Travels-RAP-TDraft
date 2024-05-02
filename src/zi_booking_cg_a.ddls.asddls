@EndUserText.label: 'Interfaz Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity zi_booking_cg_a
  as projection on ZR_BOOKING_CG_A
{
  key BookingUuid,
      TravelUuid,
      BookingId,
      BookingDate,
      CustomerId,
      AirlineID,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      LocalLastChangedAt,
      /* Associations */
      _BookingStatus,
      _Carrier,
      _Connection,
      _Customer,
      _Travel : redirected to parent Z_I_TRAVEL_CG_A
}
