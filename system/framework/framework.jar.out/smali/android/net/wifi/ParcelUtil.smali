.class public Landroid/net/wifi/ParcelUtil;
.super Ljava/lang/Object;
.source "ParcelUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 113
    .local v1, "certBytes":[B
    if-nez v1, :cond_0

    .line 114
    return-object v4

    .line 118
    :cond_0
    :try_start_0
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 120
    .local v0, "cFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 119
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 121
    .end local v0    # "cFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/security/cert/CertificateException;
    return-object v4
.end method

.method public static readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 155
    .local v2, "length":I
    if-nez v2, :cond_0

    .line 156
    const/4 v3, 0x0

    return-object v3

    .line 159
    :cond_0
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    .line 160
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 161
    invoke-static {p0}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v0, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-object v0
.end method

.method public static readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "algorithm":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    return-object v5

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 79
    .local v3, "userKeyBytes":[B
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 80
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 81
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/security/GeneralSecurityException;
    return-object v5
.end method

.method public static writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "certBytes":[B
    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    .end local v0    # "certBytes":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    return-void

    .line 98
    .restart local v0    # "certBytes":[B
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    goto :goto_0
.end method

.method public static writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 136
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void

    .line 141
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 143
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Landroid/net/wifi/ParcelUtil;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_2
    return-void
.end method

.method public static writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V
    .locals 1
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "key"    # Ljava/security/PrivateKey;

    .prologue
    const/4 v0, 0x0

    .line 54
    if-nez p1, :cond_0

    .line 55
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void

    .line 59
    :cond_0
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 61
    return-void
.end method
