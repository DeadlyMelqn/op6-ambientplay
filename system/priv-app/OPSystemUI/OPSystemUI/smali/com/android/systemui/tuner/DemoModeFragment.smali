.class public Lcom/android/systemui/tuner/DemoModeFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "DemoModeFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/DemoModeFragment$1;
    }
.end annotation


# static fields
.field private static final STATUS_ICONS:[Ljava/lang/String;


# instance fields
.field private final mDemoModeObserver:Landroid/database/ContentObserver;

.field private mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mOnSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/tuner/DemoModeFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/tuner/DemoModeFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "volume"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "bluetooth"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "location"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "alarm"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "zen"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "sync"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "tty"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "eri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "mute"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "speakerphone"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "managed_profile"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 42
    sput-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 211
    new-instance v0, Lcom/android/systemui/tuner/DemoModeFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tuner/DemoModeFragment$1;-><init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/os/Handler;)V

    .line 210
    iput-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    .line 38
    return-void
.end method

.method private setGlobal(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    return-void
.end method

.method private startDemoMode()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 151
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.android.systemui.demo"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "command"

    const-string/jumbo v8, "enter"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    const-string/jumbo v7, "command"

    const-string/jumbo v8, "clock"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v0, "1010"

    .line 160
    .local v0, "demoTime":Ljava/lang/String;
    :try_start_0
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "versionParts":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 162
    .local v4, "majorVersion":I
    const-string/jumbo v7, "%02d00"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    rem-int/lit8 v9, v4, 0x18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    .end local v4    # "majorVersion":I
    .end local v5    # "versionParts":[Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "hhmm"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    const-string/jumbo v7, "command"

    const-string/jumbo v8, "network"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v7, "wifi"

    const-string/jumbo v8, "show"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v7, "mobile"

    const-string/jumbo v8, "show"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v7, "sims"

    const-string/jumbo v8, "1"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v7, "nosim"

    const-string/jumbo v8, "false"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v7, "level"

    const-string/jumbo v8, "4"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v7, "datatype"

    const-string/jumbo v8, "lte"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    const-string/jumbo v7, "fully"

    const-string/jumbo v8, "true"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    const-string/jumbo v7, "command"

    const-string/jumbo v8, "battery"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v7, "level"

    const-string/jumbo v8, "100"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string/jumbo v7, "plugged"

    const-string/jumbo v8, "false"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    const-string/jumbo v7, "command"

    const-string/jumbo v8, "status"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    sget-object v7, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v2, v7, v6

    .line 188
    .local v2, "icon":Ljava/lang/String;
    const-string/jumbo v9, "hide"

    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 190
    .end local v2    # "icon":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    const-string/jumbo v6, "command"

    const-string/jumbo v7, "notifications"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v6, "visible"

    const-string/jumbo v7, "false"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    const-string/jumbo v6, "sysui_tuner_demo_on"

    invoke-direct {p0, v6, v11}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    .line 197
    return-void

    .line 163
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_0
.end method

.method private stopDemoMode()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.demo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "exit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    const-string/jumbo v1, "sysui_tuner_demo_on"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method private updateDemoModeEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    const-string/jumbo v2, "sysui_demo_allowed"

    .line 114
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 116
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 118
    return-void

    .line 114
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method private updateDemoModeOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 122
    const-string/jumbo v2, "sysui_tuner_demo_on"

    .line 121
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 123
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    return-void

    .line 121
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v3, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 63
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v4, 0x7f110205

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 64
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v3, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 66
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v4, 0x7f1104e8

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 67
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 68
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 71
    .local v2, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "sysui_demo_allowed"

    .line 78
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    .line 78
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    const-string/jumbo v3, "sysui_tuner_demo_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 81
    iget-object v4, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    .line 80
    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/DemoModeFragment;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 105
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    .line 129
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    .line 130
    if-nez v0, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xeb

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 136
    const-string/jumbo v3, "sysui_demo_allowed"

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    .line 147
    :goto_1
    return v2

    .line 128
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xec

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 139
    if-eqz v0, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->startDemoMode()V

    goto :goto_1

    .line 142
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    goto :goto_1

    .line 145
    :cond_5
    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 99
    return-void
.end method
