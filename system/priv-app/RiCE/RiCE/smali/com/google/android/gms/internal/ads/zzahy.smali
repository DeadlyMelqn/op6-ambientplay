.class final synthetic Lcom/google/android/gms/internal/ads/zzahy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcmh:Lcom/google/android/gms/internal/ads/zzahx;

.field private final zzxk:Lcom/google/android/gms/internal/ads/zzajh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahx;Lcom/google/android/gms/internal/ads/zzajh;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzcmh:Lcom/google/android/gms/internal/ads/zzahx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzxk:Lcom/google/android/gms/internal/ads/zzajh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzcmh:Lcom/google/android/gms/internal/ads/zzahx;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahy;->zzxk:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzahx;->zzm(Lcom/google/android/gms/internal/ads/zzajh;)V

    return-void
.end method
