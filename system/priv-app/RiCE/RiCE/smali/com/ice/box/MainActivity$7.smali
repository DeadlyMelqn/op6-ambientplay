.class Lcom/ice/box/MainActivity$7;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/MainActivity;->doInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/MainActivity;


# direct methods
.method constructor <init>(Lcom/ice/box/MainActivity;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/ice/box/MainActivity$7;->this$0:Lcom/ice/box/MainActivity;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 9

    .line 625
    iget-object p1, p0, Lcom/ice/box/MainActivity$7;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/MainActivity;->access$600(Lcom/ice/box/MainActivity;)Lcom/ice/box/helpers/TweaksHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/MainActivity$7;->this$0:Lcom/ice/box/MainActivity;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lcom/ice/box/MainActivity$7;->this$0:Lcom/ice/box/MainActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/MainActivity$7;->this$0:Lcom/ice/box/MainActivity;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 628
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 627
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 629
    invoke-virtual/range {v8 .. v8}, Landroid/widget/Toast;->show()V

    .line 630
    new-instance p1, Lcom/ice/box/MainActivity$7$1;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x3e8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/ice/box/MainActivity$7$1;-><init>(Lcom/ice/box/MainActivity$7;JJLandroid/widget/Toast;)V

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/MainActivity$7$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/ice/box/MainActivity$7;->this$0:Lcom/ice/box/MainActivity;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/MainActivity;->access$500(Lcom/ice/box/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    return-void
.end method
