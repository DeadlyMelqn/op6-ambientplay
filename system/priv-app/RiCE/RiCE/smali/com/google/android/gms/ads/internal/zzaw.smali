.class final Lcom/google/android/gms/ads/internal/zzaw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzwd:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzwd:Ljava/util/concurrent/CountDownLatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    const-string p2, "Adapter returned an ad, but assets substitution failed"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzwd:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqw;->destroy()V

    return-void
.end method
