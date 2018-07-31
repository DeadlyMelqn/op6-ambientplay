.class public Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbEtwsInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE:I = 0x0

.field public static final ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I = 0x2

.field public static final ETWS_WARNING_TYPE_OTHER_EMERGENCY:I = 0x4

.field public static final ETWS_WARNING_TYPE_TEST_MESSAGE:I = 0x3

.field public static final ETWS_WARNING_TYPE_TSUNAMI:I = 0x1

.field public static final ETWS_WARNING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final mActivatePopup:Z

.field private final mEmergencyUserAlert:Z

.field private final mPrimary:Z

.field private final mWarningSecurityInformation:[B

.field private final mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>(IZZZ[B)V
    .locals 0
    .param p1, "warningType"    # I
    .param p2, "emergencyUserAlert"    # Z
    .param p3, "activatePopup"    # Z
    .param p4, "primary"    # Z
    .param p5, "warningSecurityInformation"    # [B

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 78
    iput-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 79
    iput-boolean p3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 80
    iput-boolean p4, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 81
    iput-object p5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    .line 91
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1

    :cond_2
    move v1, v2

    .line 89
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-ne p1, p0, :cond_0

    .line 206
    return v1

    .line 208
    :cond_0
    if-eqz p1, :cond_1

    instance-of v3, p1, Landroid/telephony/SmsCbEtwsInfo;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 209
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 211
    check-cast v0, Landroid/telephony/SmsCbEtwsInfo;

    .line 212
    .local v0, "other":Landroid/telephony/SmsCbEtwsInfo;
    iget v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    iget v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    if-ne v3, v4, :cond_4

    .line 213
    iget-boolean v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    iget-boolean v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-ne v3, v4, :cond_4

    .line 214
    iget-boolean v3, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    iget-boolean v4, v0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-ne v3, v4, :cond_3

    .line 212
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 214
    goto :goto_0

    :cond_4
    move v1, v2

    .line 212
    goto :goto_0
.end method

.method public getPrimaryNotificationSignature()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x32

    .line 189
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    if-ge v0, v2, :cond_1

    .line 190
    :cond_0
    return-object v1

    .line 192
    :cond_1
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v1, 0x7

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryNotificationTimestamp()J
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 146
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v9, v9

    const/4 v10, 0x7

    if-ge v9, v10, :cond_1

    .line 147
    :cond_0
    const-wide/16 v10, 0x0

    return-wide v10

    .line 150
    :cond_1
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    aget-byte v9, v9, v11

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 151
    .local v8, "year":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    aget-byte v9, v9, v12

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 152
    .local v3, "month":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 153
    .local v0, "day":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 154
    .local v1, "hour":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x4

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 155
    .local v2, "minute":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 162
    .local v4, "second":I
    iget-object v9, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v10, 0x6

    aget-byte v7, v9, v10

    .line 165
    .local v7, "tzByte":B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 167
    .local v6, "timezoneOffset":I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_2

    .line 169
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string/jumbo v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 172
    .local v5, "time":Landroid/text/format/Time;
    add-int/lit16 v9, v8, 0x7d0

    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 173
    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 174
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 175
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 176
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 177
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 180
    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    mul-int/lit8 v9, v6, 0xf

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v12, v9

    sub-long/2addr v10, v12

    return-wide v10

    .line 167
    .end local v5    # "time":Landroid/text/format/Time;
    :cond_2
    neg-int v6, v6

    goto :goto_0
.end method

.method public getWarningType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 197
    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    mul-int/lit8 v0, v1, 0x4

    .line 198
    .local v0, "hash":I
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x7

    :goto_0
    add-int/2addr v0, v1

    .line 199
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xf

    :goto_1
    add-int/2addr v0, v1

    .line 200
    return v0

    .line 198
    :cond_0
    mul-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 199
    :cond_1
    mul-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0xd

    goto :goto_1
.end method

.method public isEmergencyUserAlert()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    return v0
.end method

.method public isPopupAlert()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsCbEtwsInfo{warningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", emergencyUserAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const-string/jumbo v1, ", activatePopup="

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const/16 v1, 0x7d

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mEmergencyUserAlert:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mActivatePopup:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mPrimary:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v0, v2

    .line 103
    goto :goto_1

    :cond_2
    move v1, v2

    .line 104
    goto :goto_2
.end method
