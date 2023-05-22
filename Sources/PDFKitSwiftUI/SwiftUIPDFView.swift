import SwiftUI
import PDFKit

@available(iOS 13.0, *)
public struct SwiftUIPDFView: UIViewRepresentable {
    var pdfDocument: PDFDocument

    public init(pdfDocument: PDFDocument) {
        self.pdfDocument = pdfDocument
    }

    public func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = pdfDocument
        return pdfView
    }

    public func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDocument
    }
}

