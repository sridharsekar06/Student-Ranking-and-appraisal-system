# TODO: Enhance Certificate Verification and UI Improvements

## Backend Changes
- [x] Update CertificateService.java: Modify verifyCertificateDetails to check name from DB matches OCR text, and check prize/participation from certificateType matches OCR text. Set status to PENDING if both match, REJECTED if not.
- [x] Ensure certificate upload sets status to PENDING after verification checks.

## Frontend Changes
- [x] Update App.css: Change overall styles to professional college theme - update background colors (e.g., university blues/greens), add gradients, improve typography, modern layouts.
- [x] Fix department in personal info modal: Ensure department is properly updated and displayed; remove "not provided" if department is optional or ensure it's set.

## Testing
- [ ] Test certificate upload: Verify status set to PENDING after checks, teacher can verify/reject.
- [ ] Test personal info update: Ensure department saves and displays correctly.
- [ ] Verify UI looks professional and college-themed.
