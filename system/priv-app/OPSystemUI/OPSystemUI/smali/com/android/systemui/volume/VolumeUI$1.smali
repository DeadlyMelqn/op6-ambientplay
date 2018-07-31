.class Lcom/android/systemui/volume/VolumeUI$1;
.super Landroid/database/ContentObserver;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    .line 133
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v7, 0x0

    .line 137
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "device_provisioned"

    .line 136
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    .line 138
    .local v1, "provisioned":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeUI;->-get0(Lcom/android/systemui/volume/VolumeUI;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "threekey"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oem/os/ThreeKeyManager;

    .line 140
    .local v2, "threeKeyManager":Lcom/oem/os/ThreeKeyManager;
    const/4 v3, 0x0

    .line 141
    .local v3, "threeKeyStatus":I
    if-eqz v2, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {v2}, Lcom/oem/os/ThreeKeyManager;->getThreeKeyStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 149
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "zen_mode"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 151
    .local v4, "zenMode":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeUI;->-get2(Lcom/android/systemui/volume/VolumeUI;)I

    move-result v6

    invoke-static {v4, v3, v6}, Lcom/android/systemui/volume/Util;->getCorrectZenMode(III)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/volume/VolumeUI;->-wrap0(Lcom/android/systemui/volume/VolumeUI;I)I

    move-result v4

    .line 152
    const-string/jumbo v5, "VolumeUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mZenModeObserver:zenMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", threeKeyStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mLastThreeKeyStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v7}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "correct_zen_mode_aod"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    if-eq v4, v3, :cond_1

    .line 159
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5, v3}, Lcom/android/systemui/volume/VolumeUI;->-set0(Lcom/android/systemui/volume/VolumeUI;I)I

    .line 162
    :cond_1
    if-ne v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 163
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeUI;->-get3(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeDialogComponent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->showVolumeDialogForTriKey()V

    .line 164
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5, v3}, Lcom/android/systemui/volume/VolumeUI;->-set0(Lcom/android/systemui/volume/VolumeUI;I)I

    .line 167
    .end local v2    # "threeKeyManager":Lcom/oem/os/ThreeKeyManager;
    .end local v3    # "threeKeyStatus":I
    .end local v4    # "zenMode":I
    :cond_2
    return-void

    .line 136
    .end local v1    # "provisioned":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "provisioned":Z
    goto/16 :goto_0

    .line 144
    .restart local v2    # "threeKeyManager":Lcom/oem/os/ThreeKeyManager;
    .restart local v3    # "threeKeyStatus":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "VolumeUI"

    const-string/jumbo v6, "Exception occurs, Three Key Service may not ready"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    return-void
.end method
