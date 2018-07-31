.class final Lcom/google/android/gms/internal/ads/zzbam;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzdpv:Lcom/google/android/gms/internal/ads/zzbav;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbam;->buffer:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbam;->buffer:[B

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbav;->zzq([B)Lcom/google/android/gms/internal/ads/zzbav;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbam;->zzdpv:Lcom/google/android/gms/internal/ads/zzbav;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzbai;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbam;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzabi()Lcom/google/android/gms/internal/ads/zzbah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbam;->zzdpv:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbav;->zzacl()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbao;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbam;->buffer:[B

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbao;-><init>([B)V

    return-object v0
.end method

.method public final zzabj()Lcom/google/android/gms/internal/ads/zzbav;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbam;->zzdpv:Lcom/google/android/gms/internal/ads/zzbav;

    return-object p0
.end method
