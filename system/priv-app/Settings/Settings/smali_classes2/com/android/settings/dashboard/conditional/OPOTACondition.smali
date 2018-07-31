.class public Lcom/android/settings/dashboard/conditional/OPOTACondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "OPOTACondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/OPOTACondition$Receiver;
    }
.end annotation


# static fields
.field private static final BOOT_BROADCAST:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"

.field private static final OEM_BOOT_BROADCAST:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field private static final STRONG_PROMPT_OTA:Ljava/lang/String; = "strong_prompt_ota"

.field private static final TAG:Ljava/lang/String; = "OPOTACondition"


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/dashboard/conditional/OPOTACondition;->activeRefresh()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 29
    return-void
.end method

.method private static activeRefresh()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 39
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 40
    const-string/jumbo v4, "has_new_version_to_update"

    .line 38
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 38
    if-ne v3, v4, :cond_0

    .line 40
    const/4 v2, 0x1

    .line 42
    .local v2, "systemHasUpdate":Z
    :goto_0
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 43
    const-string/jumbo v4, "strong_prompt_ota"

    .line 41
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 43
    const/16 v4, 0x64

    .line 41
    if-ne v3, v4, :cond_1

    .line 43
    const/4 v1, 0x1

    .line 44
    .local v1, "strongPromptOTA":Z
    :goto_1
    const-string/jumbo v3, "OPOTACondition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "systemHasUpdate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    strongPromptOTA = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v2, :cond_2

    move v0, v1

    .line 46
    :goto_2
    return v0

    .line 40
    .end local v1    # "strongPromptOTA":Z
    .end local v2    # "systemHasUpdate":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "systemHasUpdate":Z
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "strongPromptOTA":Z
    goto :goto_1

    .line 45
    :cond_2
    const/4 v0, 0x0

    .local v0, "active":Z
    goto :goto_2
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    const v2, 0x7f0f1101

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    const v1, 0x7f02026d

    .line 87
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x270f

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f042d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f042d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 77
    return-void
.end method

.method public onPrimaryClick()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/OPOTACondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "oneplus.intent.action.CheckUpdate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public refreshState()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/settings/dashboard/conditional/OPOTACondition;->activeRefresh()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/OPOTACondition;->setActive(Z)V

    .line 35
    return-void
.end method
