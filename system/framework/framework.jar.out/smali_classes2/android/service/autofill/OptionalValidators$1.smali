.class final Landroid/service/autofill/OptionalValidators$1;
.super Ljava/lang/Object;
.source "OptionalValidators.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/OptionalValidators;
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
        "Landroid/service/autofill/OptionalValidators;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/OptionalValidators;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v1, Landroid/service/autofill/OptionalValidators;

    .line 83
    const-class v0, Landroid/service/autofill/InternalValidator;

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/InternalValidator;

    invoke-direct {v1, v0}, Landroid/service/autofill/OptionalValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/service/autofill/OptionalValidators$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/OptionalValidators;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/OptionalValidators;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 88
    new-array v0, p1, [Landroid/service/autofill/OptionalValidators;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/service/autofill/OptionalValidators$1;->newArray(I)[Landroid/service/autofill/OptionalValidators;

    move-result-object v0

    return-object v0
.end method
