# Veri Bilimi ve Makine Öğrenmesi Çalışmaları

Bu repository, veri bilimi dersi kapsamında geliştirilen iki adet makine öğrenmesi projesini içermektedir.

---

## 1. Maaş Tahmini (salary_prediction.ipynb)
Çalışanların yaş, eğitim, unvan ve deneyim bilgilerine göre maaşlarını tahmin eden regresyon çalışmasıdır.

* **Yapılan Çalışmalar:**
  * Eksik veriler temizlendi.
  * Eğitim seviyesi sıralı (ordinal: Lise < Lisans < Yüksek Lisans < Doktora) olarak kodlandı.
  * Maaş dağılımı sağa çarpık olduğu için log dönüşümü (`log1p`) uygulandı.
  * Gradient Boosting kullanılarak modelin başarısı artırıldı.
* **Sonuçlar:**
  * Temel Model R²: **%66.4** -> Optimize Model R²: **%90.9**
  * Ortalama Hata (MAE): **$24,568** -> **$9,960** (Hata %60 azaldı)

---

## 2. Banka Pazarlama & MLOps (bank_mlops_pipeline.ipynb)
Müşterilerin vadeli mevduat açıp açmayacağını tahmin eden sınıflandırma ve model servis etme çalışmasıdır.

* **Yapılan Çalışmalar:**
  * Verideki %89'a %11 olan sınıf dengesizliği `class_weight='balanced'` ile çözüldü.
  * Precision-Recall eğrisi üzerinden eşik değeri (threshold) optimize edildi.
  * En iyi model `model.joblib` olarak kaydedildi.
  * Modeli servis etmek için Flask API (`serve/app.py`) ve `Dockerfile` hazırlandı.
* **Sonuçlar:**
  * Abone Yakalama Oranı (Recall): **%43.6** -> **%74.8**
  * F1-Skoru: **0.5407** -> **0.6628**
  * ROC-AUC: **0.9493**
