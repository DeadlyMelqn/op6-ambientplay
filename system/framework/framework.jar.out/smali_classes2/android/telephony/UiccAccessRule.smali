.class public final Landroid/telephony/UiccAccessRule;
.super Ljava/lang/Object;
.source "UiccAccessRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/UiccAccessRule$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODING_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UiccAccessRule"


# instance fields
.field private final mAccessType:J

.field private final mCertificateHash:[B

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/telephony/UiccAccessRule$1;

    invoke-direct {v0}, Landroid/telephony/UiccAccessRule$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    .line 139
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;J)V
    .locals 1
    .param p1, "certificateHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accessType"    # J

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    .line 131
    iput-object p2, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 132
    iput-wide p3, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    .line 133
    return-void
.end method

.method public static decodeRules([B)[Landroid/telephony/UiccAccessRule;
    .locals 18
    .param p0, "encodedRules"    # [B

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v14, 0x0

    return-object v14

    .line 103
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 104
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v15, 0x0

    const/4 v11, 0x0

    .local v11, "input":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    .end local v11    # "input":Ljava/io/DataInputStream;
    .local v12, "input":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    .line 106
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 107
    .local v8, "count":I
    new-array v2, v8, [Landroid/telephony/UiccAccessRule;

    .line 108
    .local v2, "accessRules":[Landroid/telephony/UiccAccessRule;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 109
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 110
    .local v7, "certificateHashLength":I
    new-array v6, v7, [B

    .line 111
    .local v6, "certificateHash":[B
    invoke-virtual {v12, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 112
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    .line 113
    :goto_1
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 114
    .local v4, "accessType":J
    new-instance v14, Landroid/telephony/UiccAccessRule;

    invoke-direct {v14, v6, v13, v4, v5}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v14, v2, v10

    .line 108
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 112
    .end local v4    # "accessType":J
    :cond_1
    const/4 v13, 0x0

    .local v13, "packageName":Ljava/lang/String;
    goto :goto_1

    .line 116
    .end local v6    # "certificateHash":[B
    .end local v7    # "certificateHashLength":I
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 121
    if-eqz v12, :cond_3

    :try_start_2
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    if-eqz v15, :cond_4

    :try_start_3
    throw v15
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 118
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    move-object v11, v12

    .line 119
    .end local v2    # "accessRules":[Landroid/telephony/UiccAccessRule;
    .end local v8    # "count":I
    .end local v10    # "i":I
    .end local v12    # "input":Ljava/io/DataInputStream;
    :goto_3
    new-instance v14, Ljava/lang/IllegalStateException;

    .line 120
    const-string/jumbo v15, "ByteArrayInputStream should never lead to an IOException"

    .line 119
    invoke-direct {v14, v15, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 121
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v2    # "accessRules":[Landroid/telephony/UiccAccessRule;
    .restart local v8    # "count":I
    .restart local v10    # "i":I
    .restart local v12    # "input":Ljava/io/DataInputStream;
    :catch_1
    move-exception v15

    goto :goto_2

    .line 117
    :cond_4
    return-object v2

    .line 121
    .end local v2    # "accessRules":[Landroid/telephony/UiccAccessRule;
    .end local v8    # "count":I
    .end local v10    # "i":I
    .end local v12    # "input":Ljava/io/DataInputStream;
    .restart local v11    # "input":Ljava/io/DataInputStream;
    :catch_2
    move-exception v14

    .end local v11    # "input":Ljava/io/DataInputStream;
    :goto_4
    :try_start_4
    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v15

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v17

    :goto_5
    if-eqz v11, :cond_5

    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    if-eqz v15, :cond_7

    :try_start_6
    throw v15

    .line 118
    :catch_3
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 121
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v16

    if-nez v15, :cond_6

    move-object/from16 v15, v16

    goto :goto_6

    :cond_6
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_5

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    throw v14
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v11    # "input":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v14

    goto :goto_5

    .end local v11    # "input":Ljava/io/DataInputStream;
    .restart local v12    # "input":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v14

    move-object v11, v12

    .end local v12    # "input":Ljava/io/DataInputStream;
    .local v11, "input":Ljava/io/DataInputStream;
    goto :goto_5

    .end local v11    # "input":Ljava/io/DataInputStream;
    .restart local v12    # "input":Ljava/io/DataInputStream;
    :catch_5
    move-exception v14

    move-object v11, v12

    .end local v12    # "input":Ljava/io/DataInputStream;
    .restart local v11    # "input":Ljava/io/DataInputStream;
    goto :goto_4
.end method

.method public static encodeRules([Landroid/telephony/UiccAccessRule;)[B
    .locals 8
    .param p0, "accessRules"    # [Landroid/telephony/UiccAccessRule;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 68
    return-object v5

    .line 71
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .local v3, "output":Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    array-length v5, p0

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    .line 76
    .local v0, "accessRule":Landroid/telephony/UiccAccessRule;
    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 78
    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 80
    iget-object v6, v0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 84
    :goto_1
    iget-wide v6, v0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {v3, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    .end local v0    # "accessRule":Landroid/telephony/UiccAccessRule;
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 90
    const-string/jumbo v5, "ByteArrayOutputStream should never lead to an IOException"

    .line 89
    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 86
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 87
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private static getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .locals 5
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .param p1, "algo"    # Ljava/lang/String;

    .prologue
    .line 223
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 224
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 225
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "UiccAccessRule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NoSuchAlgorithmException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v2, 0x0

    return-object v2
.end method

.method private matches([BLjava/lang/String;)Z
    .locals 1
    .param p1, "certHash"    # [B
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 203
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 204
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v3, 0x0

    .line 168
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 170
    const-string/jumbo v3, "Must use GET_SIGNATURES when looking up package info"

    .line 169
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 174
    .local v1, "sig":Landroid/content/pm/Signature;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "accessStatus":I
    if-eqz v0, :cond_2

    .line 176
    return v0

    .line 173
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "accessStatus":I
    .end local v1    # "sig":Landroid/content/pm/Signature;
    :cond_3
    return v3
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 3
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 193
    const-string/jumbo v2, "SHA-1"

    invoke-static {p1, v2}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v0

    .line 194
    .local v0, "certHash":[B
    const-string/jumbo v2, "SHA-256"

    invoke-static {p1, v2}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v1

    .line 195
    .local v1, "certHash256":[B
    invoke-direct {p0, v0, p2}, Landroid/telephony/UiccAccessRule;->matches([BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p2}, Landroid/telephony/UiccAccessRule;->matches([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 199
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string/jumbo v1, " access: "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget-wide v2, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    .line 209
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 143
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 144
    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    return-void
.end method
