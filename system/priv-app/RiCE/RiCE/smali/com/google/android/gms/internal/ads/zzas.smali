.class public final Lcom/google/android/gms/internal/ads/zzas;
.super Lcom/google/android/gms/internal/ads/zzai;


# instance fields
.field private final zzci:Lcom/google/android/gms/internal/ads/zzat;

.field private final zzcj:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzas;-><init>(Lcom/google/android/gms/internal/ads/zzat;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzat;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzas;-><init>(Lcom/google/android/gms/internal/ads/zzat;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzat;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzai;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzas;->zzci:Lcom/google/android/gms/internal/ads/zzat;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzas;->zzcj:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static zza(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface/range {v1 .. v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface/range {v1 .. v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface/range {v2 .. v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface/range {v2 .. v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v2 .. v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzl;

    invoke-interface/range {v1 .. v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/gms/internal/ads/zzr<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/ads/zza;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzr;->zzg()[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded; charset="

    const-string v2, "UTF-8"

    invoke-static/range {v2 .. v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v0 .. v0}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzr;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzaq;
    .locals 5
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

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzr;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct/range {v1 .. v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzr;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzas;->zzci:Lcom/google/android/gms/internal/ads/zzat;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzas;->zzci:Lcom/google/android/gms/internal/ads/zzat;

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/io/IOException;

    const-string p1, "URL blocked by rewriter: "

    invoke-static/range {v0 .. v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object p0, v0

    :cond_2
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzr;->zzi()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v3, "https"

    invoke-virtual/range {p2 .. p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual/range {v1 .. v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzr;->getMethod()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p2, "PATCH"

    goto :goto_2

    :pswitch_1
    const-string p2, "TRACE"

    goto :goto_3

    :pswitch_2
    const-string p2, "OPTIONS"

    goto :goto_3

    :pswitch_3
    const-string p2, "HEAD"

    goto :goto_3

    :pswitch_4
    const-string p2, "DELETE"

    goto :goto_3

    :pswitch_5
    const-string p2, "PUT"

    goto :goto_2

    :pswitch_6
    const-string p2, "POST"

    :goto_2
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzr;)V

    goto :goto_4

    :pswitch_7
    const-string p2, "GET"

    :goto_3
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_4
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzr;->getMethod()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/16 p1, 0x64

    if-gt p1, p2, :cond_4

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_5

    :cond_4
    const/16 p1, 0xcc

    if-eq p2, p1, :cond_5

    const/16 p1, 0x130

    if-eq p2, p1, :cond_5

    move v0, v2

    :cond_5
    if-nez v0, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaq;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaq;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzaq;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p1

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
