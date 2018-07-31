.class public final Lcom/google/android/gms/internal/ads/zzauy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatz;


# static fields
.field private static final zzdhv:[B


# instance fields
.field private final zzdhw:Lcom/google/android/gms/internal/ads/zzaxn;

.field private final zzdhx:Lcom/google/android/gms/internal/ads/zzatz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauy;->zzdhv:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxn;Lcom/google/android/gms/internal/ads/zzatz;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzdhw:Lcom/google/android/gms/internal/ads/zzaxn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzdhx:Lcom/google/android/gms/internal/ads/zzatz;

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzdhw:Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzauo;->zzb(Lcom/google/android/gms/internal/ads/zzaxn;)Lcom/google/android/gms/internal/ads/zzbcu;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbcu;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzdhx:Lcom/google/android/gms/internal/ads/zzatz;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzauy;->zzdhv:[B

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzatz;->zzc([B[B)[B

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzdhw:Lcom/google/android/gms/internal/ads/zzaxn;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxn;->zzyw()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzauo;->zza(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzatz;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzatz;->zzc([B[B)[B

    move-result-object p0

    array-length p1, v1

    add-int/lit8 p1, p1, 0x4

    array-length p2, p0

    add-int/2addr p1, p2

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    array-length p2, v1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
