.class final Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
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
        "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 242
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-direct {v0, p1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 246
    new-array v0, p1, [Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;->newArray(I)[Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v0

    return-object v0
.end method