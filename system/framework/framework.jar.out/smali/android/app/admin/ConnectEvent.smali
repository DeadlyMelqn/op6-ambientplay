.class public final Landroid/app/admin/ConnectEvent;
.super Landroid/app/admin/NetworkEvent;
.source "ConnectEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ConnectEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/ConnectEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ipAddress:Ljava/lang/String;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/app/admin/ConnectEvent$1;

    invoke-direct {v0}, Landroid/app/admin/ConnectEvent$1;-><init>()V

    .line 74
    sput-object v0, Landroid/app/admin/ConnectEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/admin/NetworkEvent;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/ConnectEvent;->port:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ConnectEvent;->packageName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/ConnectEvent;->timestamp:J

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/ConnectEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/app/admin/ConnectEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/admin/ConnectEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 42
    invoke-direct {p0, p3, p4, p5}, Landroid/app/admin/NetworkEvent;-><init>(Ljava/lang/String;J)V

    .line 43
    iput-object p1, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    .line 44
    iput p2, p0, Landroid/app/admin/ConnectEvent;->port:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Landroid/app/admin/ConnectEvent;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string/jumbo v0, "ConnectEvent(%s, %d, %d, %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/app/admin/ConnectEvent;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/app/admin/ConnectEvent;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 71
    iget-object v2, p0, Landroid/app/admin/ConnectEvent;->packageName:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 70
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/app/admin/ConnectEvent;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Landroid/app/admin/ConnectEvent;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Landroid/app/admin/ConnectEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-wide v0, p0, Landroid/app/admin/ConnectEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    return-void
.end method
