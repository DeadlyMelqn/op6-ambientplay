.class final Landroid/content/pm/SharedLibraryInfo$1;
.super Ljava/lang/Object;
.source "SharedLibraryInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SharedLibraryInfo;
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
        "Landroid/content/pm/SharedLibraryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SharedLibraryInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 221
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/SharedLibraryInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/SharedLibraryInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/content/pm/SharedLibraryInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/SharedLibraryInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 225
    new-array v0, p1, [Landroid/content/pm/SharedLibraryInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/content/pm/SharedLibraryInfo$1;->newArray(I)[Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    return-object v0
.end method
