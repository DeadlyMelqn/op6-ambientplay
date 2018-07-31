.class public Lcom/android/server/policy/AccessibilityShortcutController;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityShortcutController"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mEnabledOnLockScreen:Z

.field public mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

.field private mIsShortcutEnabled:Z

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/AccessibilityShortcutController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/AccessibilityShortcutController;

    .prologue
    iget v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 56
    const/4 v1, 0x4

    .line 55
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 57
    const/16 v1, 0xb

    .line 55
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "initialUserId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-direct {v1}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 83
    iput p3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    .line 86
    new-instance v0, Lcom/android/server/policy/AccessibilityShortcutController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/policy/AccessibilityShortcutController$1;-><init>(Lcom/android/server/policy/AccessibilityShortcutController;Landroid/os/Handler;)V

    .line 94
    .local v0, "co":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    const-string/jumbo v2, "accessibility_shortcut_target_service"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 97
    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "accessibility_shortcut_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 97
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 101
    const-string/jumbo v2, "accessibility_shortcut_on_lock_screen"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 103
    iget v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/policy/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 104
    return-void
.end method

.method private createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 213
    invoke-direct {p0}, Lcom/android/server/policy/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 215
    .local v1, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v1, :cond_0

    .line 216
    return-object v7

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x104004c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 221
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 219
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "warningMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 224
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v4

    .line 222
    invoke-virtual {v3, v4}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 225
    const v4, 0x104004d

    .line 222
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 228
    const v4, 0x10402ed

    .line 222
    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 230
    new-instance v4, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;

    invoke-direct {v4, p1, p0}, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I$1;-><init>(ILjava/lang/Object;)V

    .line 229
    const v5, 0x10401b8

    .line 222
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 235
    new-instance v4, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I;

    invoke-direct {v4, p1, p0}, Lcom/android/server/policy/-$Lambda$k6uOVlk6EqgDgfUMuhedgW8Qb2I;-><init>(ILjava/lang/Object;)V

    .line 222
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 241
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method private getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    .line 245
    invoke-static {v2, v3}, Lcom/android/server/policy/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "currentShortcutServiceString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 248
    return-object v4

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 253
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 252
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_shortcut_target_service"

    .line 72
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "currentShortcutServiceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    return-object v0

    .line 78
    :cond_0
    const v1, 0x1040133

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasFeatureLeanback()Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 3
    .param p1, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 260
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v1, -0x1

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public isAccessibilityShortcutAvailable(Z)Z
    .locals 1
    .param p1, "phoneLocked"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_policy_AccessibilityShortcutController_10031(ILandroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "accessibility_shortcut_target_service"

    const-string/jumbo v2, ""

    .line 231
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method synthetic lambda$-com_android_server_policy_AccessibilityShortcutController_10363(ILandroid/content/DialogInterface;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    .line 237
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onSettingsChanged()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 124
    iget-object v5, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/server/policy/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v2, v5, 0x1

    .line 125
    .local v2, "haveValidService":Z
    iget-object v5, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v5, "accessibility_shortcut_enabled"

    iget v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    .line 126
    invoke-static {v0, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v1, 0x1

    .line 129
    .local v1, "enabled":Z
    :goto_0
    const-string/jumbo v5, "accessibility_shortcut_on_lock_screen"

    iget v6, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    .line 128
    invoke-static {v0, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    .line 130
    if-eqz v1, :cond_2

    .end local v2    # "haveValidService":Z
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    .line 131
    return-void

    .line 126
    .end local v1    # "enabled":Z
    .restart local v2    # "haveValidService":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto :goto_0

    :cond_1
    move v3, v4

    .line 128
    goto :goto_1

    :cond_2
    move v2, v4

    .line 130
    goto :goto_2
.end method

.method public performAccessibilityShortcut()V
    .locals 17

    .prologue
    .line 137
    const-string/jumbo v14, "AccessibilityShortcutController"

    const-string/jumbo v15, "Accessibility shortcut activated"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 139
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    .line 141
    .local v9, "userId":I
    const-string/jumbo v14, "accessibility_shortcut_dialog_shown"

    const/4 v15, 0x0

    .line 140
    invoke-static {v3, v14, v15, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 144
    .local v4, "dialogAlreadyShown":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/AccessibilityShortcutController;->hasFeatureLeanback()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 145
    const/16 v2, 0xb

    .line 150
    .local v2, "audioAttributesUsage":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v14, v15}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v8

    .line 151
    .local v8, "tone":Landroid/media/Ringtone;
    if-eqz v8, :cond_0

    .line 152
    new-instance v14, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v14}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v14, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 155
    invoke-virtual {v8}, Landroid/media/Ringtone;->play()V

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "vibrator"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 160
    .local v11, "vibrator":Landroid/os/Vibrator;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 163
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 164
    const v15, 0x107002f

    .line 163
    invoke-static {v14, v15}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v10

    .line 165
    .local v10, "vibePattern":[J
    sget-object v14, Lcom/android/server/policy/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v15, -0x1

    invoke-virtual {v11, v10, v15, v14}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 169
    .end local v10    # "vibePattern":[J
    :cond_1
    if-nez v4, :cond_4

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/policy/AccessibilityShortcutController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v14, :cond_3

    .line 174
    return-void

    .line 146
    .end local v2    # "audioAttributesUsage":I
    .end local v8    # "tone":Landroid/media/Ringtone;
    .end local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_2
    const/16 v2, 0xa

    .restart local v2    # "audioAttributesUsage":I
    goto :goto_0

    .line 176
    .restart local v8    # "tone":Landroid/media/Ringtone;
    .restart local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 177
    .local v12, "w":Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 178
    .local v1, "attr":Landroid/view/WindowManager$LayoutParams;
    const/16 v14, 0x7d9

    iput v14, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 179
    invoke-virtual {v12, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 182
    const-string/jumbo v14, "accessibility_shortcut_dialog_shown"

    const/4 v15, 0x1

    .line 181
    invoke-static {v3, v14, v15, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 210
    .end local v1    # "attr":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "w":Landroid/view/Window;
    :goto_1
    return-void

    .line 184
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_5

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 190
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    .line 191
    .local v5, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v5, :cond_6

    .line 192
    const-string/jumbo v14, "AccessibilityShortcutController"

    const-string/jumbo v15, "Accessibility shortcut set to invalid service"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 195
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/policy/AccessibilityShortcutController;->isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 196
    const v14, 0x104004a

    .line 195
    :goto_2
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "toastMessageFormatString":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 199
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 199
    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 198
    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "toastMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/16 v16, 0x1

    .line 201
    move/from16 v0, v16

    invoke-virtual {v14, v15, v6, v0}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    .line 203
    .local v13, "warningToast":Landroid/widget/Toast;
    invoke-virtual {v13}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 205
    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15}, Lcom/android/server/policy/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    goto/16 :goto_1

    .line 197
    .end local v6    # "toastMessage":Ljava/lang/String;
    .end local v7    # "toastMessageFormatString":Ljava/lang/String;
    .end local v13    # "warningToast":Landroid/widget/Toast;
    :cond_7
    const v14, 0x104004b

    goto :goto_2
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "currentUserId"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/policy/AccessibilityShortcutController;->mUserId:I

    .line 108
    invoke-virtual {p0}, Lcom/android/server/policy/AccessibilityShortcutController;->onSettingsChanged()V

    .line 109
    return-void
.end method
