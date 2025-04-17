# Beta OpenActive Namespace Vocabulary Terms
This is the beta namespace for the [OpenActive Vocabulary](https://www.openactive.io/ns/), as defined in the [Modelling Opportunity Data Specification](https://www.openactive.io/modelling-opportunity-data/).

This namespace can be used by publishers experimenting with new properties that are likely to be added to the core specification.

It is defined as a convenience to help document properties that are in active testing and review by the community. Publishers should not assume that properties in the beta namespace will either be added to the core specification or be included in the namespace over the long term.

This namespace MUST be referenced using the URL `"https://openactive.io/ns-beta"` (which will return the [JSON-LD definition](https://openactive.io/ns-beta/beta.jsonld) if the `Accept` header contains `application/ld+json`), and is designed to be used in conjunction with the `"https://openactive.io/"` namespace.

Note that properties listed here _must_ have associated proposals in one of the specification repositories. To suggest a new property, please file a proposal [here](https://github.com/openactive/modelling-opportunity-data/issues).

# Example use

```json
{
  "@context": [
    "https://openactive.io/",
    "https://openactive.io/ns-beta"
  ],
  "@type": "SessionSeries",
  "name": "Tai chi Class",
  "description": "You need to be strong to attend.",
  "beta:formattedDescription": "You need to be <b>strong</b> to attend.",
  "url": "http://www.example.org/events/1",
  "location": {
    "@type": "Place",
    "name": "ExampleCo Gym Kingswood",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "1 High Street",
      "addressLocality": "Kingswood",
      "addressRegion": "South Gloucestershire",
      "postalCode": "BS1 4SD",
      "addressCountry": "GB"
    }
  }
}
```



# Namespace



## Properties

| (Class) Property    |  Expected Type  | Proposal   | Description                                                         |
|---------------------|-----------------|------------|---------------------------------------------------------------------|
| <a name="accessToken"></a> ([`beta:AuthenticatedPerson`](https://openactive.io/ns-beta#AuthenticatedPerson)) <br/>  `beta:accessToken` | [`schema:Text`](https://schema.org/Text) | [#120](https://github.com/openactive/open-booking-api/issues/120) | Token indicating the Broker's authorisation to book on behalf of a Customer. |
| <a name="certificationLevel"></a> ([`beta:CertificationScheme`](https://openactive.io/ns-beta#CertificationScheme), [`beta:TrustCertification`](https://openactive.io/ns-beta#TrustCertification)) <br/>  `beta:certificationLevel` | [`beta:CertificationLevel`](https://openactive.io/ns-beta#CertificationLevel) | [#217](https://github.com/openactive/modelling-opportunity-data/issues/217) | Property containing an array of CertificationLevels |
| <a name="trustedCertificationSchemes"></a> ([`beta:CertificationScheme`](https://openactive.io/ns-beta#CertificationScheme)) <br/>  `beta:trustedCertificationSchemes` | [`schema:URL`](https://schema.org/URL) | [#217](https://github.com/openactive/modelling-opportunity-data/issues/217) | From within a CertificationScheme, points to other CertificationSchemes considered valid and trusted in order to allow the creation of a trust network. |
| <a name="facilityAttribute"></a> ([`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:facilityAttribute` | Array of [`skos:Concept`](http://www.w3.org/2004/02/skos/core#Concept) | [#1](https://github.com/openactive/facility-types/issues/1) | Attributes associated with the facility in use. See https://openactive.io/facility-attribute-list/. |
| <a name="facilityType"></a> ([`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:facilityType` | Array of [`skos:Concept`](http://www.w3.org/2004/02/skos/core#Concept) | [#1](https://github.com/openactive/facility-types/issues/1) | [**DEPRECATED:** This term has graduated from the beta namespace, please use [`oa:facilityType`](https://openactive.io/facilityType) instead.] The type of facility in use. See https://openactive.io/facility-types/. |
| <a name="timeZone"></a> ([`pending:Schedule`](http://pending.schema.org/Schedule), [`oa:PartialSchedule`](https://openactive.io/PartialSchedule)) <br/>  `beta:timeZone` | [`schema:Text`](https://schema.org/Text) | [#197](https://github.com/openactive/modelling-opportunity-data/issues/197) | [**DEPRECATED:** This term has graduated from the beta namespace, please use [`schema:scheduleTimezone`](https://schema.org/scheduleTimezone) instead.] The time zone used to generate occurrences, same as iCal TZID. E.g. 'Europe/London'. |
| <a name="codeType"></a> ([`schema:Barcode`](https://schema.org/Barcode)) <br/>  `beta:codeType` | [`schema:Text`](https://schema.org/Text) | [#130](https://github.com/openactive/open-booking-api/issues/130) | Type of barcode, e.g. 'Code39' |
| <a name="course"></a> ([`schema:CourseInstance`](https://schema.org/CourseInstance)) <br/>  `beta:course` | [`schema:Course`](https://schema.org/Course) | [#164](https://github.com/openactive/modelling-opportunity-data/issues/164) | [**DEPRECATED:** This term has graduated from the beta namespace, please use [`oa:instanceOfCourse`](https://openactive.io/instanceOfCourse) instead.] This course for which this is an offering. |
| <a name="affiliatedLocation"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:affiliatedLocation` | [`schema:Place`](https://schema.org/Place) | [#227](https://github.com/openactive/modelling-opportunity-data/issues/227) | The physical location affiliated with the virtual event, for example the original location of the event before it was moved online. |
| <a name="attendeeCount"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:attendeeCount` | [`schema:Integer`](https://schema.org/Integer) | [#274](https://github.com/openactive/modelling-opportunity-data/issues/274) | For events that have an unlimited number of tickets, captures the number of attendees (actual attendance). |
| <a name="bookingChannel"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:bookingChannel` | Array of [`beta:BookingChannelType`](https://openactive.io/ns-beta#BookingChannelType) | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | The channels through which a booking can be made. |
| <a name="contactPoint"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:contactPoint` | [`schema:ContactPoint`](https://schema.org/ContactPoint) | [#113](https://github.com/openactive/modelling-opportunity-data/issues/113) | Contact details for an Event, where they are not specifically related to the `organizer` or `leader`. |
| <a name="distance"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:distance` | [`schema:QuantitativeValue`](https://schema.org/QuantitativeValue) | [#275](https://github.com/openactive/modelling-opportunity-data/issues/275) | The distance of a run, cycle or other activity. Must also include units. |
| <a name="donationPaymentUrl"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:donationPaymentUrl` | [`schema:URL`](https://schema.org/URL) | [#234](https://github.com/openactive/modelling-opportunity-data/issues/234) | The URL of the webpage where the activity provider accepts donations. |
| <a name="estimatedDuration"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:estimatedDuration` | [`schema:QuantitativeValue`](https://schema.org/QuantitativeValue) | [#201](https://github.com/openactive/modelling-opportunity-data/issues/201) | A property that allows an Event duration to be represented as a range (e.g. 0-30mins, 30-60mins, 60-90mins, 90+). |
| <a name="facilitySetting"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:facilitySetting` | [`beta:FacilitySettingType`](https://openactive.io/ns-beta#FacilitySettingType) | [#1](https://github.com/openactive/facility-types/issues/1) | Whether the event or facility is indoor or outdoor. |
| <a name="formattedDescription"></a> ([`schema:Event`](https://schema.org/Event), [`schema:Place`](https://schema.org/Place), [`schema:Organization`](https://schema.org/Organization), [`schema:Person`](https://schema.org/Person), [`oa:FacilityUse`](https://openactive.io/FacilityUse), [`schema:Brand`](https://schema.org/Brand), [`schema:Course`](https://schema.org/Course)) <br/>  `beta:formattedDescription` | [`schema:Text`](https://schema.org/Text) | [#276](https://github.com/openactive/modelling-opportunity-data/issues/276) | Sometimes a description is stored with formatting (e.g. href, bold, italics, embedded YouTube videos). This formatting can be useful for data consumers. This property must contain HTML. |
| <a name="isFirstSessionAccessibleForFree"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:isFirstSessionAccessibleForFree` | [`schema:Boolean`](https://schema.org/Boolean) | [#232](https://github.com/openactive/modelling-opportunity-data/issues/232) | A property that indicates whether the first session is free. |
| <a name="isInteractivityPreferred"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:isInteractivityPreferred` | [`schema:Boolean`](https://schema.org/Boolean) | [#230](https://github.com/openactive/modelling-opportunity-data/issues/230) | Indicates whether the virtual event is interactive (e.g. Zoom with participant microphones and cameras on), or is just a one-way broadcast (e.g. Facebook Live, Instagram Live, Zoom with participant microphones and cameras off). |
| <a name="isScheduledAsSlots"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:isScheduledAsSlots` | [`schema:Boolean`](https://schema.org/Boolean) | [#301](https://github.com/openactive/modelling-opportunity-data/issues/301) | A property that indicates whether the event contains a high frequency of occurrences. Intended as a UI hint for interfaces that represent these occurrences. |
| <a name="isVirtuallyCoached"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:isVirtuallyCoached` | [`schema:Boolean`](https://schema.org/Boolean) | [#71](https://github.com/openactive/modelling-opportunity-data/issues/71) | A property that indicates whether the event is led by a virtual coach. Only relevant if an event `isCoached`. If not provided is assumed to be `false`. |
| <a name="isWheelchairAccessible"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:isWheelchairAccessible` | [`schema:Boolean`](https://schema.org/Boolean) | [#166](https://github.com/openactive/modelling-opportunity-data/issues/166) | A property that details whether the event is suitable for wheelchair access. Placed on Event as this field could be used to detail whether the Event is suitable, as well as the Place. |
| <a name="offerValidityPeriod"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:offerValidityPeriod` | [`schema:Duration`](https://schema.org/Duration) | [#204](https://github.com/openactive/modelling-opportunity-data/issues/204) | Duration before the event for which the associated Offers are valid |
| <a name="participantSuppliedEquipment"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:participantSuppliedEquipment` | [`oa:RequiredStatusType`](https://openactive.io/RequiredStatusType) | [#229](https://github.com/openactive/modelling-opportunity-data/issues/229) | Indicates whether the participant must or may supply equipment for use in the Event. |
| <a name="registrationCount"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:registrationCount` | [`schema:Integer`](https://schema.org/Integer) | [#273](https://github.com/openactive/modelling-opportunity-data/issues/273) | For events that have an unlimited number of tickets, captures the number of registrations (intention to attend). |
| <a name="sportsActivityLocation"></a> ([`schema:Event`](https://schema.org/Event), [`oa:Slot`](https://openactive.io/Slot), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:sportsActivityLocation` | Array of [`schema:SportsActivityLocation`](https://schema.org/SportsActivityLocation) | [#110](https://github.com/openactive/modelling-opportunity-data/issues/110) | Internal location of the event, e.g. Court 1 |
| <a name="video"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse), [`schema:Brand`](https://schema.org/Brand), [`schema:Organization`](https://schema.org/Organization), [`schema:Course`](https://schema.org/Course), [`schema:Place`](https://schema.org/Place)) <br/>  `beta:video` | Array of [`schema:VideoObject`](https://schema.org/VideoObject) | [#88](https://github.com/openactive/modelling-opportunity-data/issues/88) | A related video object. |
| <a name="virtualLocation"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:virtualLocation` | [`pending:VirtualLocation`](http://pending.schema.org/VirtualLocation) | [#224](https://github.com/openactive/modelling-opportunity-data/issues/224) | Describes a means of electronic access to a shared virtual space. |
| <a name="partySize"></a> ([`schema:Offer`](https://schema.org/Offer)) <br/>  `beta:partySize` | [`schema:QuantitativeValue`](https://schema.org/QuantitativeValue) | [#250](https://github.com/openactive/modelling-opportunity-data/issues/250) | Number of people the reservation should accommodate. |
| <a name="formalCriteriaMet"></a> ([`schema:Organization`](https://schema.org/Organization), [`schema:Person`](https://schema.org/Person)) <br/>  `beta:formalCriteriaMet` | Array of [`schema:URL`](https://schema.org/URL) | [#236](https://github.com/openactive/modelling-opportunity-data/issues/236) | An array of URLs, each of which describe the formal criteria that are met by the organizer. |
| <a name="placeType"></a> ([`schema:Place`](https://schema.org/Place)) <br/>  `beta:placeType` | Array of [`skos:Concept`](http://www.w3.org/2004/02/skos/core#Concept) | [#1](https://github.com/openactive/place-types/issues/1) | The type of Place. See https://openactive.io/place-types/. |
| <a name="serviceOperator"></a> ([`schema:Place`](https://schema.org/Place)) <br/>  `beta:serviceOperator` | [`schema:Organization`](https://schema.org/Organization) | [#307](https://github.com/openactive/modelling-opportunity-data/issues/307) | The organization responsible for the operation of the `Place`. |
| <a name="virtualTour"></a> ([`schema:Place`](https://schema.org/Place)) <br/>  `beta:virtualTour` | Array of [`pending:3DModel`](http://pending.schema.org/3DModel) | [#306](https://github.com/openactive/modelling-opportunity-data/issues/306) | A related virtual tour. |



## Classes

| Class                      | subClasses | Proposal   | Description                                                                                 |
|----------------------------|------------|------------|---------------------------------------------------------------------------------------------|
| <a name="BookingChannelType"></a> `beta:BookingChannelType` | [`schema:Enumeration`](https://schema.org/Enumeration) | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | An enumeration of booking channels that can exist. |
| <a name="FacilitySettingType"></a> `beta:FacilitySettingType` | [`schema:Enumeration`](https://schema.org/Enumeration) | [#1](https://github.com/openactive/facility-types/issues/1) | An enumeration of settings in which a facility can exist. |
| <a name="Bar"></a> `beta:Bar` | [`schema:LocationFeatureSpecification`](https://schema.org/LocationFeatureSpecification) | [#205](https://github.com/openactive/modelling-opportunity-data/issues/205) | Bar is available |
| <a name="Cafe"></a> `beta:Cafe` | [`schema:LocationFeatureSpecification`](https://schema.org/LocationFeatureSpecification) | [#205](https://github.com/openactive/modelling-opportunity-data/issues/205) | Cafe is available |
| <a name="IndicativeOffer"></a> `beta:IndicativeOffer` | [`schema:Offer`](https://schema.org/Offer) | [#207](https://github.com/openactive/modelling-opportunity-data/issues/207) | An Offer that provides an indication of the available price, not an exact amount. |
| <a name="AuthenticatedPerson"></a> `beta:AuthenticatedPerson` | [`schema:Person`](https://schema.org/Person) | [#120](https://github.com/openactive/open-booking-api/issues/120) | Usable as both customer and attendee to indicate Persons who are authenticated to the Seller and granted access to the Broker to book on their behalf. |
| <a name="CertificationLevel"></a> `beta:CertificationLevel` | [`schema:Thing`](https://schema.org/Thing) | [#217](https://github.com/openactive/modelling-opportunity-data/issues/217) | Defines a trust certification. |
| <a name="CertificationScheme"></a> `beta:CertificationScheme` | [`schema:Thing`](https://schema.org/Thing) | [#217](https://github.com/openactive/modelling-opportunity-data/issues/217) | Defines a coherent list of certifications, optionally related to one or more activities. |
| <a name="TrustCertification"></a> `beta:TrustCertification` | [`schema:Thing`](https://schema.org/Thing) | [#217](https://github.com/openactive/modelling-opportunity-data/issues/217) | Links activity-providing Organisations to their certifications. |
| <a name="ConceptCollection"></a> `beta:ConceptCollection` | [`skos:Collection`](http://www.w3.org/2004/02/skos/core#Collection), [`schema:CreativeWork`](https://schema.org/CreativeWork) | [#203](https://github.com/openactive/modelling-opportunity-data/issues/203) | A SKOS Collection for use with SKOS ConceptScheme |



## Enumeration Values

| Type          | Value    | Proposal   | Description                                                                    |
|---------------|----------|------------|--------------------------------------------------------------------------------|
| [`beta:BookingChannelType`](https://openactive.io/ns-beta#BookingChannelType) | <a name="OnlineAdvanceBooking"></a> `https://openactive.io/ns-beta#OnlineAdvanceBooking` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Online booking in advance of the opportunity, without payment |
| [`beta:BookingChannelType`](https://openactive.io/ns-beta#BookingChannelType) | <a name="OnlinePrepayment"></a> `https://openactive.io/ns-beta#OnlinePrepayment` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Online booking in advance of the opportunity, with payment |
| [`beta:BookingChannelType`](https://openactive.io/ns-beta#BookingChannelType) | <a name="TelephoneAdvanceBooking"></a> `https://openactive.io/ns-beta#TelephoneAdvanceBooking` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Telephone booking in advance of the opportunity, without payment |
| [`beta:BookingChannelType`](https://openactive.io/ns-beta#BookingChannelType) | <a name="TelephonePrepayment"></a> `https://openactive.io/ns-beta#TelephonePrepayment` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Telephone booking in advance of the opportunity, with payment |
| [`beta:FacilitySettingType`](https://openactive.io/ns-beta#FacilitySettingType) | <a name="IndoorFacility"></a> `https://openactive.io/ns-beta#IndoorFacility` | [#1](https://github.com/openactive/facility-types/issues/1) | Facility is indoors |
| [`beta:FacilitySettingType`](https://openactive.io/ns-beta#FacilitySettingType) | <a name="OutdoorFacility"></a> `https://openactive.io/ns-beta#OutdoorFacility` | [#1](https://github.com/openactive/facility-types/issues/1) | Facility is outdoors |
| [`oa:AvailableChannelType`](https://openactive.io/AvailableChannelType) | <a name="OpenBookingCustomerAuthentication"></a> `https://openactive.io/ns-beta#OpenBookingCustomerAuthentication` | [#120](https://github.com/openactive/open-booking-api/issues/120) | Bookings can be made via the Open Booking API using Customer Authentication. |
| [`schema:BusinessEntityType`](https://schema.org/BusinessEntityType) | <a name="Member"></a> `https://openactive.io/ns-beta#Member` | [#80](https://github.com/openactive/modelling-opportunity-data/issues/80) | When used as a value of `eligableCustomerType` within an `Offer`, indicates that the `Offer` is only available to members of the organizer / provider. |
