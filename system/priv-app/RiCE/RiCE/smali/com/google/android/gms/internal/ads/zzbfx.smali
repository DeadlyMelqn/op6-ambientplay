.class public final Lcom/google/android/gms/internal/ads/zzbfx;
.super Landroid/support/customtabs/CustomTabsServiceConnection;


# instance fields
.field private zzedz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbfy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfy;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzedz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzedz:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbfy;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzbfy;->zza(Landroid/support/customtabs/CustomTabsClient;)V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbfx;->zzedz:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbfy;

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfy;->zzjo()V

    :cond_0
    return-void
.end method
