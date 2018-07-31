.class public Lcom/android/settings/notification/ChannelImportanceSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "ChannelImportanceSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ChannelImportanceSettings$1;
    }
.end annotation


# static fields
.field private static final KEY_IMPORTANCE_DEFAULT:Ljava/lang/String; = "importance_default"

.field private static final KEY_IMPORTANCE_HIGH:Ljava/lang/String; = "importance_high"

.field private static final KEY_IMPORTANCE_LOW:Ljava/lang/String; = "importance_low"

.field private static final KEY_IMPORTANCE_MIN:Ljava/lang/String; = "importance_min"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "NotiImportance"


# instance fields
.field mImportances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/ui/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/android/settings/notification/ChannelImportanceSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ChannelImportanceSettings$1;-><init>()V

    .line 149
    sput-object v0, Lcom/android/settings/notification/ChannelImportanceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mImportances:Ljava/util/List;

    .line 42
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 82
    .local v3, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 85
    :cond_0
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 89
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 90
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    instance-of v4, v1, Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 91
    check-cast v2, Lcom/android/settings/ui/RadioButtonPreference;

    .line 92
    .local v2, "radioPref":Lcom/android/settings/ui/RadioButtonPreference;
    invoke-virtual {v2, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 93
    iget-object v4, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mImportances:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "radioPref":Lcom/android/settings/ui/RadioButtonPreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 113
    :goto_1
    return-object v3

    .line 99
    :pswitch_0
    const-string/jumbo v4, "importance_min"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :pswitch_1
    const-string/jumbo v4, "importance_low"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :pswitch_2
    const-string/jumbo v4, "importance_default"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :pswitch_3
    const-string/jumbo v4, "importance_high"

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateRadioButtons(Ljava/lang/String;)V
    .locals 3
    .param p1, "selectionKey"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mImportances:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    .line 118
    .local v0, "pref":Lcom/android/settings/ui/RadioButtonPreference;
    invoke-virtual {v0}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 121
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 124
    .end local v0    # "pref":Lcom/android/settings/ui/RadioButtonPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x3ad

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onPause()V

    .line 78
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4
    .param p1, "clicked"    # Lcom/android/settings/ui/RadioButtonPreference;

    .prologue
    const/4 v2, 0x4

    .line 128
    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "importance_high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/ui/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ChannelImportanceSettings;->updateRadioButtons(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v3, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 145
    return-void

    .line 128
    :cond_1
    const-string/jumbo v1, "importance_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0

    .line 128
    :cond_2
    const-string/jumbo v1, "importance_low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0

    .line 128
    :cond_3
    const-string/jumbo v1, "importance_min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 61
    iget v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mUid:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const-string/jumbo v0, "NotiImportance"

    const-string/jumbo v1, "Missing package or uid or packageinfo or channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->finish()V

    .line 64
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ChannelImportanceSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/ChannelImportanceSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 67
    return-void
.end method

.method setupBadge()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method updateDependents(Z)V
    .locals 0
    .param p1, "banned"    # Z

    .prologue
    .line 73
    return-void
.end method
