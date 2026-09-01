### Translation information

This implementation guide is authored in **German** — that is the source language — and is additionally rendered in **English** under `/en/`. The language can be switched with the selector in the navigation bar.

The English rendering is maintained by hand in this repository; it is not a machine translation:

| What is translated | Where it comes from |
|---|---|
| Narrative pages | `input/translations/en/pagecontent/` — one file per source page, same file name |
| Profile prose (intro notes) | `input/translations/en/intro-notes/` |
| Titles, descriptions and element definitions of the resources | `input/translations/en/*.po` — one translation catalog per resource |

A page that has no English counterpart is rendered in German under `/en/`, with a corresponding notice at the top of the page.

#### Partially translated content

Some content is currently available in German only:

* **UML and ART-DECOR illustrations** — the graphics contain German labels
* **Logical model** — the element names of the logical data model remain German; only the descriptions are translated
* **Profiles** — profile pages may contain mixed English and German content, since FHIR core elements are English while extensions and data types from the German base profiles carry German descriptions and terminology

#### Feedback on a translation

Please report comments on a translation as an issue in the [GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-PathologieBefund) or via the HL7 FHIR Zulip, stream `german/mi-initiative` (<https://chat.fhir.org>), naming the page and the wording in each case.
