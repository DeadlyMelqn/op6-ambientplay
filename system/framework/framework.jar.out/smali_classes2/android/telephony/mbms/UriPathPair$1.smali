.class final Landroid/telephony/mbms/UriPathPair$1;
.super Ljava/lang/Object;
.source "UriPathPair.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/UriPathPair;
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
        "Landroid/telephony/mbms/UriPathPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/UriPathPair;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    new-instance v0, Landroid/telephony/mbms/UriPathPair;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/os/Parcel;Landroid/telephony/mbms/UriPathPair;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/UriPathPair$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/UriPathPair;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/mbms/UriPathPair;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Landroid/telephony/mbms/UriPathPair;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/UriPathPair$1;->newArray(I)[Landroid/telephony/mbms/UriPathPair;

    move-result-object v0

    return-object v0
.end method
