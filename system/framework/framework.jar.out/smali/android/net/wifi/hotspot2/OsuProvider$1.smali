.class final Landroid/net/wifi/hotspot2/OsuProvider$1;
.super Ljava/lang/Object;
.source "OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/OsuProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/hotspot2/OsuProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    .line 215
    .local v1, "osuSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "friendlyName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "serviceDescription":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 218
    .local v4, "serverUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "nai":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v6, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1, v6, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    .line 222
    .local v7, "icon":Landroid/graphics/drawable/Icon;
    new-instance v0, Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/hotspot2/OsuProvider;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Icon;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 228
    new-array v0, p1, [Landroid/net/wifi/hotspot2/OsuProvider;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v0

    return-object v0
.end method
