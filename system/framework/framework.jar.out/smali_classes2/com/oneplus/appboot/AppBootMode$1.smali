.class final Lcom/oneplus/appboot/AppBootMode$1;
.super Ljava/lang/Object;
.source "AppBootMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/appboot/AppBootMode;
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
        "Lcom/oneplus/appboot/AppBootMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/appboot/AppBootMode;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 60
    new-instance v0, Lcom/oneplus/appboot/AppBootMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/appboot/AppBootMode;-><init>(Landroid/os/Parcel;Lcom/oneplus/appboot/AppBootMode;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/oneplus/appboot/AppBootMode$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/appboot/AppBootMode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oneplus/appboot/AppBootMode;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 64
    new-array v0, p1, [Lcom/oneplus/appboot/AppBootMode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/oneplus/appboot/AppBootMode$1;->newArray(I)[Lcom/oneplus/appboot/AppBootMode;

    move-result-object v0

    return-object v0
.end method