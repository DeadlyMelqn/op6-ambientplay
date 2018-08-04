.class public Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;,
        Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiAwareAgentNs"

.field private static final VDBG:Z


# instance fields
.field private mDigester:Ljava/security/MessageDigest;

.field private mNetworkSpecifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;)Ljava/util/Set;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;-><init>()V

    .line 80
    sput-object v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .locals 2
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    .line 55
    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    .line 56
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .locals 5
    .param p1, "nss"    # [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    .line 60
    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    .line 61
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 62
    .local v0, "ns":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "ns":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    :cond_0
    return-void
.end method

.method private convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    .locals 4
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    if-nez v2, :cond_0

    .line 163
    return-object v3

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 167
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 170
    .local v0, "bytes":[B
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 171
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 172
    new-instance v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;-><init>([B)V

    return-object v2
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 154
    :try_start_0
    const-string/jumbo v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v1, "WifiAwareAgentNs"

    const-string/jumbo v2, "Can not instantiate a SHA-256 digester!? Will match nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method


# virtual methods
.method public assertValidFromUid(I)V
    .locals 2
    .param p1, "requestorUid"    # I

    .prologue
    .line 148
    new-instance v0, Ljava/lang/SecurityException;

    .line 149
    const-string/jumbo v1, "WifiAwareAgentNetworkSpecifier should not be used in network requests"

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 105
    if-ne p1, p0, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 5
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .prologue
    const/4 v4, 0x0

    .line 125
    instance-of v3, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-nez v3, :cond_0

    .line 126
    return v4

    :cond_0
    move-object v2, p1

    .line 128
    check-cast v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    .line 131
    .local v2, "otherNs":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "baw$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    .line 132
    .local v0, "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    iget-object v3, v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    return v4

    .line 137
    .end local v0    # "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z
    .locals 2
    .param p1, "ns"    # Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v0

    .line 143
    .local v0, "nsBytes":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v2, Ljava/util/StringJoiner;

    const-string/jumbo v3, ","

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .local v2, "sj":Ljava/util/StringJoiner;
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "baw$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    .line 118
    .local v0, "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 120
    .end local v0    # "baw":Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 78
    return-void
.end method