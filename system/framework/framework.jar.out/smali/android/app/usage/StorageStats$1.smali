.class final Landroid/app/usage/StorageStats$1;
.super Ljava/lang/Object;
.source "StorageStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/StorageStats;
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
        "Landroid/app/usage/StorageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/StorageStats;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 112
    new-instance v0, Landroid/app/usage/StorageStats;

    invoke-direct {v0, p1}, Landroid/app/usage/StorageStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/usage/StorageStats;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 117
    new-array v0, p1, [Landroid/app/usage/StorageStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStats$1;->newArray(I)[Landroid/app/usage/StorageStats;

    move-result-object v0

    return-object v0
.end method
