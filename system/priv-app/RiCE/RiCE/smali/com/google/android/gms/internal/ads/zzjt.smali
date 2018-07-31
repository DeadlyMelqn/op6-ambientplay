.class final Lcom/google/android/gms/internal/ads/zzjt;
.super Lcom/google/android/gms/internal/ads/zzjr$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzjr$zza<",
        "Lcom/google/android/gms/internal/ads/zzks;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzarq:Lcom/google/android/gms/internal/ads/zzjn;

.field private final synthetic zzarr:Ljava/lang/String;

.field private final synthetic zzart:Lcom/google/android/gms/internal/ads/zzjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjt;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzarq:Lcom/google/android/gms/internal/ads/zzjn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzarr:Ljava/lang/String;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzjr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzjr;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzld;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzarq:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzarr:Ljava/lang/String;

    const v2, 0xbdfcb8

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzld;->createSearchAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzib()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzjr;->zzb(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzjh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjt;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzarq:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzarr:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzjh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;I)Lcom/google/android/gms/internal/ads/zzks;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjt;->val$context:Landroid/content/Context;

    const-string v1, "search"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzmj;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzmj;-><init>()V

    return-object p0
.end method
