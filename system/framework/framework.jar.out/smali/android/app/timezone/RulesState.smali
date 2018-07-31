.class public final Landroid/app/timezone/RulesState;
.super Ljava/lang/Object;
.source "RulesState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesState$1;
    }
.end annotation


# static fields
.field private static final BYTE_FALSE:B = 0x0t

.field private static final BYTE_TRUE:B = 0x1t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/timezone/RulesState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISTRO_STATUS_INSTALLED:I = 0x2

.field public static final DISTRO_STATUS_NONE:I = 0x1

.field public static final DISTRO_STATUS_UNKNOWN:I = 0x0

.field public static final STAGED_OPERATION_INSTALL:I = 0x3

.field public static final STAGED_OPERATION_NONE:I = 0x1

.field public static final STAGED_OPERATION_UNINSTALL:I = 0x2

.field public static final STAGED_OPERATION_UNKNOWN:I


# instance fields
.field private final mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

.field private final mDistroStatus:I

.field private final mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

.field private final mOperationInProgress:Z

.field private final mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

.field private final mStagedOperationType:I

.field private final mSystemRulesVersion:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/app/timezone/RulesState;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Landroid/app/timezone/RulesState$1;

    invoke-direct {v0}, Landroid/app/timezone/RulesState$1;-><init>()V

    .line 186
    sput-object v0, Landroid/app/timezone/RulesState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V
    .locals 4
    .param p1, "systemRulesVersion"    # Ljava/lang/String;
    .param p2, "distroFormatVersionSupported"    # Landroid/app/timezone/DistroFormatVersion;
    .param p3, "operationInProgress"    # Z
    .param p4, "stagedOperationType"    # I
    .param p5, "stagedDistroRulesVersion"    # Landroid/app/timezone/DistroRulesVersion;
    .param p6, "distroStatus"    # I
    .param p7, "installedDistroRulesVersion"    # Landroid/app/timezone/DistroRulesVersion;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string/jumbo v0, "systemRulesVersion"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateRulesVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "distroFormatVersionSupported"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroFormatVersion;

    .line 114
    iput-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    .line 116
    iput-boolean p3, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    .line 118
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    const-string/jumbo v1, "stagedOperationType != STAGED_OPERATION_UNKNOWN"

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-static {p4}, Landroid/app/timezone/RulesState;->validateStagedOperation(I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    .line 124
    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 125
    :goto_0
    const-string/jumbo v3, "stagedDistroRulesVersion"

    .line 123
    invoke-static {v0, v3, p5}, Landroid/app/timezone/Utils;->validateConditionalNull(ZLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroRulesVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 127
    if-eqz p3, :cond_2

    if-eqz p6, :cond_2

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "distroInstalled != DISTRO_STATUS_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 124
    goto :goto_0

    .line 130
    :cond_2
    invoke-static {p6}, Landroid/app/timezone/RulesState;->validateDistroStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    .line 132
    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 133
    :goto_1
    const-string/jumbo v0, "installedDistroRulesVersion"

    .line 131
    invoke-static {v1, v0, p7}, Landroid/app/timezone/Utils;->validateConditionalNull(ZLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroRulesVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 134
    return-void

    :cond_3
    move v1, v2

    .line 132
    goto :goto_1
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;
    .locals 10
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    .line 198
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "systemRulesVersion":Ljava/lang/String;
    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/timezone/DistroFormatVersion;

    .line 200
    .local v2, "distroFormatVersionSupported":Landroid/app/timezone/DistroFormatVersion;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    const/4 v3, 0x1

    .line 201
    .local v3, "operationInProgress":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 202
    .local v4, "distroStagedState":I
    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/timezone/DistroRulesVersion;

    .line 203
    .local v5, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .line 204
    .local v6, "installedDistroStatus":I
    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/timezone/DistroRulesVersion;

    .line 205
    .local v7, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    new-instance v0, Landroid/app/timezone/RulesState;

    invoke-direct/range {v0 .. v7}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V

    return-object v0

    .line 200
    .end local v3    # "operationInProgress":Z
    .end local v4    # "distroStagedState":I
    .end local v5    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v6    # "installedDistroStatus":I
    .end local v7    # "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "operationInProgress":Z
    goto :goto_0
.end method

.method private static validateDistroStatus(I)I
    .locals 3
    .param p0, "distroStatus"    # I

    .prologue
    .line 298
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown distro status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    return p0
.end method

.method private static validateStagedOperation(I)I
    .locals 3
    .param p0, "stagedOperationType"    # I

    .prologue
    .line 290
    if-ltz p0, :cond_0

    .line 291
    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown operation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    if-ne p0, p1, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/timezone/RulesState;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 232
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 235
    check-cast v0, Landroid/app/timezone/RulesState;

    .line 237
    .local v0, "that":Landroid/app/timezone/RulesState;
    iget-boolean v3, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    iget-boolean v4, v0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    if-eq v3, v4, :cond_3

    .line 238
    return v2

    .line 240
    :cond_3
    iget v3, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    iget v4, v0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    if-eq v3, v4, :cond_4

    .line 241
    return v2

    .line 243
    :cond_4
    iget v3, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    iget v4, v0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    if-eq v3, v4, :cond_5

    .line 244
    return v2

    .line 246
    :cond_5
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 247
    return v2

    .line 249
    :cond_6
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    iget-object v4, v0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v3, v4}, Landroid/app/timezone/DistroFormatVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 250
    return v2

    .line 252
    :cond_7
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 253
    iget-object v4, v0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 252
    invoke-virtual {v3, v4}, Landroid/app/timezone/DistroRulesVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    .line 254
    :cond_8
    return v2

    .line 253
    :cond_9
    iget-object v3, v0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-nez v3, :cond_8

    .line 256
    :cond_a
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_c

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 257
    iget-object v2, v0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 256
    invoke-virtual {v1, v2}, Landroid/app/timezone/DistroRulesVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_b
    :goto_0
    return v1

    .line 258
    :cond_c
    iget-object v3, v0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0
.end method

.method public getDistroStatus()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    return v0
.end method

.method public getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    return-object v0
.end method

.method public getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    return-object v0
.end method

.method public getStagedOperationType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    return v0
.end method

.method public getSystemRulesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v1, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 264
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v3}, Landroid/app/timezone/DistroFormatVersion;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 265
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int v0, v3, v1

    .line 266
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    add-int v0, v1, v3

    .line 267
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v1}, Landroid/app/timezone/DistroRulesVersion;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 270
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    add-int v0, v1, v3

    .line 271
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v2}, Landroid/app/timezone/DistroRulesVersion;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 273
    return v0

    :cond_1
    move v1, v2

    .line 265
    goto :goto_0

    :cond_2
    move v1, v2

    .line 269
    goto :goto_1
.end method

.method public isDistroFormatVersionSupported(Landroid/app/timezone/DistroFormatVersion;)Z
    .locals 1
    .param p1, "distroFormatVersion"    # Landroid/app/timezone/DistroFormatVersion;

    .prologue
    .line 172
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v0, p1}, Landroid/app/timezone/DistroFormatVersion;->supports(Landroid/app/timezone/DistroFormatVersion;)Z

    move-result v0

    return v0
.end method

.method public isOperationInProgress()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    return v0
.end method

.method public isSystemVersionNewerThan(Landroid/app/timezone/DistroRulesVersion;)Z
    .locals 3
    .param p1, "distroRulesVersion"    # Landroid/app/timezone/DistroRulesVersion;

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/timezone/DistroRulesVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RulesState{mSystemRulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    iget-object v1, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    const/16 v1, 0x27

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    const-string/jumbo v1, ", mDistroFormatVersionSupported="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    iget-object v1, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    const-string/jumbo v1, ", mOperationInProgress="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    iget-boolean v1, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    const-string/jumbo v1, ", mStagedOperationType="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    iget v1, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string/jumbo v1, ", mStagedDistroRulesVersion="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    iget-object v1, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    const-string/jumbo v1, ", mDistroStatus="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 284
    iget v1, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    const-string/jumbo v1, ", mInstalledDistroRulesVersion="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    iget-object v1, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    const/16 v1, 0x7d

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 219
    iget-boolean v0, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 220
    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 221
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 222
    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 223
    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    return-void

    :cond_0
    move v0, v1

    .line 219
    goto :goto_0
.end method
