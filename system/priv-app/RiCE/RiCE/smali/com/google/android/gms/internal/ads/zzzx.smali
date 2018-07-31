.class final Lcom/google/android/gms/internal/ads/zzzx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbvr:Lcom/google/android/gms/internal/ads/zzzv;

.field private final synthetic zzzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzbvr:Lcom/google/android/gms/internal/ads/zzzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzei()Lcom/google/android/gms/ads/internal/overlay/zzl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzbvr:Lcom/google/android/gms/internal/ads/zzzv;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzzv;->zzb(Lcom/google/android/gms/internal/ads/zzzv;)Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzzc:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
