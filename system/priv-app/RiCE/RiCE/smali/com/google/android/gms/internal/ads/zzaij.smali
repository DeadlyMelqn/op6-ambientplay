.class final synthetic Lcom/google/android/gms/internal/ads/zzaij;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanj;


# instance fields
.field private final zzcmy:Lcom/google/android/gms/internal/ads/zzaii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaii;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzcmy:Lcom/google/android/gms/internal/ads/zzaii;

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzanz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaij;->zzcmy:Lcom/google/android/gms/internal/ads/zzaii;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaii;->zzm(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzanz;

    move-result-object p0

    return-object p0
.end method
