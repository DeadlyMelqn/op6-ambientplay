.class public Lcom/android/server/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;,
        Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/SyntheticPasswordManager$PasswordData;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default-password"

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field protected static final hexArray:[C


# instance fields
.field private mStorage:Lcom/android/server/LockSettingsStorage;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method static synthetic -get1()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic -get2()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic -get3()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic -get4()[B
    .locals 1

    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 94
    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 95
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 96
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 97
    const-string/jumbo v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 98
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 99
    const-string/jumbo v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 707
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordManager;->hexArray:[C

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/server/LockSettingsStorage;)V
    .locals 1
    .param p1, "storage"    # Lcom/android/server/LockSettingsStorage;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 215
    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 216
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 709
    if-nez p0, :cond_0

    .line 710
    const-string/jumbo v3, "null"

    return-object v3

    .line 712
    :cond_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 713
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 714
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 715
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/SyntheticPasswordManager;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 716
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/server/SyntheticPasswordManager;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "v":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private computePasswordToken(Ljava/lang/String;Lcom/android/server/SyntheticPasswordManager$PasswordData;)[B
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/android/server/SyntheticPasswordManager$PasswordData;

    .prologue
    const/4 v1, 0x1

    .line 688
    iget-object v2, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    shl-int v3, v1, v0

    iget-byte v0, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v4, v1, v0

    iget-byte v0, p2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v5, v1, v0

    .line 689
    const/16 v6, 0x20

    move-object v0, p0

    move-object v1, p1

    .line 688
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/SyntheticPasswordManager;->scrypt(Ljava/lang/String;[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private createSecdiscardable(JI)[B
    .locals 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    .line 624
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    .line 625
    .local v3, "data":[B
    const-string/jumbo v2, "secdis"

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 626
    return-object v3
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .locals 11
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "authToken"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "applicationId"    # [B
    .param p6, "sid"    # J
    .param p8, "userId"    # I

    .prologue
    .line 419
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 420
    invoke-virtual {p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->computeP0()[B

    move-result-object v2

    .line 424
    .local v2, "secret":[B
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v9

    .line 425
    .local v9, "content":[B
    array-length v0, v9

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [B

    .line 426
    .local v5, "blob":[B
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-byte v0, v5, v1

    .line 427
    const/4 v0, 0x1

    aput-byte p3, v5, v0

    .line 428
    array-length v0, v9

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v9, v1, v5, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 429
    const-string/jumbo v4, "spblob"

    move-object v3, p0

    move-wide v6, p1

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 430
    return-void

    .line 422
    .end local v2    # "secret":[B
    .end local v5    # "blob":[B
    .end local v9    # "content":[B
    :cond_0
    invoke-static {p4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "secret":[B
    goto :goto_0
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    .line 647
    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    .line 610
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 611
    invoke-direct {p0, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method private fakeUid(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 671
    const v0, 0x186a0

    add-int/2addr v0, p1

    return v0
.end method

.method public static generateHandle()J
    .locals 6

    .prologue
    .line 662
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 665
    .local v2, "rng":Ljava/security/SecureRandom;
    :cond_0
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 666
    .local v0, "result":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 667
    return-wide v0
.end method

.method private getHandleName(J)Ljava/lang/String;
    .locals 5
    .param p1, "handle"    # J

    .prologue
    .line 684
    const-string/jumbo v0, "%s%x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "synthetic_password_"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .locals 2
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .prologue
    .line 634
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private loadEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 4
    .param p1, "authToken"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 306
    const-string/jumbo v1, "e0"

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-set0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 307
    const-string/jumbo v1, "p1"

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-set1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 308
    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadSecdiscardable(JI)[B
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    .line 630
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .locals 2
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 298
    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToGkInput([B)[B
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 693
    sget-object v0, Lcom/android/server/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private saveEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 7
    .param p1, "authToken"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 312
    const-string/jumbo v2, "e0"

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v3

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 313
    const-string/jumbo v2, "p1"

    invoke-static {p1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-get1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v3

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 314
    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .locals 7
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->mStorage:Lcom/android/server/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    .line 643
    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .locals 7
    .param p1, "spHandle"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 302
    const-string/jumbo v2, "handle"

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 303
    return-void
.end method

.method protected static secureRandom(I)[B
    .locals 2
    .param p0, "length"    # I

    .prologue
    .line 676
    :try_start_0
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 679
    const/4 v1, 0x0

    return-object v1
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "rawSecdiscardable"    # [B

    .prologue
    const/4 v4, 0x0

    .line 616
    sget-object v2, Lcom/android/server/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 615
    const/4 v3, 0x1

    new-array v3, v3, [[B

    .line 616
    aput-object p2, v3, v4

    .line 615
    invoke-static {v2, v3}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v1

    .line 617
    .local v1, "secdiscardable":[B
    array-length v2, p1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v0, v2, [B

    .line 618
    .local v0, "result":[B
    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 619
    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 620
    return-object v0
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .locals 13
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I

    .prologue
    .line 511
    const-string/jumbo v1, "spblob"

    move/from16 v0, p7

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v10

    .line 512
    .local v10, "blob":[B
    if-nez v10, :cond_0

    .line 513
    const/4 v1, 0x0

    return-object v1

    .line 515
    :cond_0
    const/4 v1, 0x0

    aget-byte v12, v10, v1

    .line 516
    .local v12, "version":B
    const/4 v1, 0x2

    if-eq v12, v1, :cond_1

    const/4 v1, 0x1

    if-eq v12, v1, :cond_1

    .line 517
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown blob version"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_1
    const/4 v1, 0x1

    aget-byte v1, v10, v1

    move/from16 v0, p3

    if-eq v1, v0, :cond_2

    .line 520
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Invalid blob type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_2
    const/4 v1, 0x1

    if-ne v12, v1, :cond_3

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    .line 525
    array-length v2, v10

    const/4 v3, 0x2

    invoke-static {v10, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 524
    move-object/from16 v0, p4

    invoke-static {v1, v2, v0}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v11

    .line 530
    .local v11, "secret":[B
    :goto_0
    if-nez v11, :cond_4

    .line 531
    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to decrypt SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v1, 0x0

    return-object v1

    .line 527
    .end local v11    # "secret":[B
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v1

    .line 528
    array-length v2, v10

    const/4 v3, 0x2

    invoke-static {v10, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 527
    move-object/from16 v0, p4

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v11

    .restart local v11    # "secret":[B
    goto :goto_0

    .line 534
    :cond_4
    new-instance v5, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v5}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    .line 535
    .local v5, "result":Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_7

    .line 536
    move/from16 v0, p7

    invoke-direct {p0, v5, v0}, Lcom/android/server/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 537
    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User is not escrowable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v1, 0x0

    return-object v1

    .line 540
    :cond_5
    invoke-virtual {v5, v11}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    .line 544
    :goto_1
    const/4 v1, 0x1

    if-ne v12, v1, :cond_6

    .line 545
    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Upgrade v1 SP blob for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    .line 546
    invoke-direct/range {v1 .. v9}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 548
    :cond_6
    return-object v5

    .line 542
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5, v1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->-set2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z
    .locals 9
    .param p1, "handle"    # J
    .param p3, "authToken"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    return v2

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 403
    .local v5, "applicationId":[B
    if-nez v5, :cond_1

    .line 404
    return v2

    .line 406
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/server/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    const-string/jumbo v0, "SyntheticPasswordManager"

    const-string/jumbo v1, "User is not escrowable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return v2

    .line 411
    :cond_2
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move v8, p4

    .line 410
    invoke-direct/range {v0 .. v8}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 412
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    return v3
.end method

.method public clearSidForUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 287
    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 288
    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)J
    .locals 16
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "credentialType"    # I
    .param p4, "authToken"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    if-eqz p2, :cond_0

    const/4 v3, -0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 342
    :cond_0
    const/16 p3, -0x1

    .line 343
    const-string/jumbo p2, "default-password"

    .line 346
    :cond_1
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v6

    .line 347
    .local v6, "handle":J
    invoke-static/range {p3 .. p3}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v2

    .line 348
    .local v2, "pwd":Lcom/android/server/SyntheticPasswordManager$PasswordData;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v14

    .line 352
    .local v14, "pwdToken":[B
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 353
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v3

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v4

    .line 353
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5, v8, v4}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v15

    .line 355
    .local v15, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v15}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    const-string/jumbo v3, "SyntheticPasswordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-wide/16 v4, 0x0

    return-wide v4

    .line 359
    :cond_2
    invoke-virtual {v15}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 360
    iget-object v3, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v11

    .line 361
    .local v11, "sid":J
    const-string/jumbo v4, "pwd"

    invoke-virtual {v2}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v5

    move-object/from16 v3, p0

    move/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 364
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v3

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v10

    .line 365
    .local v10, "applicationId":[B
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object/from16 v9, p4

    move/from16 v13, p5

    invoke-direct/range {v5 .. v13}, Lcom/android/server/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 367
    return-wide v6
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .locals 2
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J

    .prologue
    .line 654
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public createTokenBasedSyntheticPassword([BI)J
    .locals 6
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 373
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v2

    .line 375
    .local v2, "handle":J
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v1

    .line 374
    invoke-direct {p0, p1, v1}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v0

    .line 376
    .local v0, "applicationId":[B
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-wide v2
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .locals 1
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B

    .prologue
    .line 650
    invoke-static {p1, p2, p3}, Lcom/android/server/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroyEscrowData(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 322
    const-string/jumbo v0, "e0"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 323
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 324
    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    .line 604
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 605
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 606
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 607
    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyAlias"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-static {p1}, Lcom/android/server/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    .line 599
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 600
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 601
    return-void
.end method

.method public existsHandle(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    .line 595
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(JI)I
    .locals 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    .line 220
    const-string/jumbo v1, "pwd"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 221
    .local v0, "passwordData":[B
    if-nez v0, :cond_0

    .line 222
    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, -0x1

    return v1

    .line 225
    :cond_0
    invoke-static {v0}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    return v1
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasEscrowData(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 317
    const-string/jumbo v0, "e0"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSidForUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 291
    const-string/jumbo v0, "handle"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/server/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method native nativeScrypt([B[BIIII)[B
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 4
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "authToken"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-virtual {p2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v1

    .line 276
    invoke-interface {p1, p3, v2, v2, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 278
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string/jumbo v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to create new SID for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 283
    return-void
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .locals 5
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "hash"    # [B
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v1

    .line 254
    .local v1, "result":Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 256
    invoke-virtual {v1}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    .line 255
    invoke-interface {p1, p4, p2, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 257
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const-string/jumbo v2, "SyntheticPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0, p4}, Lcom/android/server/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 266
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_0
    invoke-direct {p0, v1, p4}, Lcom/android/server/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 267
    return-object v1

    .line 261
    .restart local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/android/server/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_0

    .line 264
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_0
.end method

.method public removePendingToken(JI)Z
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    return v1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected scrypt(Ljava/lang/String;[BIIII)[B
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "N"    # I
    .param p4, "r"    # I
    .param p5, "p"    # I
    .param p6, "outLen"    # I

    .prologue
    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/SyntheticPasswordManager;->nativeScrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected sidFromPasswordHandle([B)J
    .locals 2
    .param p1, "handle"    # [B

    .prologue
    .line 697
    invoke-virtual {p0, p1}, Lcom/android/server/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;
    .locals 30
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "credential"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    if-nez p4, :cond_0

    .line 440
    const-string/jumbo p4, "default-password"

    .line 442
    :cond_0
    new-instance v29, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    .line 443
    .local v29, "result":Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;
    const-string/jumbo v4, "pwd"

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v10

    .line 444
    .local v10, "pwd":Lcom/android/server/SyntheticPasswordManager$PasswordData;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/server/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v25

    .line 445
    .local v25, "pwdToken":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v9

    .line 447
    .local v9, "gkPwdToken":[B
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    .line 448
    iget-object v8, v10, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 447
    const-wide/16 v6, 0x0

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v27

    .line 449
    .local v27, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {v27 .. v27}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v28

    .line 450
    .local v28, "responseCode":I
    if-nez v28, :cond_3

    .line 451
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 452
    invoke-virtual/range {v27 .. v27}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/SyntheticPasswordManager;->fakeUid(I)I

    move-result v4

    .line 454
    iget-object v5, v10, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 453
    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v9, v9}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v26

    .line 455
    .local v26, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {v26 .. v26}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_2

    .line 456
    invoke-virtual/range {v26 .. v26}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 457
    const-string/jumbo v12, "pwd"

    invoke-virtual {v10}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v13

    move-object/from16 v11, p0

    move-wide/from16 v14, p2

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/server/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 472
    .end local v26    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_1
    :goto_0
    iget-object v4, v10, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v16

    .line 474
    .local v16, "sid":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v4

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v15

    .line 475
    .local v15, "applicationId":[B
    const/4 v14, 0x0

    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move/from16 v18, p5

    invoke-direct/range {v11 .. v18}, Lcom/android/server/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    .line 479
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move/from16 v24, p5

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 480
    return-object v29

    .line 459
    .end local v15    # "applicationId":[B
    .end local v16    # "sid":J
    .restart local v26    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    const-string/jumbo v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fail to re-enroll user password for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v26    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_4

    .line 464
    new-instance v4, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual/range {v27 .. v27}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 465
    return-object v29

    .line 467
    :cond_4
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 468
    return-object v29
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;
    .locals 18
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v4}, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    .line 493
    .local v4, "result":Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v5

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/server/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v9

    .line 494
    .local v9, "applicationId":[B
    const/4 v8, 0x1

    .line 495
    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move/from16 v12, p5

    .line 494
    invoke-direct/range {v5 .. v12}, Lcom/android/server/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    .line 496
    iget-object v5, v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v5, :cond_1

    .line 497
    iget-object v13, v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v14, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v16, p5

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 498
    iget-object v5, v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v5, :cond_0

    .line 501
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v5, v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 506
    :cond_0
    :goto_0
    return-object v4

    .line 504
    :cond_1
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v5, v4, Lcom/android/server/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "auth"    # Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 561
    invoke-direct {p0, p5}, Lcom/android/server/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v4

    .line 562
    .local v4, "spHandle":[B
    if-nez v4, :cond_0

    .line 565
    return-object v0

    .line 569
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v5

    move-object v0, p1

    move v1, p5

    move-wide v2, p3

    .line 568
    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 570
    .local v6, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v7

    .line 571
    .local v7, "responseCode":I
    if-nez v7, :cond_3

    .line 572
    new-instance v8, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .line 573
    .local v8, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    invoke-virtual {p2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    .line 574
    invoke-interface {p1, p5, v4, v4, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v6

    .line 576
    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 577
    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v4

    .line 578
    invoke-direct {p0, v4, p5}, Lcom/android/server/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 580
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0

    .line 582
    :cond_1
    const-string/jumbo v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail to re-enroll SP handle for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_2
    :goto_0
    return-object v8

    .line 586
    .end local v8    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_3
    const/4 v0, 0x1

    if-ne v7, v0, :cond_4

    .line 587
    new-instance v8, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v6}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local v8    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 589
    .end local v8    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_4
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v8    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0
.end method
