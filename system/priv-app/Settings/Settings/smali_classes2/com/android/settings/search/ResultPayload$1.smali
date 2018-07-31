.class final Lcom/android/settings/search/ResultPayload$1;
.super Ljava/lang/Object;
.source "ResultPayload.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/ResultPayload;
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
        "Lcom/android/settings/search/ResultPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/search/ResultPayload;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 153
    new-instance v0, Lcom/android/settings/search/ResultPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/os/Parcel;Lcom/android/settings/search/ResultPayload;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/search/ResultPayload$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/search/ResultPayload;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/search/ResultPayload;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 158
    new-array v0, p1, [Lcom/android/settings/search/ResultPayload;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/search/ResultPayload$1;->newArray(I)[Lcom/android/settings/search/ResultPayload;

    move-result-object v0

    return-object v0
.end method
