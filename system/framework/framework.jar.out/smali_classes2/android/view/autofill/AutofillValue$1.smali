.class final Landroid/view/autofill/AutofillValue$1;
.super Ljava/lang/Object;
.source "AutofillValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillValue;
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
        "Landroid/view/autofill/AutofillValue;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillValue;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 242
    new-instance v0, Landroid/view/autofill/AutofillValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/autofill/AutofillValue;-><init>(Landroid/os/Parcel;Landroid/view/autofill/AutofillValue;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillValue$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/autofill/AutofillValue;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 247
    new-array v0, p1, [Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillValue$1;->newArray(I)[Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method
