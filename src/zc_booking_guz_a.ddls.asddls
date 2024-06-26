@EndUserText.label: 'Comportamiento Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.semanticKey: [ 'BookingId' ]
define view entity ZC_BOOKING_GUZ_A
  as projection on zi_booking_cg_a
{
  key BookingUuid,
      TravelUuid,
      @Search.defaultSearchElement: true
      BookingId,
      BookingDate,
      @ObjectModel.text.element: ['CustomerName']
      @Search.defaultSearchElement: true
      CustomerId,
      _Customer.LastName        as CustomerName,
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['CarrierName']
      AirlineID,
      _Carrier.Name             as CarrierName,

      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,

      @ObjectModel.text.element: ['BookingStatusText']
      BookingStatus,
      _BookingStatus._Text.Text as BookingStatusText : localized,
      LocalLastChangedAt,
      /* Associations */
      _BookingStatus,
      _Carrier,
      _Connection,
      _Customer,
      _Travel : redirected to parent ZC_TRAVEL_GUZ_A
}
