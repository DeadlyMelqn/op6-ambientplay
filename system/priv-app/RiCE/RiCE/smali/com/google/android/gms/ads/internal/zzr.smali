.class final Lcom/google/android/gms/ads/internal/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzwt:Lcom/google/android/gms/ads/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzr;->zzwt:Lcom/google/android/gms/ads/internal/zzq;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzwt:Lcom/google/android/gms/ads/internal/zzq;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzr;->zzwt:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/zzq;)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method
