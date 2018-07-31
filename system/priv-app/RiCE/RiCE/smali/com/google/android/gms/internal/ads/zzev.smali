.class public final Lcom/google/android/gms/internal/ads/zzev;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field private zzafl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzoz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzoz;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzafl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzgh()Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzafl:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkr()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzgi()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzafl:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzgj()Lcom/google/android/gms/internal/ads/zzgd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzex;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzev;->zzafl:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzoz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzex;-><init>(Lcom/google/android/gms/internal/ads/zzoz;)V

    return-object v0
.end method
