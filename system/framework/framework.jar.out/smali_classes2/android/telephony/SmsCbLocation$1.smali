.class final Landroid/telephony/SmsCbLocation$1;
.super Ljava/lang/Object;
.source "SmsCbLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsCbLocation;
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
        "Landroid/telephony/SmsCbLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbLocation;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 183
    new-instance v0, Landroid/telephony/SmsCbLocation;

    invoke-direct {v0, p1}, Landroid/telephony/SmsCbLocation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbLocation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsCbLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SmsCbLocation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 188
    new-array v0, p1, [Landroid/telephony/SmsCbLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Landroid/telephony/SmsCbLocation$1;->newArray(I)[Landroid/telephony/SmsCbLocation;

    move-result-object v0

    return-object v0
.end method
