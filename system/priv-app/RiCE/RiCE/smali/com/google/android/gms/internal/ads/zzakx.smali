.class public Lcom/google/android/gms/internal/ads/zzakx;
.super Lcom/google/android/gms/internal/ads/zzakw;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakw;-><init>()V

    return-void
.end method


# virtual methods
.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 0

    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzakw;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final zzrn()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method
