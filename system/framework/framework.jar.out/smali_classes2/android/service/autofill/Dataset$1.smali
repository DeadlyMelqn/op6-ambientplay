.class final Landroid/service/autofill/Dataset$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
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
        "Landroid/service/autofill/Dataset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;
    .locals 13
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v12, 0x0

    .line 332
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/widget/RemoteViews;

    .line 333
    .local v6, "presentation":Landroid/widget/RemoteViews;
    if-nez v6, :cond_0

    .line 334
    new-instance v0, Landroid/service/autofill/Dataset$Builder;

    invoke-direct {v0}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    .line 336
    .local v0, "builder":Landroid/service/autofill/Dataset$Builder;
    :goto_0
    sget-object v11, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 338
    .local v5, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    sget-object v11, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    .line 339
    .local v10, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v7, "presentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p1, v7, v12}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 341
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 342
    .local v4, "idCount":I
    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 343
    .local v9, "valueCount":I
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v4, :cond_5

    .line 344
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 345
    .local v3, "id":Landroid/view/autofill/AutofillId;
    if-le v9, v2, :cond_3

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillValue;

    .line 346
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v1, 0x0

    .line 348
    :goto_5
    invoke-static {v0, v3, v8, v1}, Landroid/service/autofill/Dataset$Builder;->-wrap0(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 335
    .end local v0    # "builder":Landroid/service/autofill/Dataset$Builder;
    .end local v2    # "i":I
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v4    # "idCount":I
    .end local v5    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v7    # "presentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    .end local v9    # "valueCount":I
    .end local v10    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_0
    new-instance v0, Landroid/service/autofill/Dataset$Builder;

    invoke-direct {v0, v6}, Landroid/service/autofill/Dataset$Builder;-><init>(Landroid/widget/RemoteViews;)V

    .restart local v0    # "builder":Landroid/service/autofill/Dataset$Builder;
    goto :goto_0

    .line 341
    .restart local v5    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v7    # "presentations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    .restart local v10    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "idCount":I
    goto :goto_1

    .line 342
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "valueCount":I
    goto :goto_2

    .line 345
    .restart local v2    # "i":I
    .restart local v3    # "id":Landroid/view/autofill/AutofillId;
    :cond_3
    const/4 v8, 0x0

    .local v8, "value":Landroid/view/autofill/AutofillValue;
    goto :goto_4

    .line 347
    .end local v8    # "value":Landroid/view/autofill/AutofillValue;
    :cond_4
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .local v1, "fieldPresentation":Landroid/widget/RemoteViews;
    goto :goto_5

    .line 350
    .end local v1    # "fieldPresentation":Landroid/widget/RemoteViews;
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    :cond_5
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/IntentSender;

    invoke-virtual {v0, v11}, Landroid/service/autofill/Dataset$Builder;->setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    .line 352
    invoke-virtual {v0}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object v11

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/autofill/Dataset;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 357
    new-array v0, p1, [Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->newArray(I)[Landroid/service/autofill/Dataset;

    move-result-object v0

    return-object v0
.end method
