.class final Landroid/service/autofill/SaveInfo$1;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
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
        "Landroid/service/autofill/SaveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 605
    .local v4, "type":I
    const-class v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v8, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    .line 606
    .local v3, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v3, :cond_3

    .line 607
    new-instance v0, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v0, v4, v3}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I[Landroid/view/autofill/AutofillId;)V

    .line 609
    .local v0, "builder":Landroid/service/autofill/SaveInfo$Builder;
    :goto_0
    const-class v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v8, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Landroid/view/autofill/AutofillId;

    .line 610
    .local v2, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v2, :cond_0

    .line 611
    invoke-virtual {v0, v2}, Landroid/service/autofill/SaveInfo$Builder;->setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    invoke-virtual {v0, v7, v6}, Landroid/service/autofill/SaveInfo$Builder;->setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/service/autofill/SaveInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;

    .line 616
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/CustomDescription;

    .line 617
    .local v1, "customDescripton":Landroid/service/autofill/CustomDescription;
    if-eqz v1, :cond_1

    .line 618
    invoke-virtual {v0, v1}, Landroid/service/autofill/SaveInfo$Builder;->setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;

    .line 620
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/InternalValidator;

    .line 621
    .local v5, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v5, :cond_2

    .line 622
    invoke-virtual {v0, v5}, Landroid/service/autofill/SaveInfo$Builder;->setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;

    .line 624
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/service/autofill/SaveInfo$Builder;->setFlags(I)Landroid/service/autofill/SaveInfo$Builder;

    .line 625
    invoke-virtual {v0}, Landroid/service/autofill/SaveInfo$Builder;->build()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    return-object v6

    .line 608
    .end local v0    # "builder":Landroid/service/autofill/SaveInfo$Builder;
    .end local v1    # "customDescripton":Landroid/service/autofill/CustomDescription;
    .end local v2    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v5    # "validator":Landroid/service/autofill/InternalValidator;
    :cond_3
    new-instance v0, Landroid/service/autofill/SaveInfo$Builder;

    invoke-direct {v0, v4}, Landroid/service/autofill/SaveInfo$Builder;-><init>(I)V

    .restart local v0    # "builder":Landroid/service/autofill/SaveInfo$Builder;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/SaveInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/SaveInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 630
    new-array v0, p1, [Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Landroid/service/autofill/SaveInfo$1;->newArray(I)[Landroid/service/autofill/SaveInfo;

    move-result-object v0

    return-object v0
.end method
