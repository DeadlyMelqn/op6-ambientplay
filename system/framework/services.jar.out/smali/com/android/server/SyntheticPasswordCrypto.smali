.class public Lcom/android/server/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x20

.field private static final APPLICATION_ID_PERSONALIZATION:[B

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "application-id"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlob(Ljava/lang/String;[B[BJ)[B
    .locals 11
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "applicationId"    # [B
    .param p3, "sid"    # J

    .prologue
    .line 149
    :try_start_0
    const-string/jumbo v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 150
    .local v3, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v6}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 151
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 152
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v6, "AndroidKeyStore"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 153
    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 154
    new-instance v6, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 155
    const-string/jumbo v8, "GCM"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 154
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 156
    const-string/jumbo v8, "NoPadding"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 154
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    .line 157
    const/4 v7, 0x1

    .line 154
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 158
    .local v0, "builder":Landroid/security/keystore/KeyProtection$Builder;
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_0

    .line 159
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    .line 161
    const/16 v7, 0xf

    .line 159
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 165
    :cond_0
    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 166
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 164
    invoke-virtual {v4, p0, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 167
    sget-object v6, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v6, p1}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v2

    .line 168
    .local v2, "intermediate":[B
    invoke-static {v5, v2}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 172
    .end local v0    # "builder":Landroid/security/keystore/KeyProtection$Builder;
    .end local v2    # "intermediate":[B
    .end local v3    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Failed to encrypt blob"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B)[B
    .locals 5
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 56
    if-nez p1, :cond_0

    .line 57
    return-object v3

    .line 59
    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 60
    .local v2, "iv":[B
    array-length v3, p1

    invoke-static {p1, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 61
    .local v1, "ciphertext":[B
    const-string/jumbo v3, "AES/GCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 63
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public static decrypt([B[B[B)[B
    .locals 5
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "ciphertext"    # [B

    .prologue
    .line 102
    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, v3}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v2

    .line 103
    .local v2, "keyHash":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 104
    const-string/jumbo v4, "AES"

    .line 103
    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 106
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-static {v1, p2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 111
    const/4 v3, 0x0

    return-object v3
.end method

.method public static decryptBlob(Ljava/lang/String;[B[B)[B
    .locals 6
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .param p2, "applicationId"    # [B

    .prologue
    .line 131
    :try_start_0
    const-string/jumbo v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 132
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 134
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 135
    .local v0, "decryptionKey":Ljavax/crypto/SecretKey;
    invoke-static {v0, p1}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2

    .line 136
    .local v2, "intermediate":[B
    sget-object v4, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v4, v2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 141
    .end local v0    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v2    # "intermediate":[B
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Failed to decrypt blob"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .locals 6
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .param p2, "applicationId"    # [B

    .prologue
    .line 117
    :try_start_0
    const-string/jumbo v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 118
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 120
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 121
    .local v0, "decryptionKey":Ljavax/crypto/SecretKey;
    sget-object v4, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v4, p1}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v2

    .line 122
    .local v2, "intermediate":[B
    invoke-static {v0, v2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 123
    .end local v0    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v2    # "intermediate":[B
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Failed to decrypt blob"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "keyAlias"    # Ljava/lang/String;

    .prologue
    .line 181
    :try_start_0
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 182
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 183
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B)[B
    .locals 7
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    return-object v4

    .line 74
    :cond_0
    const-string/jumbo v4, "AES/GCM/NoPadding"

    .line 73
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 76
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 77
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 78
    .local v1, "ciphertext":[B
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    .line 79
    .local v2, "iv":[B
    array-length v4, v2

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    .line 80
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid iv length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 84
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static encrypt([B[B[B)[B
    .locals 5
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "message"    # [B

    .prologue
    .line 89
    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, v3}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v2

    .line 90
    .local v2, "keyHash":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 91
    const-string/jumbo v4, "AES"

    .line 90
    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 93
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-static {v1, p2}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const/4 v3, 0x0

    return-object v3
.end method

.method protected static varargs personalisedHash([B[[B)[B
    .locals 6
    .param p0, "personalisation"    # [B
    .param p1, "message"    # [[B

    .prologue
    const/16 v5, 0x80

    .line 192
    const/16 v0, 0x80

    .line 193
    .local v0, "PADDING_LENGTH":I
    :try_start_0
    const-string/jumbo v4, "SHA-512"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 194
    .local v2, "digest":Ljava/security/MessageDigest;
    array-length v4, p0

    if-le v4, v5, :cond_0

    .line 195
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Personalisation too long"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v2    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 199
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    :cond_0
    const/16 v4, 0x80

    :try_start_1
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 200
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p1, v4

    .line 202
    .local v1, "data":[B
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "data":[B
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method
