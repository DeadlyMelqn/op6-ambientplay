.class final Landroid/net/lowpan/LowpanCredential$1;
.super Ljava/lang/Object;
.source "LowpanCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCredential;
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
        "Landroid/net/lowpan/LowpanCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanCredential;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 160
    new-instance v0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanCredential;-><init>()V

    .line 162
    .local v0, "credential":Landroid/net/lowpan/LowpanCredential;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanCredential;->-set0(Landroid/net/lowpan/LowpanCredential;[B)[B

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanCredential;->-set1(Landroid/net/lowpan/LowpanCredential;I)I

    .line 165
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanCredential;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanCredential;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 169
    new-array v0, p1, [Landroid/net/lowpan/LowpanCredential;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential$1;->newArray(I)[Landroid/net/lowpan/LowpanCredential;

    move-result-object v0

    return-object v0
.end method