.class public final Lcom/google/android/gms/internal/ads/zzazh;
.super Ljava/lang/Object;


# instance fields
.field private final data:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array p2, p3, [B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazh;->data:[B

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzazh;->data:[B

    const/4 p2, 0x0

    invoke-static {p1, p2, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static zzm([B)Lcom/google/android/gms/internal/ads/zzazh;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzazh;-><init>([BII)V

    return-object v1
.end method


# virtual methods
.method public final getBytes()[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazh;->data:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazh;->data:[B

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzazh;->data:[B

    array-length p0, p0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
