.class final Landroid/app/AuthenticationRequiredException$1;
.super Ljava/lang/Object;
.source "AuthenticationRequiredException.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AuthenticationRequiredException;
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
        "Landroid/app/AuthenticationRequiredException;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/AuthenticationRequiredException;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 88
    new-instance v0, Landroid/app/AuthenticationRequiredException;

    invoke-direct {v0, p1}, Landroid/app/AuthenticationRequiredException;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/AuthenticationRequiredException$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/AuthenticationRequiredException;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/AuthenticationRequiredException;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 93
    new-array v0, p1, [Landroid/app/AuthenticationRequiredException;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Landroid/app/AuthenticationRequiredException$1;->newArray(I)[Landroid/app/AuthenticationRequiredException;

    move-result-object v0

    return-object v0
.end method
