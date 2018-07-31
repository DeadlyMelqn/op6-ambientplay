.class Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private syntheticPassword:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "-this"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    .prologue
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1
    .param p0, "-this"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    .prologue
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    .prologue
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0
    .param p0, "-this"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "-value"    # [B

    .prologue
    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0
    .param p0, "-this"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "-value"    # [B

    .prologue
    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static create()Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 146
    new-instance v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    .line 147
    .local v0, "result":Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    invoke-static {v2}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 148
    invoke-static {v2}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 147
    invoke-direct {v0, v1, v2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 149
    return-object v0
.end method

.method private initialize([B[B)V
    .locals 3
    .param p1, "P0"    # [B
    .param p2, "P1"    # [B

    .prologue
    .line 133
    iput-object p2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    .line 136
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get4()[B

    move-result-object v0

    .line 135
    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 136
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 135
    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 134
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get0()[B

    move-result-object v1

    .line 137
    invoke-static {v0, v1, p1}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    .line 139
    return-void
.end method


# virtual methods
.method public computeP0()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_0

    .line 154
    return-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get0()[B

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    .line 156
    invoke-static {v0, v1, v2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .locals 4

    .prologue
    .line 128
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get1()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 129
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 128
    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get3()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 124
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 123
    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get2()[B

    move-result-object v0

    .line 118
    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 119
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 118
    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recreate([B)V
    .locals 1
    .param p1, "secret"    # [B

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 143
    return-void
.end method
