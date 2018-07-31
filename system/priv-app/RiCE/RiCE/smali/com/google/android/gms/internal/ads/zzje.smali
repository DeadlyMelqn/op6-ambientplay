.class public final Lcom/google/android/gms/internal/ads/zzje;
.super Lcom/google/android/gms/internal/ads/zzkf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzapt:Lcom/google/android/gms/internal/ads/zzjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzjd;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzje;->zzapt:Lcom/google/android/gms/internal/ads/zzjd;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjd;->onAdClicked()V

    return-void
.end method
