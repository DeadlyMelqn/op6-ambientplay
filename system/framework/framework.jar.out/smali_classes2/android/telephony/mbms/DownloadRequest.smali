.class public final Landroid/telephony/mbms/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/DownloadRequest$1;,
        Landroid/telephony/mbms/DownloadRequest$Builder;,
        Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsDownloadRequest"

.field public static final MAX_APP_INTENT_SIZE:I = 0xc350

.field public static final MAX_DESTINATION_URI_SIZE:I = 0xc350


# instance fields
.field private final fileServiceId:Ljava/lang/String;

.field private final serializedResultIntentForApp:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;

.field private final subscriptionId:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Landroid/telephony/mbms/DownloadRequest$1;

    invoke-direct {v0}, Landroid/telephony/mbms/DownloadRequest$1;-><init>()V

    .line 276
    sput-object v0, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Landroid/telephony/mbms/DownloadRequest;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/mbms/DownloadRequest;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/mbms/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 1
    .param p1, "dr"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iget-object v0, p1, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    .line 187
    iget-object v0, p1, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    .line 188
    iget v0, p1, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    .line 189
    iget-object v0, p1, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    .line 190
    iget v0, p1, Landroid/telephony/mbms/DownloadRequest;->version:I

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    .line 191
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 0
    .param p1, "fileServiceId"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "sub"    # I
    .param p4, "appIntent"    # Ljava/lang/String;
    .param p5, "version"    # I

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    .line 176
    iput p3, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    .line 177
    iput-object p4, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    .line 178
    iput p5, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest;)V
    .locals 0
    .param p1, "fileServiceId"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/net/Uri;
    .param p3, "sub"    # I
    .param p4, "appIntent"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "-this5"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public static copy(Landroid/telephony/mbms/DownloadRequest;)Landroid/telephony/mbms/DownloadRequest;
    .locals 1
    .param p0, "other"    # Landroid/telephony/mbms/DownloadRequest;

    .prologue
    .line 182
    new-instance v0, Landroid/telephony/mbms/DownloadRequest;

    invoke-direct {v0, p0}, Landroid/telephony/mbms/DownloadRequest;-><init>(Landroid/telephony/mbms/DownloadRequest;)V

    return-object v0
.end method

.method public static getMaxAppIntentSize()I
    .locals 1

    .prologue
    .line 291
    const v0, 0xc350

    return v0
.end method

.method public static getMaxDestinationUriSize()I
    .locals 1

    .prologue
    .line 299
    const v0, 0xc350

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 336
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 337
    :cond_0
    if-nez p1, :cond_1

    .line 338
    return v1

    .line 340
    :cond_1
    instance-of v2, p1, Landroid/telephony/mbms/DownloadRequest;

    if-nez v2, :cond_2

    .line 341
    return v1

    :cond_2
    move-object v0, p1

    .line 343
    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    .line 344
    .local v0, "request":Landroid/telephony/mbms/DownloadRequest;
    iget v2, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iget v3, v0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    if-ne v2, v3, :cond_3

    .line 345
    iget v2, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    iget v3, v0, Landroid/telephony/mbms/DownloadRequest;->version:I

    if-ne v2, v3, :cond_3

    .line 346
    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 344
    if-eqz v2, :cond_3

    .line 347
    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 344
    if-eqz v2, :cond_3

    .line 348
    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget-object v2, v0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 344
    :cond_3
    return v1
.end method

.method public getFileServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    :try_start_0
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    .local v0, "digest":Ljava/security/MessageDigest;
    iget v2, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 325
    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 326
    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Could not get sha256 hash object"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntentForApp()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOpaqueData()[B
    .locals 6

    .prologue
    .line 257
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 259
    .local v3, "stream":Ljava/io/ObjectOutputStream;
    new-instance v1, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;

    .line 260
    iget-object v4, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    .line 259
    invoke-direct {v1, v4, v5}, Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;-><init>(Ljava/lang/String;I)V

    .line 261
    .local v1, "container":Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
    invoke-virtual {v3, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 263
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 264
    .end local v0    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "container":Landroid/telephony/mbms/DownloadRequest$OpaqueDataContainer;
    .end local v3    # "stream":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "MbmsDownloadRequest"

    const-string/jumbo v5, "Got IOException trying to serialize opaque data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v4, 0x0

    return-object v4
.end method

.method public getSourceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 354
    iget v1, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 353
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMultipartDownload()Z
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/telephony/mbms/DownloadRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Landroid/telephony/mbms/DownloadRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 206
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 208
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return-void
.end method
