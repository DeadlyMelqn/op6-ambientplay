.class Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;
.super Ljava/lang/Thread;
.source "AmbientPlayRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation


# instance fields
.field private mDataSending:Z

.field private mLastMatchTryTime:J

.field private mResultGiven:Z

.field final synthetic this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mDataSending:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mDataSending:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;[BI)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;
    .param p1, "inputBuffer"    # [B
    .param p2, "length"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->sendAudioData([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->parseXmlResult(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mDataSending:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mResultGiven:Z

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;
    .param p2, "-this1"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;-><init>(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)V

    return-void
.end method

.method private computeAmplitude([BI)D
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "sample"    # I

    .prologue
    .line 111
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    or-int v0, v1, v2

    .line 113
    .local v0, "amplitude":I
    int-to-double v2, v0

    const-wide/high16 v4, 0x40f0000000000000L    # 65536.0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method private computeAverageAmplitude([BII)D
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "startSample"    # I
    .param p3, "numSamples"    # I

    .prologue
    .line 101
    const-wide/16 v2, 0x0

    .line 102
    .local v2, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 103
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->computeAmplitude([BI)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    int-to-double v4, p3

    div-double v4, v2, v4

    return-wide v4
.end method

.method private parseXmlResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 183
    const-string/jumbo v3, "did not hear any music"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "no close matches"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    :cond_0
    const-string/jumbo v3, "AmbientPlayRecognition"

    const-string/jumbo v4, "No match (Maybe we could not hear the track?)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v5}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->reportResult(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;)V

    .line 208
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v2, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;

    invoke-direct {v2}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;-><init>()V

    .line 191
    .local v2, "result":Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;
    const-string/jumbo v3, "<track .*?artist_name=\"(.*?)\".*?album_name=\"(.*?)\".*?track_name=\"(.*?)\".*?album_primary_image=\"(.*?)\".*?>"

    .line 192
    const/16 v4, 0x28

    .line 191
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 193
    .local v0, "data_re":Ljava/util/regex/Pattern;
    const-string/jumbo v3, "\n"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 195
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->ArtistName:Ljava/lang/String;

    .line 197
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->AlbumName:Ljava/lang/String;

    .line 198
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->TrackName:Ljava/lang/String;

    .line 199
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->AlbumImageUrl:Ljava/lang/String;

    .line 200
    const-string/jumbo v3, "AmbientPlayRecognition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got a match! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->reportResult(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;)V

    goto :goto_0

    .line 202
    :cond_2
    const-string/jumbo v3, "AmbientPlayRecognition"

    const-string/jumbo v4, "Regular expression didn\'t match!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, v5}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->reportResult(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;)V

    goto :goto_1
.end method

.method private reportResult(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;)V
    .locals 2
    .param p1, "result"    # Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get3(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 214
    const-string/jumbo v0, "AmbientPlayRecognition"

    const-string/jumbo v1, "Reporting onNoMatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get2(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;->onNoMatch()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    if-eqz p1, :cond_0

    .line 217
    const-string/jumbo v0, "AmbientPlayRecognition"

    const-string/jumbo v1, "Reporting result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mResultGiven:Z

    .line 219
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get3(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-virtual {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->stopRecording()V

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get2(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;->onResult(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;)V

    goto :goto_0
.end method

.method private sendAudioData([BI)Ljava/lang/String;
    .locals 13
    .param p1, "inputBuffer"    # [B
    .param p2, "length"    # I

    .prologue
    .line 148
    const-string/jumbo v1, "AmbientPlayRecognition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Preparing to send audio data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    new-instance v12, Ljava/net/URL;

    const-string/jumbo v1, "http://search.midomi.com:443/v2/?method=search&type=identify"

    invoke-direct {v12, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 152
    .local v7, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "User-Agent: AppNumber=48000 APIVersion=2.1.0.0 DEV=Android UID=dkl109sas19s"

    invoke-virtual {v7, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "audio/wav"

    invoke-virtual {v7, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 155
    const/16 v1, 0xfa0

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 156
    const/16 v1, 0x2710

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 159
    const-string/jumbo v1, "AmbientPlayRecognition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending mic data, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 161
    const/16 v3, 0x2b11

    const/16 v4, 0x10

    move v5, p2

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;-><init>(SSISI)V

    .line 162
    .local v0, "header":Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;->write(Ljava/io/OutputStream;)I

    .line 163
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 166
    .local v9, "is":Ljava/io/InputStream;
    const/16 v1, 0x2000

    new-array v6, v1, [B

    .line 168
    .local v6, "buffer":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v11, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v9, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "read":I
    if-lez v10, :cond_0

    .line 170
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0    # "header":Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;
    .end local v6    # "buffer":[B
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "read":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 175
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AmbientPlayRecognition"

    const-string/jumbo v2, "Error while sending audio data"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mDataSending:Z

    .line 179
    const-string/jumbo v1, ""

    return-object v1

    .line 173
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "header":Lcom/android/systemui/ambientmusic/aoscp/WaveHeader;
    .restart local v6    # "buffer":[B
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "read":I
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 59
    const-string/jumbo v3, "AmbientPlayRecognition"

    const-string/jumbo v4, "Started reading recorder..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mLastMatchTryTime:J

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v4}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)[B

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get3(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v4}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v5}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v6}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)[B

    move-result-object v6

    array-length v6, v6

    iget-object v7, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v7}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I

    move-result v7

    sub-int/2addr v6, v7

    const/16 v7, 0x200

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 68
    .local v2, "read":I
    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 69
    const-string/jumbo v3, "AmbientPlayRecognition"

    const-string/jumbo v4, "BAD_VALUE while reading recorder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 92
    .end local v2    # "read":I
    :cond_1
    const-string/jumbo v3, "AmbientPlayRecognition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Broke out of recording loop, mResultGiven="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mResultGiven:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mResultGiven:Z

    if-nez v3, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->tryMatchCurrentBuffer()V

    .line 97
    :cond_2
    return-void

    .line 71
    .restart local v2    # "read":I
    :cond_3
    const/4 v3, -0x3

    if-ne v2, v3, :cond_4

    .line 72
    :try_start_1
    const-string/jumbo v3, "AmbientPlayRecognition"

    const-string/jumbo v4, "INVALID_OPERATION while reading recorder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 65
    .end local v2    # "read":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 74
    .restart local v2    # "read":I
    :cond_4
    if-ltz v2, :cond_5

    .line 75
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-set0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    .line 79
    if-ltz v2, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_6

    .line 81
    iget-object v3, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v3}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get2(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v4}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get0(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v5}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    const/4 v6, 0x4

    invoke-direct {p0, v4, v5, v6}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->computeAverageAmplitude([BII)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Callback;->onAudioLevel(F)V

    .line 84
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 85
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mLastMatchTryTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xbb8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->tryMatchCurrentBuffer()V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->mLastMatchTryTime:J

    goto/16 :goto_0
.end method

.method public tryMatchCurrentBuffer()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;->this$0:Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;

    invoke-static {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;->-get1(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition;)I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;-><init>(Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread;)V

    invoke-virtual {v0}, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$RecorderThread$1;->start()V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string/jumbo v0, "AmbientPlayRecognition"

    const-string/jumbo v1, "0 bytes recorded!?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
