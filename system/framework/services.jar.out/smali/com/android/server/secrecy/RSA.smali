.class public Lcom/android/server/secrecy/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/security/PublicKey;[B)[B
    .locals 4
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "cipherText"    # [B

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, "deciphered":[B
    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 161
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 162
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "deciphered":[B
    :goto_0
    return-object v1

    .line 163
    .restart local v1    # "deciphered":[B
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method static encrypt(Ljava/security/PrivateKey;[B)[B
    .locals 4
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "text"    # [B

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "ciphered":[B
    :try_start_0
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 177
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 178
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "ciphered":[B
    :goto_0
    return-object v1

    .line 179
    .restart local v1    # "ciphered":[B
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method static initRsaKey()V
    .locals 13

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 47
    .local v4, "keyPairGenerator":Ljava/security/KeyPairGenerator;
    :try_start_0
    const-string/jumbo v12, "RSA"

    invoke-static {v12}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 52
    .end local v4    # "keyPairGenerator":Ljava/security/KeyPairGenerator;
    :goto_0
    const/16 v12, 0x800

    invoke-virtual {v4, v12}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 54
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 56
    .local v3, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v9

    .line 57
    .local v9, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    .line 61
    .local v7, "privateKey":Ljava/security/PrivateKey;
    :try_start_1
    const-string/jumbo v12, "RSA"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 62
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    const-class v12, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v2, v9, v12}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v11

    check-cast v11, Ljava/security/spec/RSAPublicKeySpec;

    .line 63
    .local v11, "rsaPublicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v11}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    .line 64
    .local v5, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 77
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "modulus":Ljava/math/BigInteger;
    .end local v11    # "rsaPublicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    :goto_1
    :try_start_2
    const-string/jumbo v12, "RSA"

    invoke-static {v12}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 78
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    const-class v12, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {v2, v7, v12}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v10

    check-cast v10, Ljava/security/spec/RSAPrivateKeySpec;

    .line 79
    .local v10, "rsaPrivateKeySpec":Ljava/security/spec/RSAPrivateKeySpec;
    invoke-virtual {v10}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    .line 80
    .restart local v5    # "modulus":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 92
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "modulus":Ljava/math/BigInteger;
    .end local v10    # "rsaPrivateKeySpec":Ljava/security/spec/RSAPrivateKeySpec;
    :goto_2
    return-void

    .line 48
    .end local v3    # "keyPair":Ljava/security/KeyPair;
    .end local v7    # "privateKey":Ljava/security/PrivateKey;
    .end local v9    # "publicKey":Ljava/security/PublicKey;
    .restart local v4    # "keyPairGenerator":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "keyPairGenerator":Ljava/security/KeyPairGenerator;
    .restart local v3    # "keyPair":Ljava/security/KeyPair;
    .restart local v7    # "privateKey":Ljava/security/PrivateKey;
    .restart local v9    # "publicKey":Ljava/security/PublicKey;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_2
    move-exception v0

    .line 89
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_2
.end method

.method static initRsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PrivateKey;
    .locals 5
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .param p1, "privateExponent"    # Ljava/math/BigInteger;

    .prologue
    .line 142
    new-instance v2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v2, p0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 144
    .local v2, "keySpec":Ljava/security/spec/RSAPrivateKeySpec;
    const/4 v3, 0x0

    .line 146
    .local v3, "privateKey":Ljava/security/PrivateKey;
    :try_start_0
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 147
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 152
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "privateKey":Ljava/security/PrivateKey;
    :goto_0
    return-object v3

    .line 148
    .restart local v3    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static initRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .param p1, "exponent"    # Ljava/math/BigInteger;

    .prologue
    .line 127
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, p0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 129
    .local v2, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    const/4 v3, 0x0

    .line 131
    .local v3, "publicKey":Ljava/security/PublicKey;
    :try_start_0
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 132
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 137
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :goto_0
    return-object v3

    .line 133
    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static shaDigest(Ljava/lang/String;)[B
    .locals 4
    .param p0, "imei"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    .local v0, "digest":[B
    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 100
    .local v2, "md":Ljava/security/MessageDigest;
    const-string/jumbo v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    .end local v0    # "digest":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v0

    .line 102
    .restart local v0    # "digest":[B
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static shrink([BI)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 111
    array-length v4, p0

    div-int v2, v4, p1

    .line 113
    .local v2, "pieces":I
    new-array v3, v2, [B

    .line 115
    .local v3, "result":[B
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 116
    mul-int v4, v1, p1

    aget-byte v4, p0, v4

    aput-byte v4, v3, v1

    .line 117
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 118
    aget-byte v4, v3, v1

    mul-int v5, v1, p1

    add-int/2addr v5, v0

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_1
    return-object v3
.end method
