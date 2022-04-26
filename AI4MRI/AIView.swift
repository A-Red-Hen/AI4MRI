//
//  AIView.swift
//  AI4MRI
//
//  Created by Neha Shaik on 4/25/22.
//

import SwiftUI
import SwiftyJSON
import Alamofire

struct AIView: View {
    @State var animalName = " "
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage? = UIImage(named: "Tumor")
    var body: some View {
           HStack {
               VStack (alignment: .center, spacing: 20){
                   Text("AI4MRI").font(.system(.largeTitle, design: .rounded)).fontWeight(.bold)
                   Text(animalName)
                   Image(uiImage: inputImage!).resizable().aspectRatio(contentMode: .fit)
                   Button("Upload MRI Scan"){
                       self.buttonPressed()
                   }.padding(.all, 14.0).foregroundColor(.white).background(Color.green).cornerRadius(10)
               }.font(.title)
           }.sheet(isPresented: $showingImagePicker, onDismiss: processImage) {
               ImagePicker(image: self.$inputImage)
           }
    }
    
    func buttonPressed() {
           print("Button pressed")
           self.showingImagePicker = true
    }
    
    func processImage() {
           self.showingImagePicker = false
           self.animalName="Checking..."
           guard let inputImage = inputImage else {return}
           print("Processing image due to Button press")
           let imageJPG=inputImage.jpegData(compressionQuality: 0.0034)!
        processAPI1(image: imageJPG)

    }
    
    func processAPI1(image: Data) {
         print("In API1")
         let imageB64 = Data(image).base64EncodedData()
         let uploadURL = "https://askai.aiclub.world/b2a58600-d954-458a-81d2-e39635a70326"
         AF.upload(imageB64, to: uploadURL).responseJSON { response in
             //debugPrint("Response is:",response)
             switch response.result {
             case .success(let responseJsonStr):
                 print("\n\n API 1: Success value and JSON: \(responseJsonStr)")
                 
                 let myJson = JSON(responseJsonStr)
                 let predictedValue = myJson["predicted_label"].string
                 print("API1: Saw predicted value \(String(describing: predictedValue))")
                 if(predictedValue == "Yes") { // TO-DO TO-DO. Temp to check other path
                 self.processAPI2(image:image)
                 } else {
                     animalName="No tumor detected"
                 }
             case .failure(let error):
                 print("\n\n API1: Request failed with error: \(error)")
             }

         }
         print("Exiting API1")
     }
     
     func processAPI2(image: Data) {
         let url = "https://askai.aiclub.world/2a410abe-7ee5-4fe1-8159-17947589b8be"
         print("In API2 with URL",url)
         let imageB64 = Data(image).base64EncodedData()
         let uploadURL = url
         AF.upload(imageB64, to: uploadURL).responseJSON { response in
             //debugPrint("Response is:",response)
             switch response.result {
             case .success(let responseJsonStr):
                 print("\n\n API2: Success value and JSON: \(responseJsonStr)")
                 let myJson = JSON(responseJsonStr)
                 let predictedValue = myJson["predicted_label"].string
                 print("API2: Saw predicted value \(String(describing: predictedValue))")
                 animalName=predictedValue! + " tumor detected"
             case .failure(let error):
                 print("\n\n API2: Request failed with error: \(error)")
             }
         }
         print("Exiting API2")
     }
        
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AIView()
    }
}

struct ImagePicker: UIViewControllerRepresentable {
   @Environment(\.presentationMode) var presentationMode
   @Binding var image: UIImage?
   func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
       let picker = UIImagePickerController()
       picker.delegate = context.coordinator
       return picker
   }
   func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
   }
  
   func makeCoordinator() -> Coordinator {
       Coordinator(self)
   }
  
   class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
       let parent: ImagePicker
       init(_ parent: ImagePicker) {
           self.parent = parent
       }
      
       func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
           if let uiImage = info[.originalImage] as? UIImage {
               parent.image = uiImage
           }
           parent.presentationMode.wrappedValue.dismiss()
       }
   }
}
