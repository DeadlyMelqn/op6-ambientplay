.class public Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;,
        Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;
    }
.end annotation


# static fields
.field private static final KEY_ADD_FACE:Ljava/lang/String; = "key_add_face"

.field private static final KEY_AUTO_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "key_auto_face_unlock_enable"

.field private static final KEY_FACEUNLOCK_CATEGORY:Ljava/lang/String; = "key_faceunlock_category"

.field private static final KEY_FACEUNLOCK_MANAGEMENT_CATEGORY:Ljava/lang/String; = "key_faceunlock_management_category"

.field private static final KEY_FACE_UNLOCK_ASSISTIVE_LIGHTING:Ljava/lang/String; = "key_face_unlock_assistive_lighting"

.field private static final KEY_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "key_face_unlock_enable"

.field private static final KEY_REMOVE_FACE:Ljava/lang/String; = "key_remove_face"

.field private static final ONEPLUS_AUTO_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "oneplus_auto_face_unlock_enable"

.field private static final ONEPLUS_FACE_UNLOCK_ASSISTIVE_LIGHTING_ENABLE:Ljava/lang/String; = "oneplus_face_unlock_assistive_lighting_enable"

.field private static final ONEPLUS_FACE_UNLOCK_ENABLE:Ljava/lang/String; = "oneplus_face_unlock_enable"

.field private static final ONEPLUS_FACE_UNLOCK_ENROLL_ACTION:Ljava/lang/String; = "com.oneplus.faceunlock.FaceUnlockActivity"

.field private static final REFRESH_UI:I = 0x64

.field private static final RESULT_FAIL:I = 0x1

.field private static final RESULT_NOT_FOUND:I = 0x2

.field private static final RESULT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPFaceUnlockSettings"


# instance fields
.field private mAddFace:Landroid/support/v7/preference/Preference;

.field private mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mFaceSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

.field private mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

.field private mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;

.field private mFaceUnlockManagerCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mRemoveDialog:Landroid/app/AlertDialog;

.field private mRemoveFace:Landroid/support/v7/preference/Preference;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;Lcom/android/internal/policy/IOPFaceSettingService;)Lcom/android/internal/policy/IOPFaceSettingService;
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
    .param p1, "-value"    # Lcom/android/internal/policy/IOPFaceSettingService;

    .prologue
    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->gotoAddFaceData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->refreshUI()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->removeFaceData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    .line 72
    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private bindFaceUnlockService()V
    .locals 5

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.faceunlock"

    const-string/jumbo v3, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    const-string/jumbo v2, "OPFaceUnlockSettings"

    const-string/jumbo v3, "Start bind oneplus face unlockservice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OPFaceUnlockSettings"

    const-string/jumbo v3, "Bind oneplus face unlockservice exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableAutoUnlockSettings(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 303
    :cond_0
    return-void
.end method

.method private disableFaceUnlockAssistiveLightingSettings(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public static getSetupFaceUnlockIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.oneplus.faceunlock"

    const-string/jumbo v2, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "FaceUnlockActivity.StartMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    return-object v0
.end method

.method private gotoAddFaceData()V
    .locals 6

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v3, "com.oneplus.faceunlock"

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.oneplus.faceunlock.FaceUnlockActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v3, "FaceUnlockActivity.StartMode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 243
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 240
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 241
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v3, "OPFaceUnlockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static gotoFaceUnlockSettings(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "zhuyang--gotoFaceUnlockSettings"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v3, "com.android.settings"

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings.Settings$OPFaceUnlockSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 350
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 347
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 348
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v3, "OPFaceUnlockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "key_faceunlock_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 116
    const-string/jumbo v0, "key_faceunlock_management_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockManagerCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 117
    const-string/jumbo v0, "key_add_face"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    const-string/jumbo v0, "key_remove_face"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    const-string/jumbo v0, "key_face_unlock_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    const-string/jumbo v0, "key_auto_face_unlock_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string/jumbo v0, "key_face_unlock_assistive_lighting"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    return-void
.end method

.method private isAutoFaceUnlockEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oneplus_auto_face_unlock_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 324
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFaceAdded()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v3, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    if-nez v3, :cond_0

    .line 209
    return v2

    .line 211
    :cond_0
    const/4 v0, 0x2

    .line 213
    .local v0, "addState":I
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/policy/IOPFaceSettingService;->checkState(I)I

    move-result v0

    .line 214
    const-string/jumbo v3, "OPFaceUnlockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start check face state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "OPFaceUnlockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start check face State RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFaceUnlockAssistiveLightingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 333
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isFaceUnlockEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oneplus_face_unlock_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 313
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableAutoUnlockSettings(Z)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableFaceUnlockAssistiveLightingSettings(Z)V

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceUnlockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isAutoFaceUnlockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->isFaceUnlockAssistiveLightingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    :cond_1
    return-void

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAddFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveFace:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mAutoFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockAssistiveLighting:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private removeFaceData()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    if-nez v1, :cond_0

    .line 223
    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceSettingService:Lcom/android/internal/policy/IOPFaceSettingService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IOPFaceSettingService;->removeFace(I)V

    .line 227
    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "OPFaceUnlockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start remove face RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchAutoFaceUnlock(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oneplus_auto_face_unlock_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchFaceUnlock(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oneplus_face_unlock_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    invoke-direct {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableAutoUnlockSettings(Z)V

    .line 319
    invoke-direct {p0, p1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->disableFaceUnlockAssistiveLightingSettings(Z)V

    .line 320
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchFaceUnlockAssistiveLighting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oneplus_face_unlock_assistive_lighting_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, "OPFaceUnlockSettings"

    const-string/jumbo v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 355
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->bindFaceUnlockService()V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->unbindFaceUnlockService()V

    .line 170
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 171
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 165
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 193
    .local v1, "newValue":Z
    const-string/jumbo v2, "key_face_unlock_enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchFaceUnlock(Z)V

    .line 195
    return v3

    .line 196
    :cond_0
    const-string/jumbo v2, "key_auto_face_unlock_enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchAutoFaceUnlock(Z)V

    .line 198
    return v3

    .line 199
    :cond_1
    const-string/jumbo v2, "key_face_unlock_assistive_lighting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-direct {p0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->switchFaceUnlockAssistiveLighting(Z)V

    .line 201
    return v3

    .line 203
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "key_add_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showDisableAospFaceUnlockDialog()V

    .line 181
    :goto_0
    return v2

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->gotoAddFaceData()V

    goto :goto_0

    .line 182
    :cond_1
    const-string/jumbo v1, "key_remove_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->showRemoveFaceDataDialog()V

    .line 184
    return v2

    .line 186
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->refreshUI()V

    .line 135
    return-void
.end method

.method public showDisableAospFaceUnlockDialog()V
    .locals 4

    .prologue
    .line 254
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 254
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    const v2, 0x7f0f0488

    .line 254
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 258
    new-instance v2, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$3;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 257
    const v3, 0x7f0f0713

    .line 254
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 267
    new-instance v2, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$4;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$4;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 266
    const v3, 0x7f0f06bf

    .line 254
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 273
    .local v0, "disableDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    return-void
.end method

.method public showRemoveFaceDataDialog()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 277
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    const v1, 0x7f0f0478

    .line 277
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 280
    const v1, 0x7f0f0479

    .line 277
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$5;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 281
    const v2, 0x7f0f06c0

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$6;-><init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    .line 289
    const v2, 0x7f0f06bf

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveDialog:Landroid/app/AlertDialog;

    .line 296
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->mRemoveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void
.end method
