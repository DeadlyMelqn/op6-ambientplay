.class public Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;
.super Ljava/lang/Object;
.source "WaveHeader.java"


# instance fields
.field private mBitsPerSample:S

.field private mFormat:S

.field private mNumBytes:I

.field private mNumChannels:S

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(SSISI)V
    .locals 0
    .param p1, "format"    # S
    .param p2, "numChannels"    # S
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # S
    .param p5, "numBytes"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-short p1, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mFormat:S

    .line 75
    iput p3, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mSampleRate:I

    .line 76
    iput-short p2, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumChannels:S

    .line 77
    iput-short p4, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mBitsPerSample:S

    .line 78
    iput p5, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumBytes:I

    .line 79
    return-void
.end method

.method private static writeId(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 259
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 260
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 261
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 262
    return-void
.end method

.method private static writeShort(Ljava/io/OutputStream;S)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "val"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 266
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 267
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    const-string/jumbo v0, "WaveHeader format=%d numChannels=%d sampleRate=%d bitsPerSample=%d numBytes=%d"

    .line 271
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 273
    iget-short v2, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mFormat:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumChannels:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-short v2, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mBitsPerSample:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 271
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const-string/jumbo v0, "RIFF"

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumBytes:I

    add-int/lit8 v0, v0, 0x24

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 234
    const-string/jumbo v0, "WAVE"

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 237
    const-string/jumbo v0, "fmt "

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 238
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 239
    iget-short v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mFormat:S

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 240
    iget-short v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumChannels:S

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 241
    iget v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mSampleRate:I

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 242
    iget-short v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumChannels:S

    iget v1, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mSampleRate:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 243
    iget-short v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumChannels:S

    iget-short v1, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 244
    iget-short v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mBitsPerSample:S

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    .line 247
    const-string/jumbo v0, "data"

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 248
    iget v0, p0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->mNumBytes:I

    invoke-static {p1, v0}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    .line 250
    const/16 v0, 0x2c

    return v0
.end method
