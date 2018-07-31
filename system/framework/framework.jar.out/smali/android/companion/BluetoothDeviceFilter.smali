.class public final Landroid/companion/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Landroid/companion/DeviceFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/BluetoothDeviceFilter$1;,
        Landroid/companion/BluetoothDeviceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/companion/DeviceFilter",
        "<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/companion/BluetoothDeviceFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mNamePattern:Ljava/util/regex/Pattern;

.field private final mServiceUuidMasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Landroid/companion/BluetoothDeviceFilter$1;

    invoke-direct {v0}, Landroid/companion/BluetoothDeviceFilter$1;-><init>()V

    .line 147
    sput-object v0, Landroid/companion/BluetoothDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternFromString(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilter;->readUuids(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilter;->readUuids(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v3

    .line 63
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/companion/BluetoothDeviceFilter;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/companion/BluetoothDeviceFilter;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "-this1"    # Landroid/companion/BluetoothDeviceFilter;

    .prologue
    invoke-direct {p0, p1}, Landroid/companion/BluetoothDeviceFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "namePattern"    # Ljava/util/regex/Pattern;
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    .local p4, "serviceUuidMasks":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    .line 57
    iput-object p2, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    .line 58
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    .line 59
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/companion/BluetoothDeviceFilter;)V
    .locals 0
    .param p1, "namePattern"    # Ljava/util/regex/Pattern;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "serviceUuids"    # Ljava/util/List;
    .param p4, "serviceUuidMasks"    # Ljava/util/List;
    .param p5, "-this4"    # Landroid/companion/BluetoothDeviceFilter;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/BluetoothDeviceFilter;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static readUuids(Landroid/os/Parcel;)Ljava/util/List;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 128
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 130
    check-cast v0, Landroid/companion/BluetoothDeviceFilter;

    .line 131
    .local v0, "that":Landroid/companion/BluetoothDeviceFilter;
    iget-object v2, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v3, v0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 131
    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    iget-object v3, v0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 131
    if-eqz v2, :cond_3

    .line 134
    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    iget-object v2, v0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 131
    :cond_3
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDisplayName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    invoke-static {p1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothDeviceFilter;->getDeviceDisplayName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediumType()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getNamePattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getServiceUuidMasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    return-object v0
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesAddress(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    iget-object v1, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    invoke-static {v0, v1, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesServiceUuids(Ljava/util/List;Ljava/util/List;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic matches(Landroid/os/Parcelable;)Z
    .locals 1

    .prologue
    .line 74
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothDeviceFilter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/companion/BluetoothDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuids:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 123
    iget-object v0, p0, Landroid/companion/BluetoothDeviceFilter;->mServiceUuidMasks:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 124
    return-void
.end method
