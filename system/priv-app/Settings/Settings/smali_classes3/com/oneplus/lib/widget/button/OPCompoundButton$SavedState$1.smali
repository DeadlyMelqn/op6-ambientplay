.class final Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState$1;
.super Ljava/lang/Object;
.source "OPCompoundButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;
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
        "Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 596
    new-instance v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;-><init>(Landroid/os/Parcel;Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 600
    new-array v0, p1, [Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState$1;->newArray(I)[Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    move-result-object v0

    return-object v0
.end method