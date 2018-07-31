.class public final Lcom/google/android/gms/internal/ads/zzaq;
.super Ljava/lang/Object;


# instance fields
.field private final zzce:I

.field private final zzcf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcg:I

.field private final zzch:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzl;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzl;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzce:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzcf:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzcg:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzch:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzch:Ljava/io/InputStream;

    return-object p0
.end method

.method public final getContentLength()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzcg:I

    return p0
.end method

.method public final getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzce:I

    return p0
.end method

.method public final zzq()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaq;->zzcf:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
