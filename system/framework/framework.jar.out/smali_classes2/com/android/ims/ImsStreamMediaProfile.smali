.class public Lcom/android/ims/ImsStreamMediaProfile;
.super Ljava/lang/Object;
.source "ImsStreamMediaProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsStreamMediaProfile$1;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_AMR:I = 0x1

.field public static final AUDIO_QUALITY_AMR_WB:I = 0x2

.field public static final AUDIO_QUALITY_EVRC:I = 0x4

.field public static final AUDIO_QUALITY_EVRC_B:I = 0x5

.field public static final AUDIO_QUALITY_EVRC_NW:I = 0x7

.field public static final AUDIO_QUALITY_EVRC_WB:I = 0x6

.field public static final AUDIO_QUALITY_EVS_FB:I = 0x14

.field public static final AUDIO_QUALITY_EVS_NB:I = 0x11

.field public static final AUDIO_QUALITY_EVS_SWB:I = 0x13

.field public static final AUDIO_QUALITY_EVS_WB:I = 0x12

.field public static final AUDIO_QUALITY_G711A:I = 0xd

.field public static final AUDIO_QUALITY_G711AB:I = 0xf

.field public static final AUDIO_QUALITY_G711U:I = 0xb

.field public static final AUDIO_QUALITY_G722:I = 0xe

.field public static final AUDIO_QUALITY_G723:I = 0xc

.field public static final AUDIO_QUALITY_G729:I = 0x10

.field public static final AUDIO_QUALITY_GSM_EFR:I = 0x8

.field public static final AUDIO_QUALITY_GSM_FR:I = 0x9

.field public static final AUDIO_QUALITY_GSM_HR:I = 0xa

.field public static final AUDIO_QUALITY_NONE:I = 0x0

.field public static final AUDIO_QUALITY_QCELP13K:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsStreamMediaProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTION_INACTIVE:I = 0x0

.field public static final DIRECTION_INVALID:I = -0x1

.field public static final DIRECTION_RECEIVE:I = 0x1

.field public static final DIRECTION_SEND:I = 0x2

.field public static final DIRECTION_SEND_RECEIVE:I = 0x3

.field public static final RTT_MODE_DISABLED:I = 0x0

.field public static final RTT_MODE_FULL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsStreamMediaProfile"

.field public static final VIDEO_QUALITY_NONE:I = 0x0

.field public static final VIDEO_QUALITY_QCIF:I = 0x1

.field public static final VIDEO_QUALITY_QVGA_LANDSCAPE:I = 0x2

.field public static final VIDEO_QUALITY_QVGA_PORTRAIT:I = 0x4

.field public static final VIDEO_QUALITY_VGA_LANDSCAPE:I = 0x8

.field public static final VIDEO_QUALITY_VGA_PORTRAIT:I = 0x10


# instance fields
.field public mAudioDirection:I

.field public mAudioQuality:I

.field public mRttMode:I

.field public mVideoDirection:I

.field public mVideoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile$1;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile$1;-><init>()V

    .line 153
    sput-object v0, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 97
    iput v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 99
    iput v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 100
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rttMode"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 112
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "audioQuality"    # I
    .param p2, "audioDirection"    # I
    .param p3, "videoQuality"    # I
    .param p4, "videoDirection"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 105
    iput p2, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 106
    iput p3, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 107
    iput p4, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0, p1}, Lcom/android/ims/ImsStreamMediaProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 151
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 115
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 116
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 117
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 118
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 119
    iget v0, p1, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    iput v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 120
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public isRttCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 171
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRttMode(I)V
    .locals 0
    .param p1, "rttMode"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ audioQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string/jumbo v1, ", audioDirection="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string/jumbo v1, ", videoQuality="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const-string/jumbo v1, ", videoDirection="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string/jumbo v1, ", rttMode="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    iget v1, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string/jumbo v1, " }"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/android/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method
