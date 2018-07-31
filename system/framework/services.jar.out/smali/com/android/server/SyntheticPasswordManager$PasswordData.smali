.class Lcom/android/server/SyntheticPasswordManager$PasswordData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PasswordData"
.end annotation


# instance fields
.field public passwordHandle:[B

.field public passwordType:I

.field salt:[B

.field scryptN:B

.field scryptP:B

.field scryptR:B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/android/server/SyntheticPasswordManager$PasswordData;
    .locals 2
    .param p0, "passwordType"    # I

    .prologue
    .line 170
    new-instance v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/SyntheticPasswordManager$PasswordData;-><init>()V

    .line 171
    .local v0, "result":Lcom/android/server/SyntheticPasswordManager$PasswordData;
    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    .line 172
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    .line 173
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    .line 174
    iput p0, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    .line 175
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 176
    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/SyntheticPasswordManager$PasswordData;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 180
    new-instance v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;

    invoke-direct {v2}, Lcom/android/server/SyntheticPasswordManager$PasswordData;-><init>()V

    .line 181
    .local v2, "result":Lcom/android/server/SyntheticPasswordManager$PasswordData;
    array-length v4, p0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v4, p0

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 184
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    .line 185
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    .line 187
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    .line 188
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 189
    .local v3, "saltLen":I
    new-array v4, v3, [B

    iput-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 190
    iget-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 192
    .local v1, "handleLen":I
    new-array v4, v1, [B

    iput-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 193
    iget-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 194
    return-object v2
.end method


# virtual methods
.method public toBytes()[B
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    .line 198
    add-int/lit8 v1, v1, 0xb

    add-int/lit8 v1, v1, 0x4

    .line 199
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    array-length v2, v2

    .line 198
    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 200
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 201
    iget-byte v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 202
    iget-byte v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 203
    iget-byte v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 204
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 207
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
