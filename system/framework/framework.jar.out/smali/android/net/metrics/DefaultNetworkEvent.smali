.class public final Landroid/net/metrics/DefaultNetworkEvent;
.super Ljava/lang/Object;
.source "DefaultNetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DefaultNetworkEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final netId:I

.field public final prevIPv4:Z

.field public final prevIPv6:Z

.field public final prevNetId:I

.field public final transportTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DefaultNetworkEvent$1;-><init>()V

    .line 96
    sput-object v0, Landroid/net/metrics/DefaultNetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>(I[IIZZ)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "transportTypes"    # [I
    .param p3, "prevNetId"    # I
    .param p4, "prevIPv4"    # Z
    .param p5, "prevIPv6"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 42
    iput-object p2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    .line 43
    iput p3, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    .line 44
    iput-boolean p4, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    .line 45
    iput-boolean p5, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 53
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/net/metrics/DefaultNetworkEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private ipSupport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, "DUAL"

    return-object v0

    .line 87
    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "IPv6"

    return-object v0

    .line 90
    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_2

    .line 91
    const-string/jumbo v0, "IPv4"

    return-object v0

    .line 93
    :cond_2
    const-string/jumbo v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "prevNetwork":Ljava/lang/String;
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "newNetwork":Ljava/lang/String;
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    if-eqz v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/net/metrics/DefaultNetworkEvent;->ipSupport()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_0
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    if-eqz v2, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    invoke-static {v3}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_1
    const-string/jumbo v2, "DefaultNetworkEvent(%s -> %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 60
    iget v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v1, v2

    .line 62
    goto :goto_1
.end method
