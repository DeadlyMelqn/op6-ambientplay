.class public final Lcom/google/android/gms/ads/internal/zzbn;
.super Ljava/lang/Object;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbn;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzbn;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzbn;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method