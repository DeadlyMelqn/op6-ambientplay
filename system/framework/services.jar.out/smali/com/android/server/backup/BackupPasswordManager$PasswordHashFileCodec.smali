.class final Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"

# interfaces
.implements Lcom/android/server/backup/utils/DataStreamCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PasswordHashFileCodec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/backup/utils/DataStreamCodec",
        "<",
        "Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    .prologue
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInputStream;)Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    .locals 4
    .param p1, "dataInputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 301
    .local v2, "saltLen":I
    new-array v1, v2, [B

    .line 302
    .local v1, "salt":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 303
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "hash":Ljava/lang/String;
    new-instance v3, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-direct {v3, v0, v1}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    return-object v3
.end method

.method public bridge synthetic deserialize(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;->deserialize(Ljava/io/DataInputStream;)Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "backupPasswordHash"    # Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    .param p2, "dataOutputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 293
    iget-object v0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 294
    iget-object v0, p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    check-cast p1, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;->serialize(Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;Ljava/io/DataOutputStream;)V

    return-void
.end method
