.class public Lcom/oneplus/threekey/ThreeKeyHw;
.super Ljava/lang/Object;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;,
        Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;,
        Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
    }
.end annotation


# static fields
.field private static final BIT_DO_NOT_DISTURB:I = 0x2

.field private static final BIT_MUTE:I = 0x1

.field private static final BIT_NORMAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ThreeKeyHw"

.field private static ThreeKeyModeState:I = 0x0

.field private static final UDEV_NAME_THREEKEY:Ljava/lang/String; = "tri-state-key"

.field private static final UDEV_NAME_THREEKEY_SOC:Ljava/lang/String; = "soc:tri_state_key"

.field private static final debug:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

.field private mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;


# direct methods
.method static synthetic -get0(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyHw;

    .prologue
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/threekey/ThreeKeyHw;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyHw;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyHw;->sendBroadcastForZenModeChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/threekey/ThreeKeyHw;->ThreeKeyModeState:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;-><init>(Lcom/oneplus/threekey/ThreeKeyHw;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    .line 31
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyHw;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    .line 35
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private sendBroadcastForZenModeChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "intentZenMode":Landroid/content/Intent;
    const-string/jumbo v1, "switch_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 251
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 39
    iget-object v8, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v8}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->checkSwitchExists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 40
    new-instance v8, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;

    invoke-direct {v8}, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;-><init>()V

    throw v8

    .line 43
    :cond_0
    const/4 v7, -0x1

    .line 45
    .local v7, "threeKeyState":I
    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportSocThreeKey()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 47
    const/4 v5, 0x0

    .line 48
    .local v5, "j":I
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_1

    .line 49
    const/4 v1, -0x1

    .line 50
    .local v1, "curState":I
    const/16 v8, 0x400

    :try_start_0
    new-array v0, v8, [C

    .line 51
    .local v0, "buffer":[C
    new-instance v4, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v9}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "cable."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 53
    .local v6, "len":I
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 54
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    add-int/lit8 v7, v5, 0x1

    .line 60
    .end local v0    # "buffer":[C
    .end local v1    # "curState":I
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    :cond_1
    const/4 v8, 0x1

    if-ne v8, v7, :cond_4

    .line 61
    const/4 v7, 0x3

    .line 66
    :cond_2
    :goto_1
    const-string/jumbo v8, "ThreeKeyHw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "path:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v10}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "cable."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/state\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v5    # "j":I
    :goto_2
    return v7

    .line 48
    .restart local v0    # "buffer":[C
    .restart local v1    # "curState":I
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v5    # "j":I
    .restart local v6    # "len":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 62
    .end local v0    # "buffer":[C
    .end local v1    # "curState":I
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    :cond_4
    if-ne v10, v7, :cond_2

    .line 63
    const/4 v7, 0x1

    goto :goto_1

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ThreeKeyHw"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 67
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "ThreeKeyHw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v10}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 69
    const-string/jumbo v10, " not found while attempting to determine initial switch state"

    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 75
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "j":I
    :cond_5
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [C

    .line 76
    .restart local v0    # "buffer":[C
    new-instance v4, Ljava/io/FileReader;

    iget-object v8, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v8}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v4    # "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 78
    .restart local v6    # "len":I
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 79
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    goto :goto_2

    .line 80
    .end local v0    # "buffer":[C
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    :catch_2
    move-exception v3

    .line 83
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ThreeKeyHw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mThreeKeyUEventInfo:Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    invoke-virtual {v10}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 84
    const-string/jumbo v10, "not found while attempting to get switch state"

    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v8, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;

    invoke-direct {v8}, Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;-><init>()V

    throw v8
.end method

.method public init()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw;->mOemUEventObserver:Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->startMonitor()V

    .line 98
    return-void
.end method

.method public isSupportSocThreeKey()Z
    .locals 6

    .prologue
    const/16 v5, 0x29

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    const-string/jumbo v0, "ThreeKeyHw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportSocThreeKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-array v2, v4, [I

    aput v5, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-array v0, v4, [I

    aput v5, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method
