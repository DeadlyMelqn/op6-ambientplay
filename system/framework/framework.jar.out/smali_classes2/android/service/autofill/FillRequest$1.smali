.class final Landroid/service/autofill/FillRequest$1;
.super Ljava/lang/Object;
.source "FillRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillRequest;
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
        "Landroid/service/autofill/FillRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillRequest;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 160
    new-instance v0, Landroid/service/autofill/FillRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/autofill/FillRequest;-><init>(Landroid/os/Parcel;Landroid/service/autofill/FillRequest;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/FillRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 165
    new-array v0, p1, [Landroid/service/autofill/FillRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillRequest$1;->newArray(I)[Landroid/service/autofill/FillRequest;

    move-result-object v0

    return-object v0
.end method