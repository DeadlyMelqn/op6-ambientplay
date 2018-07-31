.class public Lcom/android/settings/notification/AppNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AppNotificationSettings$1;,
        Lcom/android/settings/notification/AppNotificationSettings$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static KEY_DELETED:Ljava/lang/String; = null

.field private static KEY_GENERAL_CATEGORY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AppNotificationSettings"


# instance fields
.field private mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedChannels:Lcom/android/settings/widget/FooterPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/AppNotificationSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/AppNotificationSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/AppNotificationSettings;
    .param p1, "-value"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/notification/AppNotificationSettings;
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/AppNotificationSettings;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/AppNotificationSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateChannelList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    .line 65
    const-string/jumbo v0, "categories"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "deleted"

    sput-object v0, Lcom/android/settings/notification/AppNotificationSettings;->KEY_DELETED:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    .line 361
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    .line 360
    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    .line 373
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    .line 372
    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    .line 61
    return-void
.end method

.method private addHeaderPref()V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v4, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 149
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    move-object v0, p0

    .line 148
    invoke-static/range {v0 .. v5}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 150
    return-void
.end method

.method private getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;
    .locals 2
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1227

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f90

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1222

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1225

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1226

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 351
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1228

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
    .end sparse-switch
.end method

.method private populateChannelList()V
    .locals 17

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 156
    const-string/jumbo v12, "AppNotificationSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Notification channel group posted twice to settings - old size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 156
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 157
    const-string/jumbo v14, ", new size "

    .line 156
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 156
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/PreferenceCategory;

    .line 159
    .local v10, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 162
    .end local v10    # "p":Landroid/support/v7/preference/Preference;
    .end local v11    # "p$iterator":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 163
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v13, "zhuyang--mChannelGroupList--1"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    new-instance v8, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 165
    .local v8, "groupCategory":Landroid/support/v7/preference/PreferenceCategory;
    const v12, 0x7f0f121c

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 166
    sget-object v12, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v5, v12}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 171
    .local v5, "empty":Landroid/support/v7/preference/Preference;
    const v12, 0x7f0f121f

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 172
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 173
    invoke-virtual {v8, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 213
    .end local v5    # "empty":Landroid/support/v7/preference/Preference;
    .end local v8    # "groupCategory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v12, v12, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/notification/AppNotificationSettings;->updateDependents(Z)V

    .line 214
    return-void

    .line 175
    :cond_2
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v13, "zhuyang--mChannelGroupList--2"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "group$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 177
    .local v6, "group":Landroid/app/NotificationChannelGroup;
    new-instance v8, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v8    # "groupCategory":Landroid/support/v7/preference/PreferenceCategory;
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    .line 180
    const v12, 0x7f0f121e

    .line 179
    :goto_2
    invoke-virtual {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 182
    sget-object v12, Lcom/android/settings/notification/AppNotificationSettings;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 187
    :goto_3
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v3

    .line 192
    .local v3, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 194
    .local v1, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v1, :cond_3

    .line 195
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 196
    .local v2, "channel":Landroid/app/NotificationChannel;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/settings/notification/AppNotificationSettings;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;)V

    .line 194
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 181
    .end local v1    # "N":I
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .end local v3    # "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .end local v9    # "i":I
    :cond_4
    const v12, 0x7f0f121c

    goto :goto_2

    .line 184
    :cond_5
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v6}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    goto :goto_3

    .line 200
    .end local v6    # "group":Landroid/app/NotificationChannelGroup;
    .end local v8    # "groupCategory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v13, v13, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v14, v14, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v12, v13, v14}, Lcom/android/settings/notification/NotificationBackend;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v4

    .line 201
    .local v4, "deletedChannelCount":I
    if-lez v4, :cond_1

    .line 202
    new-instance v12, Lcom/android/settings/widget/FooterPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/widget/FooterPreference;->setSelectable(Z)V

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 205
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f130026

    .line 204
    invoke-virtual {v13, v15, v4, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/settings/widget/FooterPreference;->setEnabled(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    sget-object v13, Lcom/android/settings/notification/AppNotificationSettings;->KEY_DELETED:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/settings/widget/FooterPreference;->setKey(Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Lcom/android/settings/widget/FooterPreference;->setOrder(I)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method private populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;)V
    .locals 10
    .param p1, "groupCategory"    # Landroid/support/v7/preference/PreferenceCategory;
    .param p2, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 218
    new-instance v9, Lcom/android/settings/widget/MasterSwitchPreference;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    invoke-direct {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 220
    .local v9, "channelPref":Lcom/android/settings/widget/MasterSwitchPreference;
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/notification/AppNotificationSettings;->isChannelBlockable(ZLandroid/app/NotificationChannel;)Z

    move-result v0

    .line 220
    :goto_0
    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    .line 222
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 225
    invoke-direct {p0, p2}, Lcom/android/settings/notification/AppNotificationSettings;->getImportanceSummary(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v2, "channelArgs":Landroid/os/Bundle;
    const-string/jumbo v0, "uid"

    iget v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string/jumbo v0, "hideInfoButton"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    const-string/jumbo v0, "package"

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v0, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 232
    const-class v1, Lcom/android/settings/notification/ChannelNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getMetricsCategory()I

    move-result v7

    .line 233
    const v4, 0x7f0f121d

    move-object v5, v3

    .line 231
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v8

    .line 235
    .local v8, "channelIntent":Landroid/content/Intent;
    invoke-virtual {v9, v8}, Lcom/android/settings/widget/MasterSwitchPreference;->setIntent(Landroid/content/Intent;)V

    .line 238
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$4;

    invoke-direct {v0, p0, p2, v9}, Lcom/android/settings/notification/AppNotificationSettings$4;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannel;Lcom/android/settings/widget/MasterSwitchPreference;)V

    .line 237
    invoke-virtual {v9, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    invoke-virtual {p1, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 254
    return-void

    .end local v2    # "channelArgs":Landroid/os/Bundle;
    .end local v8    # "channelIntent":Landroid/content/Intent;
    :cond_0
    move v0, v6

    .line 220
    goto :goto_0

    :cond_1
    move v0, v6

    .line 224
    goto :goto_1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x48

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 79
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 81
    iget v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mUid:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    const-string/jumbo v0, "AppNotificationSettings"

    const-string/jumbo v1, "Missing package or uid or packageinfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->finish()V

    .line 84
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iput-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    .line 91
    iput-boolean v3, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    .line 94
    :cond_2
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->setupBlock()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->addHeaderPref()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 102
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string/jumbo v3, "miscellaneous"

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->populateDefaultChannelPrefs()V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->updateDependents(Z)V

    .line 129
    return-void

    .line 105
    :cond_3
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->setupBadge()V

    .line 108
    new-instance v0, Lcom/android/settings/notification/AppNotificationSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AppNotificationSettings$3;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AppNotificationSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method setupBadge()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 258
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->showBadge:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/AppNotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/AppNotificationSettings$5;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 278
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected setupBlock()V
    .locals 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 281
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 282
    const v2, 0x7f0401d5

    const/4 v3, 0x0

    .line 281
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "switchBarContainer":Landroid/view/View;
    const v1, 0x7f0a032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 284
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 285
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v2, Lcom/android/settings/notification/AppNotificationSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/AppNotificationSettings$6;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 303
    new-instance v1, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    .line 304
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const/16 v2, -0x1f4

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const-string/jumbo v2, "block"

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 308
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 312
    :cond_0
    const v1, 0x7f0f121a

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/AppNotificationSettings;->setupBlockDesc(I)V

    .line 313
    return-void
.end method

.method protected updateDependents(Z)V
    .locals 6
    .param p1, "banned"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 316
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "category$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 317
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    goto :goto_0

    .line 319
    .end local v0    # "category":Landroid/support/v7/preference/PreferenceCategory;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDeletedChannels:Lcom/android/settings/widget/FooterPreference;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 322
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockedDesc:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 323
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBadge:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 324
    iget-boolean v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mShowLegacyChannelConfig:Z

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mImportanceToggle:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 326
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPriority:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/AppNotificationSettings;->checkCanBeVisible(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 327
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/AppNotificationSettings;->checkCanBeVisible(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 328
    iget-boolean v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mDndVisualEffectsSuppressed:Z

    .line 326
    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 329
    iget-object v4, p0, Lcom/android/settings/notification/AppNotificationSettings;->mVisibilityOverride:Lcom/android/settings/notification/RestrictedDropDownPreference;

    if-nez p1, :cond_7

    .line 330
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/AppNotificationSettings;->checkCanBeVisible(I)Z

    move-result v2

    .line 329
    if-eqz v2, :cond_7

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->isLockScreenSecure()Z

    move-result v2

    .line 329
    :goto_2
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppLink:Landroid/support/v7/preference/Preference;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->systemApp:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-boolean v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 336
    iget-object v2, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlockBar:Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/AppNotificationSettings;->setVisible(Landroid/support/v7/preference/Preference;Z)V

    .line 338
    :cond_4
    return-void

    .line 326
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v3

    .line 327
    goto :goto_1

    :cond_7
    move v2, v3

    .line 329
    goto :goto_2
.end method
