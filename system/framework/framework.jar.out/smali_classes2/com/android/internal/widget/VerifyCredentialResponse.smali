.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private mPayload:[B

.field private mResponseCode:I

.field private mTimeout:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/VerifyCredentialResponse;[B)V
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "payload"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setPayload([B)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "timeout"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->setTimeout(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 36
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    .line 35
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 44
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    .line 43
    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 84
    return-void
.end method

.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "payload"    # [B

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 88
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 89
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 90
    return-void
.end method

.method synthetic constructor <init>(II[BLcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "payload"    # [B
    .param p4, "-this3"    # Lcom/android/internal/widget/VerifyCredentialResponse;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "payload"    # [B

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 78
    return-void
.end method

.method public static fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 5
    .param p0, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    .line 140
    .local v1, "responseCode":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 141
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 154
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v0

    .line 142
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    if-nez v1, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    .line 144
    .local v2, "token":[B
    if-nez v2, :cond_1

    .line 146
    const-string/jumbo v3, "VerifyCredentialResponse"

    const-string/jumbo v4, "verifyChallenge response had no associated payload"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 149
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 152
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v2    # "token":[B
    :cond_2
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0
.end method

.method private setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    .line 130
    return-void
.end method

.method private setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[B)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 96
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
