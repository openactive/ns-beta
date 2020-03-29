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
