.class final synthetic Lcom/google/android/gms/internal/ads/zzajn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzcpv:Lcom/google/android/gms/internal/ads/zzajm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajm;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzcpv:Lcom/google/android/gms/internal/ads/zzajm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajn;->zzcpv:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajm;->zzqj()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
