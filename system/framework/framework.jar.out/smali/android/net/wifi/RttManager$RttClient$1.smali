.class final Landroid/net/wifi/RttManager$RttClient$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$RttClient;
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
        "Landroid/net/wifi/RttManager$RttClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttClient;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 951
    new-instance v0, Landroid/net/wifi/RttManager$RttClient;

    invoke-direct {v0, p1}, Landroid/net/wifi/RttManager$RttClient;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttClient$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttClient;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$RttClient;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 956
    new-array v0, p1, [Landroid/net/wifi/RttManager$RttClient;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttClient$1;->newArray(I)[Landroid/net/wifi/RttManager$RttClient;

    move-result-object v0

    return-object v0
.end method
