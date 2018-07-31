.class public final Lcom/google/android/gms/internal/ads/zzez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field private final zzafo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zzafp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzajh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzajh;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzez;->zzafo:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzez;->zzafp:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zzgh()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzez;->zzafo:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final zzgi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzez;->zzafo:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzez;->zzafp:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final zzgj()Lcom/google/android/gms/internal/ads/zzgd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzey;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzez;->zzafo:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzez;->zzafp:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzey;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzajh;)V

    return-object v0
.end method
