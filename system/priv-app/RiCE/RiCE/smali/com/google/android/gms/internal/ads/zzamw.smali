.class final Lcom/google/android/gms/internal/ads/zzamw;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic zzcce:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamv;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzcce:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzamw;->zzcce:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzanf;->zzcz(Ljava/lang/String;)V

    return-void
.end method
