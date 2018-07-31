.class final Lcom/google/android/gms/internal/ads/zzah;
.super Lcom/google/android/gms/internal/ads/zzai;


# instance fields
.field private final zzbo:Lcom/google/android/gms/internal/ads/zzar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzar;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzai;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzah;->zzbo:Lcom/google/android/gms/internal/ads/zzar;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzr;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzaq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzaq;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzah;->zzbo:Lcom/google/android/gms/internal/ads/zzar;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzar;->zzb(Lcom/google/android/gms/internal/ads/zzr;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzl;

    invoke-interface/range {v3 .. v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v3 .. v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzaq;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(ILjava/util/List;)V

    return-object p0

    :cond_1
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int p2, v1

    int-to-long v3, p2

    cmp-long p2, v3, v1

    if-nez p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaq;

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p2

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const/16 p1, 0x28

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Response too large: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
