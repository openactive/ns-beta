# Beta OpenActive Namespace Vocabulary Terms
This is a beta namespace for [OpenActive Vocabulary](https://www.openactive.io/ns/) defined in the [Modelling Opportunity Data Specification](https://www.openactive.io/modelling-opportunity-data/).

This allows us to add new properties to our endpoints so that we can publish all data fields we have that are useful, while providing a forum for discussion around each new property. The idea being that these properties would be considered by group for inclusion in the specification.

This namespace MUST be referenced using the URL `"https://openactive.io/ns-beta"` (which will return the [JSON-LD definition](https://www.openactive.io/ns-beta/beta.jsonld) if the `Accept` header contains a`pplication/ld+json`), and is designed to be used in conjunction with the `"https://openactive.io/"` namespace.

Note the issue associated with each one to facilitate discussion. To suggest a new property simply create a new issue [here](https://github.com/openactive/ns-beta/issues) (and if you're feeling techy optionally create a pull request to this file).

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

# Properties

## Extension Properties

| (Class) Property    |  Expected Type  | Issue Ref   | Description                                                         |
|---------------------|-----------------|-------------|---------------------------------------------------------------------|
| (`schema:Course`) <br/> `beta:logo` | `schema:ImageObject` | [#164](https://github.com/openactive/modelling-opportunity-data/issues/164) | An associated logo for a course. |
| (`schema:CourseInstance`) <br/> `beta:course` | `schema:Course` | [#164](https://github.com/openactive/modelling-opportunity-data/issues/164) | This course for which this is an offering. |
| (`schema:Event`) <br/> `beta:accessibilityWheelchairAccess` | `schema:Boolean` | [#21](https://github.com/openactive/ns-beta/issues/21) | A property that details whether the event is suitable for wheelchair access. Placed on Event as this field could be used to detail whether the Event is suitable, as well as the Place. |
| (`schema:Event`) <br/> `beta:attendeeCount` | `schema:Integer` | [#12](https://github.com/openactive/ns-beta/issues/12) | For events that have an unlimited number of tickets, captures the number of attendees (actual attendance). |
| (`schema:Event`) <br/> `beta:availability` | `schema:Integer` | [#9](https://github.com/openactive/ns-beta/issues/9) | For data publishers not wishing to disclose the granular availability of their sessions openly. |
| (`schema:Event`) <br/> `beta:distance` | `schema:QuantitativeValue` | [#3](https://github.com/openactive/ns-beta/issues/3) | The distance of a run, cycle or other activity. Must also include units. |
| (`schema:Event`) <br/> `beta:formattedDescription` | `schema:Text` | [#2](https://github.com/openactive/ns-beta/issues/2) | Sometimes a description is stored with formatting (e.g. href, bold, italics, embedded YouTube videos). This formatting can be useful for data consumers. |
| (`schema:Event`) <br/> `beta:registrationCount` | `schema:Integer` | [#13](https://github.com/openactive/ns-beta/issues/13) | For events that have an unlimited number of tickets, captures the number of registrations (intention to attend). |
| (`schema:Event`) <br/> `beta:specialRequirements` | `skos:Concept` | [#20](https://github.com/openactive/ns-beta/issues/20) | List of related special requirements from a controlled vocabulary. |



## Enumeration Values

| Type          | Value    | Issue Ref   | Description                                                                    |
|---------------|----------|-------------|--------------------------------------------------------------------------------|
| `schema:BusinessEntityType` | `https://openactive.io/ns-beta#Member` | [#80](https://github.com/openactive/modelling-opportunity-data/issues/80) | Indicates that a customer (eligableCustomerType) is a member of the business. |

