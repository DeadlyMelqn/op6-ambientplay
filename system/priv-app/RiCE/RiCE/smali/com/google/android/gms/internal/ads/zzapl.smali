.class final Lcom/google/android/gms/internal/ads/zzapl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcyd:Lcom/google/android/gms/internal/ads/zzapi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapl;->zzcyd:Lcom/google/android/gms/internal/ads/zzapi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapl;->zzcyd:Lcom/google/android/gms/internal/ads/zzapi;

    const-string v0, "surfaceDestroyed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzapi;->zza(Lcom/google/android/gms/internal/ads/zzapi;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method