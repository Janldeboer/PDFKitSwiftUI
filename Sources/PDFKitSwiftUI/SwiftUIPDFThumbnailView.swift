import SwiftUI
import PDFKit

#if os(iOS)

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

#elseif os(macOS)

public struct SwiftUIPDFThumbnailView: NSViewRepresentable {
    @Binding var pdfDocument: PDFDocument

    public init(pdfDocument: Binding<PDFDocument>) {
        self._pdfDocument = pdfDocument
    }

    public func makeNSView(context: Context) -> PDFThumbnailView {
        let thumbnailView = PDFThumbnailView()
        thumbnailView.thumbnailSize = CGSize(width: 50, height: 50)
        thumbnailView.layoutMode = .horizontal
        return thumbnailView
    }

    public func updateNSView(_ thumbnailView: PDFThumbnailView, context: Context) {
        thumbnailView.pdfView?.document = pdfDocument
    }
}

#endif
