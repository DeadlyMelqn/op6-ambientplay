.class public Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigUpdateInstallReceiver.java"


# static fields
.field private static final EXTRA_REQUIRED_HASH:Ljava/lang/String; = "REQUIRED_HASH"

.field private static final EXTRA_VERSION_NUMBER:Ljava/lang/String; = "VERSION"

.field private static final TAG:Ljava/lang/String; = "ConfigUpdateInstallReceiver"


# instance fields
.field protected final updateContent:Ljava/io/File;

.field protected final updateDir:Ljava/io/File;

.field protected final updateVersion:Ljava/io/File;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "current"    # Ljava/lang/String;
    .param p2, "required"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B
    .locals 1
    .param p0, "-this"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B
    .locals 1
    .param p0, "-this"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .prologue
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;

    .prologue
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5([B)Ljava/lang/String;
    .locals 1
    .param p0, "content"    # [B

    .prologue
    invoke-static {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/updates/ConfigUpdateInstallReceiver;
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "updateDir"    # Ljava/lang/String;
    .param p2, "updateContentPath"    # Ljava/lang/String;
    .param p3, "updateMetadataPath"    # Ljava/lang/String;
    .param p4, "updateVersionPath"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, "updateMetadataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    .line 56
    return-void
.end method

.method private getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, "content":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 137
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 139
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 137
    return-object v2

    .line 138
    :catchall_0
    move-exception v2

    .line 139
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 138
    throw v2
.end method

.method private getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Missing required content path, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    return-object v0
.end method

.method private getCurrentContent()[B
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ConfigUpdateInstallReceiver"

    const-string/jumbo v2, "Failed to read current content, assuming first update!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getCurrentHash([B)Ljava/lang/String;
    .locals 4
    .param p0, "content"    # [B

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    const-string/jumbo v3, "0"

    return-object v3

    .line 157
    :cond_0
    :try_start_0
    const-string/jumbo v3, "SHA512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 158
    .local v0, "dgst":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 159
    .local v2, "fingerprint":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 160
    .end local v0    # "dgst":Ljava/security/MessageDigest;
    .end local v2    # "fingerprint":[B
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getCurrentVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "strVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 127
    .end local v1    # "strVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ConfigUpdateInstallReceiver"

    const-string/jumbo v3, "Couldn\'t find current metadata, assuming first update"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, 0x0

    return v2
.end method

.method private getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 116
    const-string/jumbo v1, "REQUIRED_HASH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "extraValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Missing required previous hash, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVersionFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v1, "VERSION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "extraValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Missing required version number, ignoring."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "current"    # Ljava/lang/String;
    .param p2, "required"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v0, "NONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected install([BI)V
    .locals 4
    .param p1, "content"    # [B
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 212
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 213
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    new-instance v0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;-><init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->start()V

    .line 97
    return-void
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    return-void
.end method

.method protected verifyVersion(II)Z
    .locals 1
    .param p1, "current"    # I
    .param p2, "alternative"    # I

    .prologue
    .line 166
    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeUpdate(Ljava/io/File;Ljava/io/File;[B)V
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 183
    .local v3, "tmp":Ljava/io/File;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 184
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v2    # "parent":Ljava/io/File;
    .end local v3    # "tmp":Ljava/io/File;
    :catchall_0
    move-exception v4

    .line 203
    .end local v0    # "out":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 206
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 202
    throw v4

    .line 190
    .restart local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "parent":Ljava/io/File;
    .restart local v3    # "tmp":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "journal"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 192
    .local v3, "tmp":Ljava/io/File;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 194
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 197
    .end local v0    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 199
    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 200
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to atomically rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v0, "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 203
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 204
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 206
    :cond_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 208
    return-void
.end method