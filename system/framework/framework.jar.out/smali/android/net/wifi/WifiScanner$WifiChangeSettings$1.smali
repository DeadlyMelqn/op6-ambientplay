.class final Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$WifiChangeSettings;
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
        "Landroid/net/wifi/WifiScanner$WifiChangeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 953
    new-instance v0, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 957
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    move-result-object v0

    return-object v0
.end method
