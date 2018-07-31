.class public Lcom/android/ims/ImsSsData;
.super Ljava/lang/Object;
.source "ImsSsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsSsData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsSsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SS_ACTIVATION:I = 0x0

.field public static final SS_ALL_BARRING:I = 0x12

.field public static final SS_ALL_DATA_TELESERVICES:I = 0x3

.field public static final SS_ALL_TELESERVICES_EXCEPT_SMS:I = 0x5

.field public static final SS_ALL_TELESEVICES:I = 0x1

.field public static final SS_ALL_TELE_AND_BEARER_SERVICES:I = 0x0

.field public static final SS_BAIC:I = 0x10

.field public static final SS_BAIC_ROAMING:I = 0x11

.field public static final SS_BAOC:I = 0xd

.field public static final SS_BAOIC:I = 0xe

.field public static final SS_BAOIC_EXC_HOME:I = 0xf

.field public static final SS_CFU:I = 0x0

.field public static final SS_CFUT:I = 0x6

.field public static final SS_CF_ALL:I = 0x4

.field public static final SS_CF_ALL_CONDITIONAL:I = 0x5

.field public static final SS_CF_BUSY:I = 0x1

.field public static final SS_CF_NOT_REACHABLE:I = 0x3

.field public static final SS_CF_NO_REPLY:I = 0x2

.field public static final SS_CLIP:I = 0x7

.field public static final SS_CLIR:I = 0x8

.field public static final SS_CNAP:I = 0xb

.field public static final SS_COLP:I = 0x9

.field public static final SS_COLR:I = 0xa

.field public static final SS_DEACTIVATION:I = 0x1

.field public static final SS_ERASURE:I = 0x4

.field public static final SS_INCOMING_BARRING:I = 0x14

.field public static final SS_INCOMING_BARRING_ANONYMOUS:I = 0x16

.field public static final SS_INCOMING_BARRING_DN:I = 0x15

.field public static final SS_INTERROGATION:I = 0x2

.field public static final SS_OUTGOING_BARRING:I = 0x13

.field public static final SS_REGISTRATION:I = 0x3

.field public static final SS_SMS_SERVICES:I = 0x4

.field public static final SS_TELEPHONY:I = 0x2

.field public static final SS_WAIT:I = 0xc


# instance fields
.field public mCfInfo:[Lcom/android/ims/ImsCallForwardInfo;

.field public mImsSsInfo:[Lcom/android/ims/ImsSsInfo;

.field public mRequestType:I

.field public mResult:I

.field public mServiceClass:I

.field public mServiceType:I

.field public mSsInfo:[I

.field public mTeleserviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/ims/ImsSsData$1;

    invoke-direct {v0}, Lcom/android/ims/ImsSsData$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/ims/ImsSsData;->readFromParcel(Landroid/os/Parcel;)V

    .line 108
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mTeleserviceType:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mServiceClass:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsSsData;->mResult:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsSsData;->mSsInfo:[I

    .line 140
    invoke-virtual {p0}, Lcom/android/ims/ImsSsData;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/android/ims/ImsCallForwardInfo;

    iput-object v0, p0, Lcom/android/ims/ImsSsData;->mCfInfo:[Lcom/android/ims/ImsCallForwardInfo;

    .line 141
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeBarring()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 184
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 186
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    .line 187
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeCF()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 149
    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 151
    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTypeCW()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeClip()Z
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeClir()Z
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeColp()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeColr()Z
    .locals 2

    .prologue
    .line 167
    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeIcb()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 179
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    .line 180
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeInterrogation()Z
    .locals 2

    .prologue
    .line 191
    iget v0, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeUnConditional()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ImsSsData] ServiceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    const-string/jumbo v1, " RequestType: "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    const-string/jumbo v1, " TeleserviceType: "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    iget v1, p0, Lcom/android/ims/ImsSsData;->mTeleserviceType:I

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string/jumbo v1, " ServiceClass: "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    iget v1, p0, Lcom/android/ims/ImsSsData;->mServiceClass:I

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string/jumbo v1, " Result: "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    iget v1, p0, Lcom/android/ims/ImsSsData;->mResult:I

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 124
    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/android/ims/ImsSsData;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/android/ims/ImsSsData;->mTeleserviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/android/ims/ImsSsData;->mServiceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v0, p0, Lcom/android/ims/ImsSsData;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/android/ims/ImsSsData;->mSsInfo:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 130
    iget-object v0, p0, Lcom/android/ims/ImsSsData;->mCfInfo:[Lcom/android/ims/ImsCallForwardInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 131
    return-void
.end method
