.class final Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
.super Ljava/lang/Object;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private mDevIndex:I

.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method public constructor <init>(Lcom/oneplus/threekey/ThreeKeyHw;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/threekey/ThreeKeyHw;

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportSocThreeKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "soc:tri_state_key"

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    .line 112
    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    .line 113
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevIndex()V

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string/jumbo v0, "tri-state-key"

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    .line 116
    iput v1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    .line 117
    iput v1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    .line 118
    iput v1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    .line 119
    iput v1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    goto :goto_0
.end method

.method private getDevIndex()V
    .locals 13

    .prologue
    const/16 v8, 0x400

    const/4 v12, 0x0

    .line 124
    const/4 v6, 0x0

    .line 125
    .local v6, "index":I
    new-array v0, v8, [C

    .line 129
    .local v0, "buffer":[C
    :goto_0
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 130
    const-string/jumbo v9, "/sys/class/switch/extcon%d/name"

    .line 129
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    .line 129
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "devPath":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 135
    .local v5, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 136
    .local v7, "len":I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 138
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "devName":Ljava/lang/String;
    iget-object v8, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    iput v6, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "devName":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    :goto_1
    return-void

    .line 143
    .restart local v1    # "devName":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "devName":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ThreeKeyHw"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 145
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    goto :goto_1
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 159
    const-string/jumbo v1, "/devices/platform/soc/%s/extcon/extcon%d"

    .line 158
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 160
    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 158
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 163
    const-string/jumbo v1, "/devices/virtual/switch/%s"

    .line 162
    new-array v2, v5, [Ljava/lang/Object;

    .line 164
    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 162
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 169
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 171
    const-string/jumbo v1, "/sys/class/switch/extcon%d/"

    .line 170
    new-array v2, v2, [Ljava/lang/Object;

    .line 172
    iget v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 170
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 175
    const-string/jumbo v1, "/sys/class/switch/%s/state"

    .line 174
    new-array v2, v2, [Ljava/lang/Object;

    .line 176
    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 174
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
