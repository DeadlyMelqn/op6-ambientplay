.class public Lcom/android/server/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
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
.method private constructor <init>([BII)V
    .locals 2
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "version"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 86
    if-nez p1, :cond_1

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Empty hash for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "None type CredentialHash should not have hash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 95
    iput p2, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    .line 96
    iput p3, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 98
    return-void
.end method

.method synthetic constructor <init>([BIILcom/android/server/LockSettingsStorage$CredentialHash;)V
    .locals 0
    .param p1, "hash"    # [B
    .param p2, "type"    # I
    .param p3, "version"    # I
    .param p4, "-this3"    # Lcom/android/server/LockSettingsStorage$CredentialHash;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "isBaseZeroPattern"    # Z

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 102
    iput v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    .line 103
    iput v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    .line 104
    iput-boolean p2, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 105
    return-void
.end method

.method synthetic constructor <init>([BZLcom/android/server/LockSettingsStorage$CredentialHash;)V
    .locals 0
    .param p1, "hash"    # [B
    .param p2, "isBaseZeroPattern"    # Z
    .param p3, "-this2"    # Lcom/android/server/LockSettingsStorage$CredentialHash;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BZ)V

    return-void
.end method

.method static create([BI)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 2
    .param p0, "hash"    # [B
    .param p1, "type"    # I

    .prologue
    .line 108
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bad type for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-instance v0, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method static createEmptyHash()Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 116
    const/4 v3, 0x1

    .line 115
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method
