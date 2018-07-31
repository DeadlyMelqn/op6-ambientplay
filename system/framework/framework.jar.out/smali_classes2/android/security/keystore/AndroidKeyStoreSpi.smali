.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 83
    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "encodedCert"    # [B

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 181
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 183
    return-object v2

    .line 186
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    move-result-object v2

    return-object v2

    .line 199
    :cond_1
    return-object v0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 1
    .param p1, "encodedCert"    # [B

    .prologue
    .line 163
    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 9
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    .line 294
    const/16 v2, 0xc

    .line 293
    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 297
    .local v1, "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    .line 298
    const-string/jumbo v3, "NONE"

    aput-object v3, v2, v5

    .line 299
    const-string/jumbo v3, "SHA-1"

    aput-object v3, v2, v6

    .line 300
    const-string/jumbo v3, "SHA-224"

    aput-object v3, v2, v7

    .line 301
    const-string/jumbo v3, "SHA-256"

    aput-object v3, v2, v8

    .line 302
    const-string/jumbo v3, "SHA-384"

    aput-object v3, v2, v4

    .line 303
    const-string/jumbo v3, "SHA-512"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 297
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 335
    :goto_0
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 337
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    .line 304
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_0
    const-string/jumbo v2, "RSA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    .line 307
    const/16 v2, 0xf

    .line 306
    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 312
    .restart local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    .line 313
    const-string/jumbo v3, "NONE"

    aput-object v3, v2, v5

    .line 314
    const-string/jumbo v3, "MD5"

    aput-object v3, v2, v6

    .line 315
    const-string/jumbo v3, "SHA-1"

    aput-object v3, v2, v7

    .line 316
    const-string/jumbo v3, "SHA-224"

    aput-object v3, v2, v8

    .line 317
    const-string/jumbo v3, "SHA-256"

    aput-object v3, v2, v4

    .line 318
    const-string/jumbo v3, "SHA-384"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 319
    const-string/jumbo v3, "SHA-512"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 312
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 322
    new-array v2, v8, [Ljava/lang/String;

    .line 323
    const-string/jumbo v3, "NoPadding"

    aput-object v3, v2, v5

    .line 324
    const-string/jumbo v3, "PKCS1Padding"

    aput-object v3, v2, v6

    .line 325
    const-string/jumbo v3, "OAEPPadding"

    aput-object v3, v2, v7

    .line 322
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 326
    new-array v2, v7, [Ljava/lang/String;

    .line 327
    const-string/jumbo v3, "PKCS1"

    aput-object v3, v2, v5

    .line 328
    const-string/jumbo v3, "PSS"

    aput-object v3, v2, v6

    .line 326
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 331
    invoke-virtual {v1, v5}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_0

    .line 333
    .end local v1    # "specBuilder":Landroid/security/keystore/KeyProtection$Builder;
    :cond_1
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported key algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, p1, v3}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    .line 240
    .local v0, "epochMillis":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 241
    const/4 v2, 0x0

    return-object v2

    .line 244
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v5, ""

    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, "rawAliases":[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 785
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    return-object v4

    .line 788
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 789
    .local v1, "aliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v3, v4

    .line 790
    .local v0, "alias":Ljava/lang/String;
    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 791
    .local v2, "idx":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v2, :cond_2

    .line 792
    :cond_1
    const-string/jumbo v6, "AndroidKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 796
    :cond_2
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 799
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "idx":I
    :cond_3
    return-object v1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 834
    if-nez p1, :cond_0

    .line 835
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isSecretKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 842
    if-nez p1, :cond_0

    .line 843
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 33
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PrivateKey;
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .param p4, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 342
    const/4 v10, 0x0

    .line 344
    .local v10, "flags":I
    if-nez p4, :cond_2

    .line 345
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v28

    .line 365
    .local v28, "spec":Landroid/security/keystore/KeyProtection;
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v4, v0

    if-nez v4, :cond_5

    .line 366
    :cond_1
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    .end local v28    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_2
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/security/KeyStoreParameter;

    if-eqz v4, :cond_3

    .line 347
    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v28

    .restart local v28    # "spec":Landroid/security/keystore/KeyProtection;
    move-object/from16 v22, p4

    .line 348
    check-cast v22, Landroid/security/KeyStoreParameter;

    .line 349
    .local v22, "legacySpec":Landroid/security/KeyStoreParameter;
    invoke-virtual/range {v22 .. v22}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const/4 v10, 0x1

    goto :goto_0

    .line 352
    .end local v22    # "legacySpec":Landroid/security/KeyStoreParameter;
    .end local v28    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_3
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/security/keystore/KeyProtection;

    if-eqz v4, :cond_4

    move-object/from16 v28, p4

    .line 353
    check-cast v28, Landroid/security/keystore/KeyProtection;

    .line 354
    .restart local v28    # "spec":Landroid/security/keystore/KeyProtection;
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    const/16 v10, 0x8

    goto :goto_0

    .line 358
    .end local v28    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_4
    new-instance v4, Ljava/security/KeyStoreException;

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported protection parameter class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    const-string/jumbo v6, ". Supported: "

    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    const-class v6, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    const-string/jumbo v6, ", "

    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 361
    const-class v6, Landroid/security/KeyStoreParameter;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    .restart local v28    # "spec":Landroid/security/keystore/KeyProtection;
    :cond_5
    move-object/from16 v0, p3

    array-length v4, v0

    new-array v0, v4, [Ljava/security/cert/X509Certificate;

    move-object/from16 v32, v0

    .line 371
    .local v32, "x509chain":[Ljava/security/cert/X509Certificate;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_8

    .line 372
    const-string/jumbo v4, "X.509"

    aget-object v5, p3, v17

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 373
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 377
    :cond_6
    aget-object v4, p3, v17

    instance-of v4, v4, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_7

    .line 378
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 382
    :cond_7
    aget-object v4, p3, v17

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v32, v17

    .line 371
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 387
    :cond_8
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v32, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 398
    .local v31, "userCertBytes":[B
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    .line 403
    move-object/from16 v0, v32

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v12, v4, [[B

    .line 404
    .local v12, "certsBytes":[[B
    const/16 v30, 0x0

    .line 405
    .local v30, "totalCertLength":I
    const/16 v17, 0x0

    :goto_2
    array-length v4, v12

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    .line 407
    add-int/lit8 v4, v17, 0x1

    :try_start_1
    aget-object v4, v32, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    aput-object v4, v12, v17

    .line 408
    aget-object v4, v12, v17

    array-length v4, v4
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    add-int v30, v30, v4

    .line 405
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 388
    .end local v12    # "certsBytes":[[B
    .end local v30    # "totalCertLength":I
    .end local v31    # "userCertBytes":[B
    :catch_0
    move-exception v15

    .line 389
    .local v15, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to encode certificate #0"

    invoke-direct {v4, v5, v15}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 409
    .end local v15    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v12    # "certsBytes":[[B
    .restart local v30    # "totalCertLength":I
    .restart local v31    # "userCertBytes":[B
    :catch_1
    move-exception v15

    .line 410
    .restart local v15    # "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to encode certificate #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 418
    .end local v15    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_9
    move/from16 v0, v30

    new-array v13, v0, [B

    .line 419
    .local v13, "chainBytes":[B
    const/16 v23, 0x0

    .line 420
    .local v23, "outputOffset":I
    const/16 v17, 0x0

    :goto_3
    array-length v4, v12

    move/from16 v0, v17

    if-ge v0, v4, :cond_b

    .line 421
    aget-object v4, v12, v17

    array-length v2, v4

    .line 422
    .local v2, "certLength":I
    aget-object v4, v12, v17

    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-static {v4, v5, v13, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 423
    add-int v23, v23, v2

    .line 424
    const/4 v4, 0x0

    aput-object v4, v12, v17

    .line 420
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 427
    .end local v2    # "certLength":I
    .end local v12    # "certsBytes":[[B
    .end local v13    # "chainBytes":[B
    .end local v23    # "outputOffset":I
    .end local v30    # "totalCertLength":I
    :cond_a
    const/4 v13, 0x0

    .line 431
    :cond_b
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v4, :cond_c

    move-object/from16 v4, p2

    .line 432
    check-cast v4, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v4}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v25

    .line 440
    :goto_4
    if-eqz v25, :cond_f

    const-string/jumbo v4, "USRPKEY_"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 441
    const-string/jumbo v4, "USRPKEY_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 442
    .local v19, "keySubalias":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 443
    new-instance v4, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can only replace keys with same alias: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 444
    const-string/jumbo v6, " != "

    .line 443
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    .end local v19    # "keySubalias":Ljava/lang/String;
    :cond_c
    const/16 v25, 0x0

    .local v25, "pkeyAlias":Ljava/lang/String;
    goto :goto_4

    .line 446
    .end local v25    # "pkeyAlias":Ljava/lang/String;
    .restart local v19    # "keySubalias":Ljava/lang/String;
    :cond_d
    const/16 v27, 0x0

    .line 447
    .local v27, "shouldReplacePrivateKey":Z
    const/4 v3, 0x0

    .line 448
    .local v3, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    const/4 v8, 0x0

    .line 520
    .end local v3    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v19    # "keySubalias":Ljava/lang/String;
    :goto_5
    const/16 v29, 0x0

    .line 523
    .local v29, "success":Z
    if-eqz v27, :cond_16

    .line 526
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 527
    new-instance v11, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v11}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 528
    .local v11, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    move-object/from16 v0, p0

    iget v9, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 531
    const/4 v7, 0x1

    move-object v6, v3

    .line 528
    invoke-virtual/range {v4 .. v11}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v16

    .line 536
    .local v16, "errorCode":I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_17

    .line 537
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to store private key"

    .line 538
    invoke-static/range {v16 .. v16}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v6

    .line 537
    invoke-direct {v4, v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    .end local v11    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v16    # "errorCode":I
    :catchall_0
    move-exception v4

    .line 563
    if-nez v29, :cond_e

    .line 564
    if-eqz v27, :cond_1c

    .line 565
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 562
    :cond_e
    :goto_6
    throw v4

    .line 450
    .end local v27    # "shouldReplacePrivateKey":Z
    .end local v29    # "success":Z
    :cond_f
    const/16 v27, 0x1

    .line 452
    .restart local v27    # "shouldReplacePrivateKey":Z
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v18

    .line 453
    .local v18, "keyFormat":Ljava/lang/String;
    if-eqz v18, :cond_10

    const-string/jumbo v4, "PKCS#8"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11

    .line 454
    :cond_10
    new-instance v4, Ljava/security/KeyStoreException;

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported private key export format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 456
    const-string/jumbo v6, ". Only private keys which export their key material in PKCS#8 format are"

    .line 455
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 457
    const-string/jumbo v6, " supported."

    .line 455
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 461
    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v24

    .line 462
    .local v24, "pkcs8EncodedPrivateKeyBytes":[B
    if-nez v24, :cond_12

    .line 463
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Private key did not export any key material"

    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    :cond_12
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 470
    .local v3, "importArgs":Landroid/security/keymaster/KeymasterArguments;
    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v4

    .line 468
    const v5, 0x10000002

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 471
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v26

    .line 473
    .local v26, "purposes":I
    invoke-static/range {v26 .. v26}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v4

    .line 472
    const v5, 0x20000001

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 474
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 476
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    .line 475
    const v5, 0x20000005

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 480
    :cond_13
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    .line 479
    const v5, 0x20000004

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 483
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v4

    .line 482
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v20

    .line 484
    .local v20, "keymasterEncryptionPaddings":[I
    and-int/lit8 v4, v26, 0x1

    if-eqz v4, :cond_15

    .line 485
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v4

    .line 484
    if-eqz v4, :cond_15

    .line 486
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_7
    if-ge v4, v5, :cond_15

    aget v21, v20, v4

    .line 487
    .local v21, "keymasterPadding":I
    invoke-static/range {v21 .. v21}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v6

    if-nez v6, :cond_14

    .line 490
    new-instance v4, Ljava/security/KeyStoreException;

    .line 491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 493
    invoke-static/range {v21 .. v21}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 495
    const-string/jumbo v6, ". See KeyProtection documentation."

    .line 491
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 514
    .end local v20    # "keymasterEncryptionPaddings":[I
    .end local v21    # "keymasterPadding":I
    .end local v26    # "purposes":I
    :catch_2
    move-exception v14

    .line 515
    .local v14, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v14}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 486
    .end local v14    # "e":Ljava/lang/RuntimeException;
    .restart local v20    # "keymasterEncryptionPaddings":[I
    .restart local v21    # "keymasterPadding":I
    .restart local v26    # "purposes":I
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 499
    .end local v21    # "keymasterPadding":I
    :cond_15
    const v4, 0x20000006

    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 501
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    .line 500
    const v5, 0x20000006

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 503
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v4

    .line 504
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    .line 505
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    move-result v6

    .line 506
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    move-result v7

    .line 507
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    move-result-wide v8

    .line 502
    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    .line 509
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    .line 508
    const v5, 0x60000190

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 511
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    .line 510
    const v5, 0x60000191

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 513
    invoke-virtual/range {v28 .. v28}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    .line 512
    const v5, 0x60000192

    invoke-virtual {v3, v5, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v8, v24

    .end local v24    # "pkcs8EncodedPrivateKeyBytes":[B
    .local v8, "pkcs8EncodedPrivateKeyBytes":[B
    goto/16 :goto_5

    .line 542
    .end local v3    # "importArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v8    # "pkcs8EncodedPrivateKeyBytes":[B
    .end local v18    # "keyFormat":Ljava/lang/String;
    .end local v20    # "keymasterEncryptionPaddings":[I
    .end local v26    # "purposes":I
    .restart local v29    # "success":Z
    :cond_16
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 547
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 547
    move-object/from16 v0, v31

    invoke-virtual {v4, v5, v0, v6, v10}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v16

    .line 549
    .restart local v16    # "errorCode":I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_18

    .line 550
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to store certificate #0"

    .line 551
    invoke-static/range {v16 .. v16}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v6

    .line 550
    invoke-direct {v4, v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 555
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 556
    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 555
    invoke-virtual {v4, v5, v13, v6, v10}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v16

    .line 557
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_19

    .line 558
    new-instance v4, Ljava/security/KeyStoreException;

    const-string/jumbo v5, "Failed to store certificate chain"

    .line 559
    invoke-static/range {v16 .. v16}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v6

    .line 558
    invoke-direct {v4, v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 561
    :cond_19
    const/16 v29, 0x1

    .line 563
    if-nez v29, :cond_1a

    .line 564
    if-eqz v27, :cond_1b

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 572
    :cond_1a
    :goto_8
    return-void

    .line 567
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_8

    .line 567
    .end local v16    # "errorCode":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 568
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto/16 :goto_6
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 27
    .param p1, "entryAlias"    # Ljava/lang/String;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 577
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    instance-of v6, v0, Landroid/security/keystore/KeyProtection;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 578
    new-instance v6, Ljava/security/KeyStoreException;

    .line 579
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported protection parameter class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 580
    const-string/jumbo v9, ". Supported: "

    .line 579
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 580
    const-class v9, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 579
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 578
    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object/from16 v25, p3

    .line 582
    check-cast v25, Landroid/security/keystore/KeyProtection;

    .line 584
    .local v25, "params":Landroid/security/keystore/KeyProtection;
    move-object/from16 v0, p2

    instance-of v6, v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v6, :cond_5

    .line 587
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    .end local p2    # "key":Ljavax/crypto/SecretKey;
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v7

    .line 588
    .local v7, "keyAliasInKeystore":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 589
    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "KeyStore-backed secret key does not have an alias"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 591
    :cond_1
    const-string/jumbo v6, "USRSKEY_"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 592
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "KeyStore-backed secret key has invalid alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 596
    :cond_2
    const-string/jumbo v6, "USRSKEY_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 597
    .local v15, "keyEntryAlias":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 598
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only replace KeyStore-backed keys with same alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 599
    const-string/jumbo v9, " != "

    .line 598
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 602
    :cond_3
    if-eqz v25, :cond_4

    .line 603
    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 606
    :cond_4
    return-void

    .line 609
    .end local v7    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v15    # "keyEntryAlias":Ljava/lang/String;
    .restart local p2    # "key":Ljavax/crypto/SecretKey;
    :cond_5
    if-nez v25, :cond_6

    .line 610
    new-instance v6, Ljava/security/KeyStoreException;

    .line 611
    const-string/jumbo v8, "Protection parameters must be specified when importing a symmetric key"

    .line 610
    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 615
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v16

    .line 616
    .local v16, "keyExportFormat":Ljava/lang/String;
    if-nez v16, :cond_7

    .line 617
    new-instance v6, Ljava/security/KeyStoreException;

    .line 618
    const-string/jumbo v8, "Only secret keys that export their key material are supported"

    .line 617
    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 619
    :cond_7
    const-string/jumbo v6, "RAW"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 620
    new-instance v6, Ljava/security/KeyStoreException;

    .line 621
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported secret key material export format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 620
    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 623
    :cond_8
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v17

    .line 624
    .local v17, "keyMaterial":[B
    if-nez v17, :cond_9

    .line 625
    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 629
    :cond_9
    new-instance v5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 632
    .local v5, "args":Landroid/security/keymaster/KeymasterArguments;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v18

    .line 633
    .local v18, "keymasterAlgorithm":I
    const v6, 0x10000002

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 636
    const/16 v6, 0x80

    move/from16 v0, v18

    if-ne v0, v6, :cond_c

    .line 643
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v23

    .line 644
    .local v23, "keymasterImpliedDigest":I
    const/4 v6, -0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_a

    .line 645
    new-instance v6, Ljava/security/ProviderException;

    .line 646
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 647
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 646
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 645
    invoke-direct {v6, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    .end local v18    # "keymasterAlgorithm":I
    .end local v23    # "keymasterImpliedDigest":I
    :catch_0
    move-exception v4

    .line 723
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/security/KeyStoreException;

    invoke-direct {v6, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 649
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v18    # "keymasterAlgorithm":I
    .restart local v23    # "keymasterImpliedDigest":I
    :cond_a
    const/4 v6, 0x1

    :try_start_1
    new-array v0, v6, [I

    move-object/from16 v21, v0

    const/4 v6, 0x0

    aput v23, v21, v6

    .line 650
    .local v21, "keymasterDigests":[I
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 654
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v22

    .line 655
    .local v22, "keymasterDigestsFromParams":[I
    move-object/from16 v0, v22

    array-length v6, v0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_b

    .line 656
    const/4 v6, 0x0

    aget v6, v22, v6

    move/from16 v0, v23

    if-eq v6, v0, :cond_d

    .line 657
    :cond_b
    new-instance v6, Ljava/security/KeyStoreException;

    .line 658
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unsupported digests specification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 659
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 658
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 659
    const-string/jumbo v9, ". Only "

    .line 658
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 660
    invoke-static/range {v23 .. v23}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v9

    .line 658
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 661
    const-string/jumbo v9, " supported for HMAC key algorithm "

    .line 658
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 661
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 658
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 657
    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 666
    .end local v21    # "keymasterDigests":[I
    .end local v22    # "keymasterDigestsFromParams":[I
    .end local v23    # "keymasterImpliedDigest":I
    :cond_c
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 667
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v21

    .line 672
    .restart local v21    # "keymasterDigests":[I
    :cond_d
    :goto_0
    const v6, 0x20000005

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 674
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v26

    .line 676
    .local v26, "purposes":I
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v20

    .line 677
    .local v20, "keymasterBlockModes":[I
    and-int/lit8 v6, v26, 0x1

    if-eqz v6, :cond_10

    .line 678
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    .line 677
    if-eqz v6, :cond_10

    .line 679
    const/4 v6, 0x0

    move-object/from16 v0, v20

    array-length v8, v0

    :goto_1
    if-ge v6, v8, :cond_10

    aget v19, v20, v6

    .line 680
    .local v19, "keymasterBlockMode":I
    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v9

    if-nez v9, :cond_f

    .line 682
    new-instance v6, Ljava/security/KeyStoreException;

    .line 683
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 685
    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v9

    .line 683
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 686
    const-string/jumbo v9, ". See KeyProtection documentation."

    .line 683
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 682
    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 669
    .end local v19    # "keymasterBlockMode":I
    .end local v20    # "keymasterBlockModes":[I
    .end local v21    # "keymasterDigests":[I
    .end local v26    # "purposes":I
    :cond_e
    sget-object v21, Llibcore/util/EmptyArray;->INT:[I

    .restart local v21    # "keymasterDigests":[I
    goto :goto_0

    .line 679
    .restart local v19    # "keymasterBlockMode":I
    .restart local v20    # "keymasterBlockModes":[I
    .restart local v26    # "purposes":I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 691
    .end local v19    # "keymasterBlockMode":I
    :cond_10
    invoke-static/range {v26 .. v26}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v6

    .line 690
    const v8, 0x20000001

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 692
    const v6, 0x20000004

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 693
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_11

    .line 694
    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v8, "Signature paddings not supported for symmetric keys"

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 697
    :cond_11
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v6

    .line 696
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v24

    .line 698
    .local v24, "keymasterPaddings":[I
    const v6, 0x20000006

    move-object/from16 v0, v24

    invoke-virtual {v5, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    .line 700
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationRequired()Z

    move-result v6

    .line 701
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getUserAuthenticationValidityDurationSeconds()I

    move-result v7

    .line 702
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isUserAuthenticationValidWhileOnBody()Z

    move-result v8

    .line 703
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isInvalidatedByBiometricEnrollment()Z

    move-result v9

    .line 704
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getBoundToSpecificSecureUserId()J

    move-result-wide v10

    .line 699
    invoke-static/range {v5 .. v11}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    .line 705
    move/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    .line 711
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v6

    .line 710
    const v8, 0x60000190

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 713
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v6

    .line 712
    const v8, 0x60000191

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 715
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v6

    .line 714
    const v8, 0x60000192

    invoke-virtual {v5, v8, v6}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    .line 717
    and-int/lit8 v6, v26, 0x1

    if-eqz v6, :cond_12

    .line 718
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 717
    if-eqz v6, :cond_12

    .line 720
    const v6, 0x70000007

    invoke-virtual {v5, v6}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 725
    :cond_12
    const/4 v12, 0x0

    .line 726
    .local v12, "flags":I
    invoke-virtual/range {v25 .. v25}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 727
    const/16 v12, 0x8

    .line 730
    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v6, v0, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRSKEY_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 732
    .restart local v7    # "keyAliasInKeystore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 737
    move-object/from16 v0, p0

    iget v11, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 739
    new-instance v13, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v13}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 735
    const/4 v9, 0x3

    move-object v8, v5

    move-object/from16 v10, v17

    .line 732
    invoke-virtual/range {v6 .. v13}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v14

    .line 740
    .local v14, "errorCode":I
    const/4 v6, 0x1

    if-eq v14, v6, :cond_14

    .line 741
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 744
    :cond_14
    return-void
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 217
    :try_start_0
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 219
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 218
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 220
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v2, "AndroidKeyStore"

    const-string/jumbo v3, "Couldn\'t parse certificate in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    const/4 v2, 0x0

    return-object v2
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    const-string/jumbo v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 231
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 230
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 232
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v2, "AndroidKeyStore"

    const-string/jumbo v3, "Couldn\'t parse certificates in keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1
    .param p0, "privateKeyAlias"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v0, 0x0

    .line 211
    if-eqz p2, :cond_0

    .line 212
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    .line 211
    :cond_0
    return-object v0
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 809
    if-nez p1, :cond_0

    .line 810
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 814
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 813
    if-nez v0, :cond_1

    .line 815
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 813
    if-nez v0, :cond_1

    .line 816
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_0
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRCERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    .line 146
    .local v0, "encodedCert":[B
    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    .line 150
    :cond_1
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    .line 156
    :cond_2
    return-object v4
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 14
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 864
    if-nez p1, :cond_0

    .line 865
    return-object v13

    .line 867
    :cond_0
    const-string/jumbo v8, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 869
    return-object v13

    .line 873
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 877
    .local v6, "targetCertBytes":[B
    if-nez v6, :cond_2

    .line 878
    return-object v13

    .line 874
    .end local v6    # "targetCertBytes":[B
    :catch_0
    move-exception v4

    .line 875
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    return-object v13

    .line 881
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v6    # "targetCertBytes":[B
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 889
    .local v5, "nonCaEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v9, "USRCERT_"

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 890
    .local v2, "certAliases":[Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 891
    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_5

    aget-object v0, v2, v8

    .line 892
    .local v0, "alias":Ljava/lang/String;
    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v10, v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v3

    .line 893
    .local v3, "certBytes":[B
    if-nez v3, :cond_4

    .line 891
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 897
    :cond_4
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 900
    return-object v0

    .line 909
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "certBytes":[B
    :cond_5
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string/jumbo v9, "CACERT_"

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "caAliases":[Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 911
    array-length v8, v1

    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v0, v1, v7

    .line 912
    .restart local v0    # "alias":Ljava/lang/String;
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 911
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 916
    :cond_7
    iget-object v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v3

    .line 917
    .restart local v3    # "certBytes":[B
    if-eqz v3, :cond_6

    .line 921
    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 922
    return-object v0

    .line 927
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "certBytes":[B
    :cond_8
    return-object v13
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "alias == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 113
    .local v6, "leaf":Ljava/security/cert/X509Certificate;
    if-nez v6, :cond_1

    .line 114
    return-object v7

    .line 119
    :cond_1
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CACERT_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v7, v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    .line 120
    .local v0, "caBytes":[B
    if-eqz v0, :cond_2

    .line 121
    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v1

    .line 123
    .local v1, "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 125
    .local v2, "caList":[Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 126
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x1

    .line 127
    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 131
    .end local v1    # "caChain":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "caList":[Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/X509Certificate;>;"
    :cond_2
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/security/cert/Certificate;

    .line 134
    .restart local v2    # "caList":[Ljava/security/cert/Certificate;
    :cond_3
    const/4 v7, 0x0

    aput-object v6, v2, v7

    .line 136
    return-object v2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 254
    .local v0, "d":Ljava/util/Date;
    if-eqz v0, :cond_1

    .line 255
    return-object v0

    .line 258
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_2

    .line 260
    return-object v0

    .line 263
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_3

    .line 265
    return-object v0

    .line 268
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "privateKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 94
    invoke-static {v2, v0, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v2

    return-object v2

    .line 96
    .end local v0    # "privateKeyAlias":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "USRSKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "secretKeyAlias":Ljava/lang/String;
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 98
    invoke-static {v2, v1, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    return-object v2

    .line 102
    .end local v1    # "secretKeyAlias":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 859
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 826
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 939
    if-eqz p1, :cond_0

    .line 940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_0
    if-eqz p2, :cond_1

    .line 944
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 949
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 950
    return-void
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 955
    const/4 v0, -0x1

    .line 956
    .local v0, "uid":I
    if-eqz p1, :cond_0

    .line 957
    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_1

    .line 958
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    .end local p1    # "param":Ljava/security/KeyStore$LoadStoreParameter;
    invoke-virtual {p1}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->getUid()I

    move-result v0

    .line 964
    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    .line 965
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    .line 966
    return-void

    .line 960
    .restart local p1    # "param":Ljava/security/KeyStore$LoadStoreParameter;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 755
    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Entry exists and is not a trusted certificate"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 759
    :cond_0
    if-nez p2, :cond_1

    .line 760
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "cert == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 765
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 770
    .local v1, "encoded":[B
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 771
    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 773
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v1    # "encoded":[B
    :cond_2
    return-void
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "param"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 971
    if-nez p2, :cond_0

    .line 972
    new-instance v3, Ljava/security/KeyStoreException;

    const-string/jumbo v4, "entry == null"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 975
    :cond_0
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v3, p1, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    .line 977
    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 979
    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 980
    .local v2, "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 981
    return-void

    .line 984
    .end local v2    # "trE":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_1
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 985
    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 986
    .local v0, "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 995
    .end local v0    # "prE":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_0
    return-void

    .line 987
    :cond_2
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_3

    move-object v1, p2

    .line 988
    check-cast v1, Ljava/security/KeyStore$SecretKeyEntry;

    .line 989
    .local v1, "secE":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-direct {p0, p1, v3, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    .line 991
    .end local v1    # "secE":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_3
    new-instance v3, Ljava/security/KeyStoreException;

    .line 992
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 991
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 274
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 275
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 279
    check-cast p2, Ljava/security/PrivateKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, p4, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 285
    :goto_0
    return-void

    .line 280
    .restart local p2    # "key":Ljava/security/Key;
    :cond_1
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_2

    .line 281
    check-cast p2, Ljavax/crypto/SecretKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    .line 283
    .restart local p2    # "key":Ljava/security/Key;
    :cond_2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userKey"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 749
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .prologue
    .line 821
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 933
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
