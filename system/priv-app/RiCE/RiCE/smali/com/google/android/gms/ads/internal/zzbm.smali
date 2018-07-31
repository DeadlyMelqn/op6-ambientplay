.class final Lcom/google/android/gms/ads/internal/zzbm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaas:Ljava/lang/ref/WeakReference;

.field private final synthetic zzaat:Lcom/google/android/gms/ads/internal/zzbl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbl;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbm;->zzaat:Lcom/google/android/gms/ads/internal/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzbm;->zzaas:Ljava/lang/ref/WeakReference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbm;->zzaat:Lcom/google/android/gms/ads/internal/zzbl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzbl;->zza(Lcom/google/android/gms/ads/internal/zzbl;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbm;->zzaas:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/zza;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzbm;->zzaat:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/zzbl;->zzb(Lcom/google/android/gms/ads/internal/zzbl;)Lcom/google/android/gms/internal/ads/zzjj;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/zza;->zzc(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    return-void

    :cond_0
    const-string v1, "Ad is not visible. Not refreshing ad."

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zza;->zzvv:Lcom/google/android/gms/ads/internal/zzbl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/zzbl;->zzg(Lcom/google/android/gms/internal/ads/zzjj;)V

    :cond_1
    return-void
.end method
