.class final Landroid/os/Temperature$1;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Temperature;
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
        "Landroid/os/Temperature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/Temperature;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 88
    new-instance v0, Landroid/os/Temperature;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/Temperature;-><init>(Landroid/os/Parcel;Landroid/os/Temperature;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Temperature$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Temperature;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/Temperature;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    new-array v0, p1, [Landroid/os/Temperature;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/os/Temperature$1;->newArray(I)[Landroid/os/Temperature;

    move-result-object v0

    return-object v0
.end method
