.class public Lcom/android/systemui/tuner/LockscreenFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "LockscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;,
        Lcom/android/systemui/tuner/LockscreenFragment$Adapter;,
        Lcom/android/systemui/tuner/LockscreenFragment$App;,
        Lcom/android/systemui/tuner/LockscreenFragment$Holder;,
        Lcom/android/systemui/tuner/LockscreenFragment$Item;,
        Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;,
        Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;,
        Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTunables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field

.field private mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method private varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/tuner/TunerService$Tunable;
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static getActivityinfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 145
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getShortcutInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p0, p1}, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v0

    return-object v0
.end method

.method private setSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 5
    .param p1, "shortcut"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f11033a

    const/4 v2, 0x0

    .line 121
    if-nez p2, :cond_0

    .line 122
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 123
    return-void

    .line 125
    :cond_0
    const-string/jumbo v3, "::"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/tuner/LockscreenFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->getShortcutInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v1

    .line 127
    .local v1, "info":Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    .end local v1    # "info":Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    :goto_0
    return-void

    .line 128
    :cond_2
    const-string/jumbo v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/tuner/LockscreenFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->getActivityinfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 130
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/tuner/LockscreenFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    :cond_4
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private setupGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "buttonSetting"    # Ljava/lang/String;
    .param p2, "unlockKey"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 97
    .local v0, "shortcut":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 98
    .local v1, "unlock":Landroid/support/v14/preference/SwitchPreference;
    new-instance v2, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 102
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 98
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/tuner/LockscreenFragment;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_tuner_LockscreenFragment_3763(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/tuner/TunerService$Tunable;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_LockscreenFragment_4038(Landroid/support/v14/preference/SwitchPreference;Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "unlock"    # Landroid/support/v14/preference/SwitchPreference;
    .param p2, "shortcut"    # Landroid/support/v7/preference/Preference;
    .param p3, "k"    # Ljava/lang/String;
    .param p4, "v"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 100
    .local v0, "visible":Z
    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 101
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/tuner/LockscreenFragment;->setSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mHandler:Landroid/os/Handler;

    .line 84
    const v0, 0x7f150001

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->addPreferencesFromResource(I)V

    .line 85
    const-string/jumbo v0, "sysui_keyguard_left"

    const-string/jumbo v1, "sysui_keyguard_left_unlock"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/LockscreenFragment;->setupGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "sysui_keyguard_right"

    const-string/jumbo v1, "sysui_keyguard_right_unlock"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/LockscreenFragment;->setupGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    return-void
.end method
