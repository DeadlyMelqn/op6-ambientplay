.class final Landroid/app/PictureInPictureArgs$1;
.super Ljava/lang/Object;
.source "PictureInPictureArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureArgs;
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
        "Landroid/app/PictureInPictureArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/PictureInPictureArgs;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 348
    new-instance v0, Landroid/app/PictureInPictureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/os/Parcel;Landroid/app/PictureInPictureArgs;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/PictureInPictureArgs;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/PictureInPictureArgs;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 351
    new-array v0, p1, [Landroid/app/PictureInPictureArgs;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs$1;->newArray(I)[Landroid/app/PictureInPictureArgs;

    move-result-object v0

    return-object v0
.end method