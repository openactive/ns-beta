# Beta OpenActive Namespace Vocabulary Terms
This is the beta namespace for the [OpenActive Vocabulary](https://www.openactive.io/ns/), as defined in the [Modelling Opportunity Data Specification](https://www.openactive.io/modelling-opportunity-data/).

This namespace can be used by publishers experimenting with new properties that are likely to be added to the core specification.

It is defined as a convenience to help document properties that are in active testing and review by the community. Publishers should not assume that properties in the beta namespace will either be added to the core specification or be included in the namespace over the long term.

This namespace MUST be referenced using the URL `"https://openactive.io/ns-beta"` (which will return the [JSON-LD definition](https://www.openactive.io/ns-beta/beta.jsonld) if the `Accept` header contains `application/ld+json`), and is designed to be used in conjunction with the `"https://openactive.io/"` namespace.

Note that properties listed here _must_ have associated proposals in one of the specification repositories. To suggest a new property, please file a proposal [here](https://github.com/openactive/modelling-opportunity-data/issues).

# Example use

```json
{
  "@context": [
    "https://openactive.io/",
    "https://openactive.io/ns-beta"
  ],
  "type": "SessionSeries",
  "name": "Tai chi Class",
  "description": "You need to be strong to attend.",
  "beta:formattedDescription": "You need to be <b>strong</b> to attend.",
  "url": "http://www.example.org/events/1",
  "location": {
    "type": "Place",
    "name": "ExampleCo Gym Kingswood",
    "address": {
      "type": "PostalAddress",
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
| <a name="facilitySetting"></a> ([`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:facilitySetting` | [`beta:FacilitySettingType`](https://openactive.io/ns-beta#FacilitySettingType) | [#1](https://github.com/openactive/facility-types/issues/1) | Whether the facility is indoor or outdoor. |
| <a name="facilityType"></a> ([`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:facilityType` | [`skos:Concept`](http://www.w3.org/2004/02/skos/core#Concept) | [#1](https://github.com/openactive/facility-types/issues/1) | The type of facility in use. |
| <a name="timeZone"></a> ([`pending:Schedule`](http://pending.schema.org/Schedule)) <br/>  `beta:timeZone` | [`schema:Text`](https://schema.org/Text) | [#197](https://github.com/openactive/modelling-opportunity-data/issues/197) | The time zone used to generate occurrences, same as iCal TZID. E.g. 'Europe/London'. |
| <a name="logo"></a> ([`schema:Course`](https://schema.org/Course)) <br/>  `beta:logo` | [`schema:ImageObject`](https://schema.org/ImageObject) | [#164](https://github.com/openactive/modelling-opportunity-data/issues/164) | An associated logo for a course. |
| <a name="course"></a> ([`schema:CourseInstance`](https://schema.org/CourseInstance)) <br/>  `beta:course` | [`schema:Course`](https://schema.org/Course) | [#164](https://github.com/openactive/modelling-opportunity-data/issues/164) | This course for which this is an offering. |
| <a name="attendeeCount"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:attendeeCount` | [`schema:Integer`](https://schema.org/Integer) | [#12](https://github.com/openactive/ns-beta/issues/12) | For events that have an unlimited number of tickets, captures the number of attendees (actual attendance). |
| <a name="availability"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:availability` | [`schema:Text`](https://schema.org/Text) | [#9](https://github.com/openactive/ns-beta/issues/9) | For data publishers not wishing to disclose the granular availability of their sessions openly. |
| <a name="distance"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:distance` | [`schema:QuantitativeValue`](https://schema.org/QuantitativeValue) | [#3](https://github.com/openactive/ns-beta/issues/3) | The distance of a run, cycle or other activity. Must also include units. |
| <a name="estimatedDuration"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:estimatedDuration` | [`schema:QuantitativeValue`](https://schema.org/QuantitativeValue) | [#201](https://github.com/openactive/modelling-opportunity-data/issues/201) | A property that allows an Event duration to be represented as a range (e.g. 0-30mins, 30-60mins, 60-90mins, 90+). |
| <a name="formattedDescription"></a> ([`schema:Event`](https://schema.org/Event), [`schema:Place`](https://schema.org/Place), [`schema:Organization`](https://schema.org/Organization), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:formattedDescription` | [`schema:Text`](https://schema.org/Text) | [#2](https://github.com/openactive/ns-beta/issues/2) | Sometimes a description is stored with formatting (e.g. href, bold, italics, embedded YouTube videos). This formatting can be useful for data consumers. |
| <a name="isWheelchairAccessible"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:isWheelchairAccessible` | [`schema:Boolean`](https://schema.org/Boolean) | [#166](https://github.com/openactive/modelling-opportunity-data/issues/166) | A property that details whether the event is suitable for wheelchair access. Placed on Event as this field could be used to detail whether the Event is suitable, as well as the Place. |
| <a name="offerValidityPeriod"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:offerValidityPeriod` | [`schema:Duration`](https://schema.org/Duration) | [#204](https://github.com/openactive/modelling-opportunity-data/issues/204) | Duration before the event for which the associated Offers are valid |
| <a name="registrationCount"></a> ([`schema:Event`](https://schema.org/Event)) <br/>  `beta:registrationCount` | [`schema:Integer`](https://schema.org/Integer) | [#13](https://github.com/openactive/ns-beta/issues/13) | For events that have an unlimited number of tickets, captures the number of registrations (intention to attend). |
| <a name="sportsActivityLocation"></a> ([`schema:Event`](https://schema.org/Event), [`oa:Slot`](https://openactive.io/Slot), [`oa:FacilityUse`](https://openactive.io/FacilityUse)) <br/>  `beta:sportsActivityLocation` | [`schema:SportsActivityLocation`](https://schema.org/SportsActivityLocation) | [#110](https://github.com/openactive/modelling-opportunity-data/issues/110) | Internal location of the event, e.g. Court 1 |
| <a name="video"></a> ([`schema:Event`](https://schema.org/Event), [`oa:FacilityUse`](https://openactive.io/FacilityUse), [`schema:Brand`](https://schema.org/Brand), [`schema:Organization`](https://schema.org/Organization)) <br/>  `beta:video` | [`schema:VideoObject`](https://schema.org/VideoObject) | [#88](https://github.com/openactive/modelling-opportunity-data/issues/88) | An related video object. |
| <a name="availableChannel"></a> ([`schema:Offer`](https://schema.org/Offer)) <br/>  `beta:availableChannel` | [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | The channels through which a booking can be made. |



## Classes

| Class                      | subClasses | Proposal   | Description                                                                                 |
|----------------------------|------------|------------|---------------------------------------------------------------------------------------------|
| <a name="AvailableChannelType"></a> `beta:AvailableChannelType` | [`schema:Enumeration`](https://schema.org/Enumeration) | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | An enumeration of channels through which a booking can be made. |
| <a name="FacilitySettingType"></a> `beta:FacilitySettingType` | [`schema:Enumeration`](https://schema.org/Enumeration) | [#1](https://github.com/openactive/facility-types/issues/1) | An enumeration of settings in which a facility can exist. |
| <a name="Bar"></a> `beta:Bar` | [`schema:LocationFeatureSpecification`](https://schema.org/LocationFeatureSpecification) | [#205](https://github.com/openactive/facility-types/issues/205) | Bar is available |
| <a name="Cafe"></a> `beta:Cafe` | [`schema:LocationFeatureSpecification`](https://schema.org/LocationFeatureSpecification) | [#205](https://github.com/openactive/facility-types/issues/205) | Cafe is available |
| <a name="IndicativeOffer"></a> `beta:IndicativeOffer` | [`schema:Offer`](https://schema.org/Offer) | [#new](https://github.com/openactive/modelling-opportunity-data/issues/new) | An Offer that provides an indication of the available price, not an exact amount. |
| <a name="ConceptCollection"></a> `beta:ConceptCollection` | [`skos:Collection`](http://www.w3.org/2004/02/skos/core#Collection), [`schema:CreativeWork`](https://schema.org/CreativeWork) | [#203](https://github.com/openactive/modelling-opportunity-data/issues/203) | A SKOS Collection for use with SKOS ConceptScheme |



## Enumeration Values

| Type          | Value    | Proposal   | Description                                                                    |
|---------------|----------|------------|--------------------------------------------------------------------------------|
| [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | <a name="OnlinePrepayment"></a> `https://openactive.io/ns-beta#OnlinePrepayment` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Bookings can be made and paid for online. |
| [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | <a name="OpenBookingPrepayment"></a> `https://openactive.io/ns-beta#OpenBookingPrepayment` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Bookings can be made via the Open Booking API. |
| [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | <a name="TelephoneAdvanceBooking"></a> `https://openactive.io/ns-beta#TelephoneAdvanceBooking` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Bookings can be made but not paid for in advance by telephone. |
| [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | <a name="TelephonePrepayment"></a> `https://openactive.io/ns-beta#TelephonePrepayment` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Bookings can be made and paid for in advance by telephone. |
| [`beta:FacilitySettingType`](https://openactive.io/ns-beta#FacilitySettingType) | <a name="IndoorFacility"></a> `https://openactive.io/ns-beta#IndoorFacility` | [#1](https://github.com/openactive/facility-types/issues/1) | Facility is indoors |
| [`beta:FacilitySettingType`](https://openactive.io/ns-beta#FacilitySettingType) | <a name="OutdoorFacility"></a> `https://openactive.io/ns-beta#OutdoorFacility` | [#1](https://github.com/openactive/facility-types/issues/1) | Facility is outdoors |
| [`schema:BusinessEntityType`](https://schema.org/BusinessEntityType) | <a name="Member"></a> `https://openactive.io/ns-beta#Member` | [#80](https://github.com/openactive/modelling-opportunity-data/issues/80) | Indicates that a customer (eligableCustomerType) is a member of the business. |
