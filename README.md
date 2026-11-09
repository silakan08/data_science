# Veri Bilimi ve Makine Ogrenmesi Calismalari

Bu repository, veri bilimi dersi kapsaminda gelistirilen iki adet makine ogrenmesi projesini icermektedir.

---

## 1. Maas Tahmini (salary_prediction.ipynb)
Calisanlarin yas, egitim, unvan ve deneyim bilgilerine gore maaslarini tahmin eden regresyon calismasidir.

* **Yapilan Calismalar:**
  * Eksik veriler temizlendi.
  * Egitim seviyesi sirali (ordinal: Lise < Lisans < Yuksek Lisans < Doktora) kodlandi.
  * Maas dagilimi saga carpik oldugu icin log donusumu (`log1p`) uygulandi.
  * Gradient Boosting kullanilarak modelin basarisi artirildi.
* **Sonuclar:**
  * Temel Model R2: **%66.4** -> Optimize Model R2: **%90.9**
  * Ortalama Hata (MAE): **$24,568** -> **$9,960** (Hata %60 azaldi)

---

## 2. Banka Pazarlama & MLOps (bank_mlops_pipeline.ipynb)
Musterilerin vadeli mevduat acip acmayacagini tahmin eden siniflandirma ve model servis etme calismasidir.

* **Yapilan Calismalar:**
  * Verideki %89'a %11 olan sinif dengesizligi `class_weight='balanced'` ile cozuldu.
  * Precision-Recall egrisi uzerinden esik degeri (threshold) optimize edildi.
  * En iyi model `model.joblib` olarak kaydedildi.
  * Modeli servis etmek icin Flask API (`serve/app.py`) ve `Dockerfile` hazirlandi.
* **Sonuclar:**
  * Abone Yakalama Orani (Recall): **%43.6** -> **%74.8**
  * F1-Skoru: **0.5407** -> **0.6628**
  * ROC-AUC: **0.9493**
