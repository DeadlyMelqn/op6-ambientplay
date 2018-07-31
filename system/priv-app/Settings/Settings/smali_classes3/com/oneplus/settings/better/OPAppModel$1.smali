.class final Lcom/oneplus/settings/better/OPAppModel$1;
.super Ljava/lang/Object;
.source "OPAppModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPAppModel;
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
        "Lcom/oneplus/settings/better/OPAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 126
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPAppModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oneplus/settings/better/OPAppModel;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 130
    new-array v0, p1, [Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPAppModel$1;->newArray(I)[Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    return-object v0
.end method
