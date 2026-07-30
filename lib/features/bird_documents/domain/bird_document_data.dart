/// Pre-resolved, render-ready data for the bird document PDFs.
///
/// The renderers in `data/` are pure: they consume these records and never
/// touch dependency injection. `BirdDocumentBuilder` is the one place that
/// resolves a `Bird` against the app state and formats every value.
library;

/// One key/value line on a document, e.g. `(label: 'Art', value: 'Kanarie')`.
typedef DocEntry = ({String label, String value});

/// A titled group of entries; entries without a value are dropped upstream.
typedef DocSection = ({String title, List<DocEntry> entries});

/// One ancestor box on the pedigree certificate.
///
/// A `null` slot in the heap array stands for an unknown ancestor and renders
/// as a greyed "unknown" box. The sex arrives as localized text rather than
/// the ♂/♀ glyphs the app UI uses: the embedded Roboto has no glyphs for
/// them, so in a PDF they would render as tofu boxes.
typedef PedigreeSlot = ({
  String ringNumber,
  String? speciesName,
  String? colorName,
  String? sexLabel,
  String? bornAt,
  String? breederName,
});

/// One party block on the transfer receipt.
///
/// A `null` name renders as ruled blank lines to be filled in by hand at
/// the handover.
typedef ReceiptParty = ({String? name, List<String> addressLines});
