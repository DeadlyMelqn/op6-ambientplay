.class final Lcom/android/ims/internal/uce/presence/PresSipResponse$1;
.super Ljava/lang/Object;
.source "PresSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresSipResponse;
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
        "Lcom/android/ims/internal/uce/presence/PresSipResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresSipResponse;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 138
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSipResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/presence/PresSipResponse;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSipResponse;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresSipResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/presence/PresSipResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 142
    new-array v0, p1, [Lcom/android/ims/internal/uce/presence/PresSipResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSipResponse$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresSipResponse;

    move-result-object v0

    return-object v0
.end method
