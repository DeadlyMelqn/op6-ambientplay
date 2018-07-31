.class final Lcom/google/android/gms/internal/ads/zzvl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Lcom/google/android/gms/internal/ads/zzwb;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

.field private final synthetic zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

.field private final synthetic zzbql:Lcom/google/android/gms/internal/ads/zzci;

.field private final synthetic zzbqm:Lcom/google/android/gms/internal/ads/zzamk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvf;Lcom/google/android/gms/internal/ads/zzci;Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzamk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbql:Lcom/google/android/gms/internal/ads/zzci;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqm:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzvf;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzvf;->zzd(Lcom/google/android/gms/internal/ads/zzvf;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdj(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzvf;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqk:Lcom/google/android/gms/internal/ads/zzvf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbql:Lcom/google/android/gms/internal/ads/zzci;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzvf;->zza(Lcom/google/android/gms/internal/ads/zzci;)Lcom/google/android/gms/internal/ads/zzvw;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqj:Lcom/google/android/gms/internal/ads/zzuu;

    const-string v0, "/requestReload"

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzbqm:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamk;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
