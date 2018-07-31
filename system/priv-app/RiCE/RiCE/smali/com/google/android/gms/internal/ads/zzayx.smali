.class public final Lcom/google/android/gms/internal/ads/zzayx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatz;


# instance fields
.field private final zzdnv:Lcom/google/android/gms/internal/ads/zzazi;

.field private final zzdnw:Lcom/google/android/gms/internal/ads/zzauk;

.field private final zzdnx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazi;Lcom/google/android/gms/internal/ads/zzauk;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnv:Lcom/google/android/gms/internal/ads/zzazi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnw:Lcom/google/android/gms/internal/ads/zzauk;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnx:I

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnv:Lcom/google/android/gms/internal/ads/zzazi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzazi;->zzk([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [B

    :cond_0
    const/16 v1, 0x8

    invoke-static/range {v1 .. v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x8

    array-length v5, p2

    int-to-long v5, v5

    mul-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzayx;->zzdnw:Lcom/google/android/gms/internal/ads/zzauk;

    const/4 v2, 0x3

    new-array v2, v2, [[B

    aput-object p2, v2, v0

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzayk;->zza([[B)[B

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzauk;->zzg([B)[B

    move-result-object p0

    new-array v1, v3, [[B

    aput-object p1, v1, v0

    aput-object p0, v1, p2

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzayk;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method
