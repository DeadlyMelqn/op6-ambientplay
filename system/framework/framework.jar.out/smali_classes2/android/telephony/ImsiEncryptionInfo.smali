.class public final Landroid/telephony/ImsiEncryptionInfo;
.super Ljava/lang/Object;
.source "ImsiEncryptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ImsiEncryptionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ImsiEncryptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ImsiEncryptionInfo"


# instance fields
.field private final expirationTime:Ljava/util/Date;

.field private final keyIdentifier:Ljava/lang/String;

.field private final keyType:I

.field private final mcc:Ljava/lang/String;

.field private final mnc:Ljava/lang/String;

.field private final publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Landroid/telephony/ImsiEncryptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/ImsiEncryptionInfo$1;-><init>()V

    .line 118
    sput-object v0, Landroid/telephony/ImsiEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "length":I
    new-array v0, v1, [B

    .line 69
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 70
    invoke-static {v0}, Landroid/telephony/ImsiEncryptionInfo;->makeKeyObject([B)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    .line 75
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "keyType"    # I
    .param p4, "keyIdentifier"    # Ljava/lang/String;
    .param p5, "publicKey"    # Ljava/security/PublicKey;
    .param p6, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 60
    iput p3, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    .line 61
    iput-object p5, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    .line 62
    iput-object p4, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Date;)V
    .locals 7
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "keyType"    # I
    .param p4, "keyIdentifier"    # Ljava/lang/String;
    .param p5, "key"    # [B
    .param p6, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 50
    invoke-static {p5}, Landroid/telephony/ImsiEncryptionInfo;->makeKeyObject([B)Ljava/security/PublicKey;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/security/PublicKey;Ljava/util/Date;)V

    .line 51
    return-void
.end method

.method private static makeKeyObject([B)Ljava/security/PublicKey;
    .locals 4
    .param p0, "publicKeyBytes"    # [B

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 105
    .local v1, "pubKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 106
    .end local v1    # "pubKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    const-string/jumbo v2, "ImsiEncryptionInfo"

    const-string/jumbo v3, "Error makeKeyObject: unable to convert into PublicKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getKeyIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ImsiEncryptionInfo mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "mnc="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "publicKey="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string/jumbo v1, ", keyIdentifier="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string/jumbo v1, ", keyType="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    iget v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const-string/jumbo v1, ", expirationTime="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "]"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 134
    .local v0, "b":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mcc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v1, p0, Landroid/telephony/ImsiEncryptionInfo;->keyType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v1, p0, Landroid/telephony/ImsiEncryptionInfo;->expirationTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    return-void
.end method
