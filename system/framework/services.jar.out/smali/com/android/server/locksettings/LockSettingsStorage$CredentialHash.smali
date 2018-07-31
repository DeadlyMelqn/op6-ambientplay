.class public Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# static fields
.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field type:I

.field version:I


# direct methods
.method static synthetic -wrap0([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p0, "hash"    # [B

    .prologue
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>([BII)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "version"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>([BIILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;)V
    .locals 0
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "version"    # I
    .param p4, "-this3"    # Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BIIZ)V
    .locals 2
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "version"    # I
    .param p4, "isBaseZeroPattern"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 105
    if-nez p1, :cond_1

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Empty hash for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-eqz p1, :cond_1

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "None type CredentialHash should not have hash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 114
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    .line 115
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    .line 116
    iput-boolean p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 117
    return-void
.end method

.method static create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 2
    .param p0, "hash"    # [B
    .param p1, "type"    # I

    .prologue
    .line 125
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bad type for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method private static createBaseZeroPattern([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 2
    .param p0, "hash"    # [B

    .prologue
    const/4 v1, 0x1

    .line 120
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BIIZ)V

    return-object v0
.end method

.method static createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 133
    const/4 v3, 0x1

    .line 132
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 164
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .local v3, "is":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 166
    .local v5, "version":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 167
    .local v4, "type":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 168
    .local v2, "hashSize":I
    const/4 v1, 0x0

    .line 169
    .local v1, "hash":[B
    if-lez v2, :cond_0

    .line 170
    new-array v1, v2, [B

    .line 171
    .local v1, "hash":[B
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 173
    .end local v1    # "hash":[B
    :cond_0
    new-instance v6, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    invoke-direct {v6, v1, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 174
    .end local v2    # "hashSize":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public toBytes()[B
    .locals 5

    .prologue
    .line 142
    iget-boolean v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    xor-int/lit8 v3, v3, 0x1

    const-string/jumbo v4, "base zero patterns are not serializable"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 145
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 148
    iget v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 149
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v3, v3

    if-lez v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 155
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 156
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 153
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
