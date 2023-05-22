import SwiftUI
import PDFKit

@available(iOS 13.0, *)
public struct SwiftUIPDFThumbnailView: UIViewRepresentable {
    @Binding var pdfDocument: PDFDocument

    public init(pdfDocument: Binding<PDFDocument>) {
        self._pdfDocument = pdfDocument
    }

    public func makeUIView(context: Context) -> PDFThumbnailView {
        let thumbnailView = PDFThumbnailView()
        thumbnailView.thumbnailSize = CGSize(width: 50, height: 50)
        thumbnailView.layoutMode = .horizontal
        return thumbnailView
    }

    public func updateUIView(_ thumbnailView: PDFThumbnailView, context: Context) {
        thumbnailView.pdfView?.document = pdfDocument
    }
}

