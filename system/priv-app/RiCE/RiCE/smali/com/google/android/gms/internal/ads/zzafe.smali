.class final Lcom/google/android/gms/internal/ads/zzafe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaom;


# instance fields
.field private final synthetic zzcgm:Lcom/google/android/gms/internal/ads/zzafc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzcgm:Lcom/google/android/gms/internal/ads/zzafc;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzafa;->zzod()Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzcgm:Lcom/google/android/gms/internal/ads/zzafc;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafc;->zzcgl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->zzat(Ljava/lang/String;)V

    return-void
.end method
