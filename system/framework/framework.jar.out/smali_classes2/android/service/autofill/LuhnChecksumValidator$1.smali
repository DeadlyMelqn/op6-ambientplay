.class final Landroid/service/autofill/LuhnChecksumValidator$1;
.super Ljava/lang/Object;
.source "LuhnChecksumValidator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/LuhnChecksumValidator;
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
        "Landroid/service/autofill/LuhnChecksumValidator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/LuhnChecksumValidator;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 119
    new-instance v1, Landroid/service/autofill/LuhnChecksumValidator;

    const-class v0, Landroid/view/autofill/AutofillId;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/view/autofill/AutofillId;

    invoke-direct {v1, v0}, Landroid/service/autofill/LuhnChecksumValidator;-><init>([Landroid/view/autofill/AutofillId;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/service/autofill/LuhnChecksumValidator$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/LuhnChecksumValidator;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/LuhnChecksumValidator;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 124
    new-array v0, p1, [Landroid/service/autofill/LuhnChecksumValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Landroid/service/autofill/LuhnChecksumValidator$1;->newArray(I)[Landroid/service/autofill/LuhnChecksumValidator;

    move-result-object v0

    return-object v0
.end method
