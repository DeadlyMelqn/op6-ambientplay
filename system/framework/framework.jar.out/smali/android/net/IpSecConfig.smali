.class public final Landroid/net/IpSecConfig;
.super Ljava/lang/Object;
.source "IpSecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecConfig$1;,
        Landroid/net/IpSecConfig$Flow;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/IpSecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecConfig"


# instance fields
.field encapLocalPortResourceId:I

.field encapRemotePort:I

.field encapType:I

.field flow:[Landroid/net/IpSecConfig$Flow;

.field localAddress:Ljava/net/InetAddress;

.field mode:I

.field nattKeepaliveInterval:I

.field network:Landroid/net/Network;

.field remoteAddress:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Landroid/net/IpSecConfig$1;

    invoke-direct {v0}, Landroid/net/IpSecConfig$1;-><init>()V

    .line 169
    sput-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/IpSecConfig$Flow;

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 135
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/IpSecConfig$Flow;

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    .line 151
    invoke-static {p1}, Landroid/net/IpSecConfig;->readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    .line 152
    invoke-static {p1}, Landroid/net/IpSecConfig;->readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    .line 153
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    .line 154
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    .line 155
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v2

    .line 156
    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    .line 155
    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    .line 157
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v2

    .line 158
    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    .line 157
    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    .line 159
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    .line 160
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v3

    .line 161
    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    .line 160
    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    .line 162
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v3

    .line 163
    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    .line 162
    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapType:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecConfig;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/net/IpSecConfig;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "addrString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    return-object v5

    .line 143
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "IpSecConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid IpAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthentication(I)Landroid/net/IpSecAlgorithm;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 85
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getEncapLocalResourceId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    return v0
.end method

.method public getEncapRemotePort()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    return v0
.end method

.method public getEncapType()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/net/IpSecConfig;->encapType:I

    return v0
.end method

.method public getEncryption(I)Landroid/net/IpSecAlgorithm;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 81
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/net/IpSecConfig;->mode:I

    return v0
.end method

.method public getNattKeepaliveInterval()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/net/IpSecConfig;->nattKeepaliveInterval:I

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSpiResourceId(I)I
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget v0, p0, Landroid/net/IpSecConfig;->encapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void

    :cond_1
    move-object v0, v1

    .line 118
    goto :goto_0
.end method
