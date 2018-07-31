.class Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;
.super Landroid/os/UEventObserver;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OemUEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method constructor <init>(Lcom/oneplus/threekey/ThreeKeyHw;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/threekey/ThreeKeyHw;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 194
    const-string/jumbo v11, "ThreeKeyHw"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "OEM UEVENT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    const-string/jumbo v11, "DEVPATH"

    invoke-virtual {p1, v11}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "devPath":Ljava/lang/String;
    const-string/jumbo v11, "SWITCH_NAME"

    invoke-virtual {p1, v11}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .line 201
    .local v10, "state":I
    iget-object v11, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v11}, Lcom/oneplus/threekey/ThreeKeyHw;->-get0(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "soc:tri_state_key"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-eqz v11, :cond_4

    .line 203
    const/4 v7, 0x0

    .line 204
    .local v7, "j":I
    const/4 v7, 0x0

    :goto_0
    const/4 v11, 0x3

    if-ge v7, v11, :cond_0

    .line 205
    const/4 v1, -0x1

    .line 206
    .local v1, "curState":I
    const/16 v11, 0x400

    :try_start_1
    new-array v0, v11, [C

    .line 207
    .local v0, "buffer":[C
    new-instance v6, Ljava/io/FileReader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v12}, Lcom/oneplus/threekey/ThreeKeyHw;->-get0(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "cable."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/state"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 208
    .local v6, "file":Ljava/io/FileReader;
    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v6, v0, v11, v12}, Ljava/io/FileReader;->read([CII)I

    move-result v8

    .line 209
    .local v8, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 210
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    if-nez v1, :cond_2

    .line 212
    add-int/lit8 v10, v7, 0x1

    .line 216
    .end local v0    # "buffer":[C
    .end local v1    # "curState":I
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v8    # "len":I
    :cond_0
    const/4 v11, 0x1

    if-ne v11, v10, :cond_3

    .line 217
    const/4 v10, 0x3

    .line 222
    :cond_1
    :goto_1
    const-string/jumbo v11, "ThreeKeyHw"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "path:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v13}, Lcom/oneplus/threekey/ThreeKeyHw;->-get0(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "cable."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/state\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "state:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    .end local v7    # "j":I
    :goto_2
    :try_start_2
    iget-object v11, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v11, v10}, Lcom/oneplus/threekey/ThreeKeyHw;->-wrap0(Lcom/oneplus/threekey/ThreeKeyHw;I)V

    .line 236
    .end local v2    # "devPath":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "state":I
    :goto_3
    return-void

    .line 204
    .restart local v0    # "buffer":[C
    .restart local v1    # "curState":I
    .restart local v2    # "devPath":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "j":I
    .restart local v8    # "len":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "state":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 218
    .end local v0    # "buffer":[C
    .end local v1    # "curState":I
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v8    # "len":I
    :cond_3
    const/4 v11, 0x3

    if-ne v11, v10, :cond_1

    .line 219
    const/4 v10, 0x1

    goto :goto_1

    .line 226
    :catch_0
    move-exception v4

    .line 227
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "ThreeKeyHw"

    const-string/jumbo v12, ""

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 233
    .end local v2    # "devPath":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "j":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "state":I
    :catch_1
    move-exception v5

    .line 234
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "ThreeKeyHw"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Could not parse switch state from event "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 223
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "devPath":Ljava/lang/String;
    .restart local v7    # "j":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "state":I
    :catch_2
    move-exception v3

    .line 224
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string/jumbo v11, "ThreeKeyHw"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v13}, Lcom/oneplus/threekey/ThreeKeyHw;->-get0(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 225
    const-string/jumbo v13, " not found while attempting to determine initial switch state"

    .line 224
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 230
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "j":I
    :cond_4
    const-string/jumbo v11, "SWITCH_STATE"

    invoke-virtual {p1, v11}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v10

    goto :goto_2
.end method

.method startMonitor()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DEVPATH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-static {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->-get0(Lcom/oneplus/threekey/ThreeKeyHw;)Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/threekey/ThreeKeyHw$OemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 189
    return-void
.end method
