.class final Landroid/service/autofill/ImageTransformation$1;
.super Ljava/lang/Object;
.source "ImageTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
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
        "Landroid/service/autofill/ImageTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    .line 196
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 198
    .local v2, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [Ljava/util/regex/Pattern;

    .line 199
    .local v3, "regexs":[Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 203
    .local v4, "resIds":[I
    new-instance v0, Landroid/service/autofill/ImageTransformation$Builder;

    .line 204
    aget-object v6, v3, v7

    aget v7, v4, v7

    .line 203
    invoke-direct {v0, v2, v6, v7}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V

    .line 206
    .local v0, "builder":Landroid/service/autofill/ImageTransformation$Builder;
    array-length v5, v3

    .line 207
    .local v5, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 208
    aget-object v6, v3, v1

    aget v7, v4, v1

    invoke-virtual {v0, v6, v7}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/ImageTransformation$Builder;->build()Landroid/service/autofill/ImageTransformation;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/ImageTransformation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 216
    new-array v0, p1, [Landroid/service/autofill/ImageTransformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->newArray(I)[Landroid/service/autofill/ImageTransformation;

    move-result-object v0

    return-object v0
.end method
