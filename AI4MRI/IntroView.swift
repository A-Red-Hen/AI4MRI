//
//  IntroView.swift
//  AI4MRI
//
//  Created by Neha Shaik on 4/25/22.
//

import SwiftUI
import WebKit
struct WebView: UIViewRepresentable {
  var url: URL
  func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
  }
  func updateUIView(_ webView: WKWebView, context: Context) {
    let request = URLRequest(url: url)
    webView.load(request)
  }
}
struct IntroductionView: View {
  var body: some View {
    WebView(url: URL(string: "https://sites.google.com/view/ai4mri/brain-tumors")!)
  }
}
struct IntroView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("General Information About Tumors")
                        .font(.system(size: 40))
                    Image("Tumor")
                        .resizable()
                        .scaledToFit()
                    
                    Text("What is a Brain Tumor?")
                        .font(.system(size: 40))
                        .padding()
                    Text("A brain tumor is a growth of abnormal cells in your brain.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("The characteristics of every brain tumor are different. Some tumors can be benign (non-cancerous), and others malignant (cancerous). They can be primary tumors, which begin in the brain, or most commonly secondary (metastatic) tumors, which begin in other parts of your body and spread to the brain.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                }
                VStack {
                    Text("Causes")
                        .font(.system(size: 40))
                        .padding()
                    Text("The exact causes of brain tumors are unknown, but doctors suspect that mutations or defects in our DNA might cause cells in the brain to grow abnormally.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Brain tumors may also be caused due to the environment. If you have/had excessive exposure to radiation, or previous cancer treatment, you may be at more risk of developing a brain tumor. ")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Hereditary factors also play a part in the likelihood of developing tumors.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("You cannot fully prevent tumors from happening, but you can reduce your risk by not smoking and avoiding excessive amounts of radiation.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                }
                VStack {
                    Text("Symptoms")
                        .font(.system(size: 40))
                        .padding()
                    Text("Brain tumors can have no symptoms at all, which in some cases leads to doctors finding them by accident. However, as the tumor grows, it squeezes on the surrounding nerves and blood vessels, which may cause symptoms. These symptoms are varied as different parts of the brain have different functions. Some symptoms include:")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    
                    Text("Diagnosis")
                        .font(.system(size: 40))
                        .padding()
                    Text("To diagnose a brain tumor, several tests are used. Some tests include:")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Physical exam and medical history: During this visit, your doctor asks you about your current and previous medical conditions, treatments, and surgeries. They could also ask you about your family’s medical history. Your doctor will also perform a general health exam.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Biopsy: Your doctor takes a sample of the tissue from the tumor through a small hole in the skull and sends it to a lab to pinpoint certain attributes of the tumor, like how fast it is spreading.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Imaging Tests: These tests, which include PET scans and MRIs, help doctors locate where the tumor is, what type it could be, and whether it is malignant or benign.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Neurological exam: Your doctor will look for changes in your balance, coordination, hearing, vision and reflexes. These changes can point to the part of your brain that may be affected by a tumor.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Spinal Tap/Lumbar Puncture: During a spinal tap, your doctor removes fluid from around the spine using a small needle. A laboratory inspects the sample for cancer cells, which can determine if there is a malignant tumor lacked somewhere in the CNS (central nervous system).")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Based on the results of these tests, your doctor determines if the tumor is cancerous or not. If they are, they will categorize the tumor into one of four categories, from I (slow-growing, least malignant) to IV (fast-growing, most malignant). This grade helps doctors decide on the most beneficial treatment for you.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                }
                VStack {
                    Text("Treatment")
                        .font(.system(size: 40))
                        .padding()
                    Text("Since brain tumors vary greatly, there are many different options for treatment. Doctors can use only one treatment, or a combination of many.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Surgery: If the brain tumor is located in an easily accessible place, surgeons will carefully remove the tumor. They might just remove part of it, but even that can help lessen the symptoms.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Radiation Therapy: Doctors use high energy beams, traditionally X-rays but sometimes proton beams to kill tumor cells, either getting rid of the tumor or shrinking it. This type of therapy is often used in conjunction with surgery so the surgeon has less tissue to remove.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Radiosurgery: While not a traditional form of surgery, radiosurgery focuses multiple high-energy beams at a specific, tiny area. This area, the point at which all the beams meet, is where the tumor cells are killed.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Chemotherapy: Doctors use drugs to kill the tumor cells. The drugs can be taken as pills or they can be injected into a vein (intravenously). The most commonly used chemotherapy drug to treat brain tumors is temozolomide (Temodar), but depending on your tumor, other drugs could be recommended too. Chemotherapy is usually used to kill any remaining tumor cells after surgery, or to stop the remaining cells from growing further.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Targeted Drug Therapy: This type of treatment targets specific abnormalities in cancer cells. By removing these abnormalities, the cancer cells are able to die. This is usually recommended in case you cannot tolerate the side effects of chemotherapy.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Active Surveillance: If the tumor is a lower grade, the doctor may do regular testing to observe and monitor the tumor, but not take any other action.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                }
                VStack {
                    Text("Types")
                        .font(.system(size: 40))
                        .padding()
                    Text("There are over 120 types of brain tumors, but a few of the most common are:")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Meningiomas: Most meningiomas grow so slowly that they are not noticed. They originate in the meninges, which are layers of tissue that protect the brain. This tumor is typically benign (non-cancerous).")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                    Text("Gliomas: Gliomas are a type of brain tumor that begins in the glial cells. Two main types of gliomas are astrocytomas and glioblastomas. Astrocytomas come from astrocytes, which are star-shaped glial cells found in the brain’s cerebrum. Glioblastomas also originate in the astrocytes, but they are far more lethal.")
                        .font(.system(size: 20))
                        .scaledToFit()
                        .padding()
                }
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
