.class final Landroid/telecom/PhoneAccountHandle$1;
.super Ljava/lang/Object;
.source "PhoneAccountHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/PhoneAccountHandle;
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
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/PhoneAccountHandle;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 158
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/os/Parcel;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccountHandle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 163
    new-array v0, p1, [Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Landroid/telecom/PhoneAccountHandle$1;->newArray(I)[Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method
