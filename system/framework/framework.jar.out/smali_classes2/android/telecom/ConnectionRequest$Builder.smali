.class public final Landroid/telecom/ConnectionRequest$Builder;
.super Ljava/lang/Object;
.source "ConnectionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

.field private mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

.field private mShouldShowIncomingCallUi:Z

.field private mTelecomCallId:Ljava/lang/String;

.field private mVideoState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    .line 42
    iput-boolean v0, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    .line 46
    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/ConnectionRequest;
    .locals 10

    .prologue
    .line 127
    new-instance v0, Landroid/telecom/ConnectionRequest;

    .line 128
    iget-object v1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 129
    iget-object v2, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    .line 130
    iget-object v3, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 131
    iget v4, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    .line 132
    iget-object v5, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    .line 133
    iget-boolean v6, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    .line 134
    iget-object v7, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 135
    iget-object v8, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 127
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;ILjava/lang/String;ZLandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/ConnectionRequest;)V

    return-object v0
.end method

.method public setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 54
    return-object p0
.end method

.method public setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "address"    # Landroid/net/Uri;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mAddress:Landroid/net/Uri;

    .line 64
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 72
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mExtras:Landroid/os/Bundle;

    .line 73
    return-object p0
.end method

.method public setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "rttPipeFromInCall"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeFromInCall:Landroid/os/ParcelFileDescriptor;

    .line 113
    return-object p0
.end method

.method public setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "rttPipeToInCall"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 122
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mRttPipeToInCall:Landroid/os/ParcelFileDescriptor;

    .line 123
    return-object p0
.end method

.method public setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "shouldShowIncomingCallUi"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mShouldShowIncomingCallUi:Z

    .line 103
    return-object p0
.end method

.method public setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mTelecomCallId:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 81
    iput p1, p0, Landroid/telecom/ConnectionRequest$Builder;->mVideoState:I

    .line 82
    return-object p0
.end method
