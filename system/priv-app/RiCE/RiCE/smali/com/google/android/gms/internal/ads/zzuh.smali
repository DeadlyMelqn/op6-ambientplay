.class final synthetic Lcom/google/android/gms/internal/ads/zzuh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasz;


# instance fields
.field private final zzbpk:Lcom/google/android/gms/internal/ads/zzuf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzuf;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzasu;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzbpk:Lcom/google/android/gms/internal/ads/zzuf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasu;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzus;->zzf(Landroid/net/Uri;)Z

    return-void
.end method
