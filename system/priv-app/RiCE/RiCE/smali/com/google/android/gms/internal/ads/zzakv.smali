.class public Lcom/google/android/gms/internal/ads/zzakv;
.super Lcom/google/android/gms/internal/ads/zzakt;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 0

    invoke-virtual/range {p1 .. p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zzrq()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
