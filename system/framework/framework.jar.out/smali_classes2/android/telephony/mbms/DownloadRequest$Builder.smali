.class public Landroid/telephony/mbms/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appIntent:Ljava/lang/String;

.field private fileServiceId:Ljava/lang/String;

.field private source:Landroid/net/Uri;

.field private subscriptionId:I

.field private version:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Source URI must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    .line 86
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/mbms/DownloadRequest;
    .locals 7

    .prologue
    .line 161
    new-instance v0, Landroid/telephony/mbms/DownloadRequest;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    iget v3, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    iget-object v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest;)V

    return-object v0
.end method

.method public setAppIntent(Landroid/content/Intent;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc350

    if-le v0, v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "App intent must not exceed length 50000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-object p0
.end method

.method public setOpaqueData([B)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 145
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 146
    .local v3, "stream":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;

    .line 147
    .local v0, "dataContainer":Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
    invoke-static {v0}, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->-get1(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)I

    move-result v4

    iput v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    .line 148
    invoke-static {v0}, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;->-get0(Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-object p0

    .line 153
    .end local v0    # "dataContainer":Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
    .end local v3    # "stream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "MbmsDownloadRequest"

    const-string/jumbo v5, "Got ClassNotFoundException trying to parse opaque data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 149
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MbmsDownloadRequest"

    const-string/jumbo v5, "Got IOException trying to parse opaque data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setServiceInfo(Landroid/telephony/mbms/FileServiceInfo;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 1
    .param p1, "serviceInfo"    # Landroid/telephony/mbms/FileServiceInfo;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/telephony/mbms/FileServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 0
    .param p1, "subscriptionId"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    .line 114
    return-object p0
.end method
