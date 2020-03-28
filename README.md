# Beta OpenActive Namespace
This is the repository of the beta namespace for the [OpenActive Vocabulary](https://www.openactive.io/ns/), as defined in the [Modelling Opportunity Data Specification](https://www.openactive.io/modelling-opportunity-data/).

Please find documentation relating to this namespace at https://openactive.io/ns-beta.

## Contribution

Please create a pull request amending the file `beta.jsonld` with the relevant terms. Documentation is automatically generated from this file when the PR is merged with the `master` branch.

Note that all beta terms **MUST** reference a GitHub issue on the repository of the specification to which they relate.

## Tooling dependencies

The OpenActive validator (https://validator.openactive.io) will pick up changes to the namespace immediately.

The OpenActive libraries ([.NET](https://github.com/openactive/OpenActive.NET), [Ruby](https://github.com/openactive/models-ruby) and [PHP](https://github.com/openactive/models-php)) require manual model regeneration and republishing in order to include any namespace updates.

The OpenActive documentation types reference (https://developer.openactive.io/data-model/types) will pick up changes to the namespace the next time any changes to the documentation are published on GitBooks).
