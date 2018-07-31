.class public abstract Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;
.super Lcom/android/settings/AppListPreference;
.source "BaseDefaultPreference.java"


# instance fields
.field protected mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppNameInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

.field protected mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->loadDefaultApps()V

    .line 37
    return-void
.end method

.method private loadDefaultApps()V
    .locals 7

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    .line 41
    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    .line 42
    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v5, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mAppInfoList:Ljava/util/List;

    .line 43
    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v5, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mAppInfoList:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mAppNameInfoList:Ljava/util/List;

    .line 44
    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mAppNameInfoList:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mAppNameInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 45
    .local v0, "packageNames":[Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v5, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "pmDefaultAppPkg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    invoke-static {v4}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeInt(Ljava/lang/String;)I

    move-result v3

    .line 52
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 66
    return-void

    .line 54
    :pswitch_0
    const v2, 0x7f0f0414

    .line 68
    .local v2, "resId":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->setSummary(I)V

    .line 70
    .end local v2    # "resId":I
    .end local v3    # "type":I
    :cond_0
    return-void

    .line 57
    .restart local v3    # "type":I
    :pswitch_1
    const v2, 0x7f0f0415

    .line 58
    .restart local v2    # "resId":I
    goto :goto_0

    .line 60
    .end local v2    # "resId":I
    :pswitch_2
    const v2, 0x7f0f0416

    .line 61
    .restart local v2    # "resId":I
    goto :goto_0

    .line 63
    .end local v2    # "resId":I
    :pswitch_3
    const v2, 0x7f0f0417

    .line 64
    .restart local v2    # "resId":I
    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract getType()Ljava/lang/String;
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "defaultAppPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "pmDefaultAppPkg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    const-string/jumbo v2, "BaseDefaultPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persistString value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", local defaultAppPackageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",pmDefaultAppPkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mAppInfoList:Ljava/util/List;

    iget-object v5, p0, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->mAppNameInfoList:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/defaultapp/view/BaseDefaultPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v2, 0x1

    return v2
.end method
