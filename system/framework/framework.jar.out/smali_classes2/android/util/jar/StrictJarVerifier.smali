.class Landroid/util/jar/StrictJarVerifier;
.super Ljava/lang/Object;
.source "StrictJarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    }
.end annotation


# static fields
.field private static final DIGEST_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field private final mainAttributesEnd:I

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatureSchemeRollbackProtectionsEnforced:Z

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0([B[B)Z
    .locals 1
    .param p0, "expected"    # [B
    .param p1, "encodedActual"    # [B

    .prologue
    invoke-static {p0, p1}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 1
    .param p0, "signatureFile"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "SHA-512"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "SHA-384"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "SHA-256"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "SHA1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 62
    sput-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manifest"    # Landroid/util/jar/StrictJarManifest;
    .param p4, "signatureSchemeRollbackProtectionsEnforced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "metaEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v1, 0x5

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 75
    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 78
    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    .line 82
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 81
    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    .line 173
    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    .line 175
    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    .line 176
    invoke-virtual {p2}, Landroid/util/jar/StrictJarManifest;->getMainAttributesEnd()I

    move-result v0

    iput v0, p0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    .line 177
    iput-boolean p4, p0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    .line 179
    return-void
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "signatureFile"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "jarName"    # Ljava/lang/String;
    .param p1, "signatureFile"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3
    .param p0, "signatureFile"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string/jumbo v2, " in "

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .locals 9
    .param p1, "attributes"    # Ljava/util/jar/Attributes;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "ignoreSecondEndline"    # Z
    .param p7, "ignorable"    # Z

    .prologue
    .line 470
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v7, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_2

    .line 471
    sget-object v7, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v0, v7, v5

    .line 472
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "hash":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 470
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 479
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 483
    .local v6, "md":Ljava/security/MessageDigest;
    if-eqz p6, :cond_1

    add-int/lit8 v7, p5, -0x1

    aget-byte v7, p3, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, p5, -0x2

    aget-byte v7, p3, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    .line 484
    add-int/lit8 v7, p5, -0x1

    sub-int/2addr v7, p4

    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 488
    :goto_2
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 489
    .local v1, "b":[B
    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 490
    .local v3, "encodedHashBytes":[B
    invoke-static {v1, v3}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result v7

    return v7

    .line 480
    .end local v1    # "b":[B
    .end local v3    # "encodedHashBytes":[B
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1

    .line 486
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "md":Ljava/security/MessageDigest;
    :cond_1
    sub-int v7, p5, p4

    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 492
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v4    # "hash":Ljava/lang/String;
    .end local v6    # "md":Ljava/security/MessageDigest;
    :cond_2
    return p7
.end method

.method static verifyBytes([B[B)[Ljava/security/cert/Certificate;
    .locals 8
    .param p0, "blockBytes"    # [B
    .param p1, "sfBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 307
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v2

    .line 308
    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p0}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 309
    .local v0, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v0, p1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v5

    .line 310
    .local v5, "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_1

    .line 311
    :cond_0
    new-instance v6, Ljava/security/GeneralSecurityException;

    .line 312
    const-string/jumbo v7, "Failed to verify signature: no verified SignerInfos"

    .line 311
    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .end local v0    # "block":Lsun/security/pkcs/PKCS7;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v5    # "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Ljava/security/GeneralSecurityException;

    const-string/jumbo v7, "IO exception verifying jar cert"

    invoke-direct {v6, v7, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 335
    invoke-static {v2}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 334
    throw v6

    .line 318
    .restart local v0    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v5    # "verifiedSignerInfos":[Lsun/security/pkcs/SignerInfo;
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    aget-object v4, v5, v6

    .line 320
    .local v4, "verifiedSignerInfo":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v4, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v3

    .line 321
    .local v3, "verifiedSignerCertChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez v3, :cond_2

    .line 323
    new-instance v6, Ljava/security/GeneralSecurityException;

    .line 324
    const-string/jumbo v7, "Failed to find verified SignerInfo certificate chain"

    .line 323
    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 325
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 327
    new-instance v6, Ljava/security/GeneralSecurityException;

    .line 328
    const-string/jumbo v7, "Verified SignerInfo certificate chain is emtpy"

    .line 327
    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 331
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    .line 330
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    invoke-static {v2}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 330
    return-object v6
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .locals 32
    .param p1, "certFile"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ".SF"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 345
    .local v28, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    .line 346
    .local v27, "sfBytes":[B
    if-nez v27, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 352
    .local v5, "manifestBytes":[B
    if-nez v5, :cond_1

    .line 353
    return-void

    .line 356
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [B

    .line 358
    .local v26, "sBlockBytes":[B
    :try_start_0
    invoke-static/range {v26 .. v27}, Landroid/util/jar/StrictJarVerifier;->verifyBytes([B[B)[Ljava/security/cert/Certificate;

    move-result-object v29

    .line 359
    .local v29, "signerCertChain":[Ljava/security/cert/Certificate;
    if-eqz v29, :cond_2

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_2
    new-instance v3, Ljava/util/jar/Attributes;

    invoke-direct {v3}, Ljava/util/jar/Attributes;-><init>()V

    .line 368
    .local v3, "attributes":Ljava/util/jar/Attributes;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v19, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :try_start_1
    new-instance v24, Landroid/util/jar/StrictJarManifestReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    .line 371
    .local v24, "im":Landroid/util/jar/StrictJarManifestReader;
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    if-eqz v2, :cond_5

    .line 380
    const-string/jumbo v2, "X-Android-APK-Signed"

    .line 379
    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 381
    .local v14, "apkSignatureSchemeIdList":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 386
    const/16 v31, 0x0

    .line 387
    .local v31, "v2SignatureGenerated":Z
    new-instance v30, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ","

    move-object/from16 v0, v30

    invoke-direct {v0, v14, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .local v30, "tokenizer":Ljava/util/StringTokenizer;
    :cond_3
    :goto_0
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 390
    .local v22, "idText":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 395
    :try_start_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v21

    .line 399
    .local v21, "id":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    .line 402
    const/16 v31, 0x1

    .line 407
    .end local v21    # "id":I
    .end local v22    # "idText":Ljava/lang/String;
    :cond_4
    if-eqz v31, :cond_5

    .line 408
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " indicates "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 409
    const-string/jumbo v7, " is signed using APK Signature Scheme v2, but no such signature was"

    .line 408
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 410
    const-string/jumbo v7, " found. Signature stripped?"

    .line 408
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    .end local v3    # "attributes":Ljava/util/jar/Attributes;
    .end local v14    # "apkSignatureSchemeIdList":Ljava/lang/String;
    .end local v19    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v24    # "im":Landroid/util/jar/StrictJarManifestReader;
    .end local v29    # "signerCertChain":[Ljava/security/cert/Certificate;
    .end local v30    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v31    # "v2SignatureGenerated":Z
    :catch_0
    move-exception v18

    .line 363
    .local v18, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-static {v2, v0, v1}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 372
    .end local v18    # "e":Ljava/security/GeneralSecurityException;
    .restart local v3    # "attributes":Ljava/util/jar/Attributes;
    .restart local v19    # "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v29    # "signerCertChain":[Ljava/security/cert/Certificate;
    :catch_1
    move-exception v17

    .line 373
    .local v17, "e":Ljava/io/IOException;
    return-void

    .line 396
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v14    # "apkSignatureSchemeIdList":Ljava/lang/String;
    .restart local v22    # "idText":Ljava/lang/String;
    .restart local v24    # "im":Landroid/util/jar/StrictJarManifestReader;
    .restart local v30    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v31    # "v2SignatureGenerated":Z
    :catch_2
    move-exception v23

    .local v23, "ignored":Ljava/lang/Exception;
    goto :goto_0

    .line 416
    .end local v14    # "apkSignatureSchemeIdList":Ljava/lang/String;
    .end local v22    # "idText":Ljava/lang/String;
    .end local v23    # "ignored":Ljava/lang/Exception;
    .end local v30    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v31    # "v2SignatureGenerated":Z
    :cond_5
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 417
    return-void

    .line 420
    :cond_6
    const/4 v12, 0x0

    .line 421
    .local v12, "createdBySigntool":Z
    const-string/jumbo v2, "Created-By"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 422
    .local v16, "createdBy":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 423
    const-string/jumbo v2, "signtool"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_8

    const/4 v12, 0x1

    .line 430
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    if-lez v2, :cond_9

    xor-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_9

    .line 431
    const-string/jumbo v4, "-Digest-Manifest-Main-Attributes"

    .line 432
    .local v4, "digestAttribute":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v7, v0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_9

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 423
    .end local v4    # "digestAttribute":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto :goto_1

    .line 438
    :cond_9
    if-eqz v12, :cond_b

    const-string/jumbo v4, "-Digest"

    .line 439
    .restart local v4    # "digestAttribute":Ljava/lang/String;
    :goto_2
    array-length v7, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_d

    .line 440
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 441
    .local v25, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 442
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 443
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/util/jar/StrictJarManifest;->getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;

    move-result-object v15

    .line 444
    .local v15, "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    if-nez v15, :cond_c

    .line 445
    return-void

    .line 438
    .end local v4    # "digestAttribute":Ljava/lang/String;
    .end local v15    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_b
    const-string/jumbo v4, "-Digest-Manifest"

    .restart local v4    # "digestAttribute":Ljava/lang/String;
    goto :goto_2

    .line 447
    .restart local v15    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .restart local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .restart local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_c
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/Attributes;

    const-string/jumbo v8, "-Digest"

    .line 448
    iget v10, v15, Landroid/util/jar/StrictJarManifest$Chunk;->start:I

    iget v11, v15, Landroid/util/jar/StrictJarManifest$Chunk;->end:I

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object v9, v5

    .line 447
    invoke-direct/range {v6 .. v13}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_a

    .line 449
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v0, v2, v6}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    .line 453
    .end local v15    # "chunk":Landroid/util/jar/StrictJarManifest$Chunk;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v25    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method private static verifyMessageDigest([B[B)Z
    .locals 3
    .param p0, "expected"    # [B
    .param p1, "encodedActual"    # [B

    .prologue
    .line 498
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Base64$Decoder;->decode([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 502
    .local v0, "actual":[B
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v2

    return v2

    .line 499
    .end local v0    # "actual":[B
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    .prologue
    .line 259
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarManifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v8

    .line 203
    .local v8, "attributes":Ljava/util/jar/Attributes;
    if-nez v8, :cond_2

    .line 204
    const/4 v1, 0x0

    return-object v1

    .line 207
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v10, "certChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/cert/Certificate;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 209
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;>;"
    :cond_3
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 211
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 212
    .local v13, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 214
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 215
    .local v17, "signatureFile":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/security/cert/Certificate;

    .line 216
    .local v9, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v9, :cond_3

    .line 217
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v9    # "certChain":[Ljava/security/cert/Certificate;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    .end local v13    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v17    # "signatureFile":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    const/4 v1, 0x0

    return-object v1

    .line 226
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/security/cert/Certificate;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/security/cert/Certificate;

    .line 228
    .local v5, "certChainsArray":[[Ljava/security/cert/Certificate;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v14, v1, :cond_7

    .line 229
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v7, v1, v14

    .line 230
    .local v7, "algorithm":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-Digest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, "hash":Ljava/lang/String;
    if-nez v12, :cond_6

    .line 228
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 234
    :cond_6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 237
    .local v4, "hashBytes":[B
    :try_start_0
    new-instance v1, Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 238
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    move-object/from16 v2, p1

    .line 237
    invoke-direct/range {v1 .. v6}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;-><init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 242
    .end local v4    # "hashBytes":[B
    .end local v7    # "algorithm":Ljava/lang/String;
    .end local v12    # "hash":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    return-object v1

    .line 239
    .restart local v4    # "hashBytes":[B
    .restart local v7    # "algorithm":Ljava/lang/String;
    .restart local v12    # "hash":Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, "ignored":Ljava/security/NoSuchAlgorithmException;
    goto :goto_2
.end method

.method isSignedJar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method declared-synchronized readCertificates()Z
    .locals 3

    .prologue
    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 284
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 285
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, ".DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".RSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ".EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    :cond_2
    invoke-direct {p0, v1}, Landroid/util/jar/StrictJarVerifier;->verifyCertificate(Ljava/lang/String;)V

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 292
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x1

    monitor-exit p0

    return v2
.end method

.method removeMetaEntries()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 524
    return-void
.end method
