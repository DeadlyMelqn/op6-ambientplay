.class final Landroid/util/MemoryIntArray$1;
.super Ljava/lang/Object;
.source "MemoryIntArray.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MemoryIntArray;
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
        "Landroid/util/MemoryIntArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/util/MemoryIntArray;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 246
    :try_start_0
    new-instance v1, Landroid/util/MemoryIntArray;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/util/MemoryIntArray;-><init>(Landroid/os/Parcel;Landroid/util/MemoryIntArray;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error unparceling MemoryIntArray"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/util/MemoryIntArray$1;->createFromParcel(Landroid/os/Parcel;)Landroid/util/MemoryIntArray;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/util/MemoryIntArray;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 254
    new-array v0, p1, [Landroid/util/MemoryIntArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Landroid/util/MemoryIntArray$1;->newArray(I)[Landroid/util/MemoryIntArray;

    move-result-object v0

    return-object v0
.end method
