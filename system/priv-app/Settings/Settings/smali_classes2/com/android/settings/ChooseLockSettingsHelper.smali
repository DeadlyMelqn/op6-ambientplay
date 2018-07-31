.class public final Lcom/android/settings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final EXTRA_KEY_CHALLENGE:Ljava/lang/String; = "challenge"

.field public static final EXTRA_KEY_CHALLENGE_TOKEN:Ljava/lang/String; = "hw_auth_token"

.field public static final EXTRA_KEY_FOR_CHANGE_CRED_REQUIRED_FOR_BOOT:Ljava/lang/String; = "for_cred_req_boot"

.field public static final EXTRA_KEY_FOR_FINGERPRINT:Ljava/lang/String; = "for_fingerprint"

.field public static final EXTRA_KEY_HAS_CHALLENGE:Ljava/lang/String; = "has_challenge"

.field static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_KEY_RETURN_CREDENTIALS:Ljava/lang/String; = "return_credentials"

.field static final EXTRA_KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 59
    iput-object p2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 60
    return-void
.end method

.method private copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "inIntent"    # Landroid/content/Intent;
    .param p2, "outIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 304
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 305
    .local v0, "intentSender":Landroid/content/IntentSender;
    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    :cond_0
    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 309
    .local v1, "taskId":I
    if-eq v1, v3, :cond_1

    .line 310
    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    :cond_1
    if-nez v0, :cond_2

    if-eq v1, v3, :cond_3

    .line 317
    :cond_2
    const/high16 v2, 0x800000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    :cond_3
    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p6, "returnCredentials"    # Z
    .param p7, "external"    # Z
    .param p8, "hasChallenge"    # Z
    .param p9, "challenge"    # J
    .param p11, "userId"    # I
    .param p12, "alternateButton"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<*>;ZZZJI",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 268
    .local p5, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const-string/jumbo v1, "return_credentials"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const-string/jumbo v1, "has_challenge"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string/jumbo v1, "challenge"

    invoke-virtual {v0, v1, p9, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 280
    const-string/jumbo v1, ":settings:hide_drawer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string/jumbo v1, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v0, v1, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    if-eqz p7, :cond_1

    .line 285
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 300
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 12
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "userId"    # I

    .prologue
    .line 210
    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    .line 209
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;)Z
    .locals 18
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "userId"    # I
    .param p11, "alternateButton"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v2

    .line 225
    .local v2, "effectiveUserId":I
    const/16 v16, 0x0

    .line 227
    .local v16, "launched":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 261
    .end local v16    # "launched":Z
    :goto_0
    return v16

    .line 230
    .restart local v16    # "launched":Z
    :sswitch_0
    if-nez p5, :cond_0

    if-eqz p7, :cond_1

    .line 231
    :cond_0
    const-class v8, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    :goto_1
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move-object/from16 v15, p11

    .line 229
    invoke-direct/range {v3 .. v15}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;)Z

    move-result v16

    .local v16, "launched":Z
    goto :goto_0

    .line 232
    .local v16, "launched":Z
    :cond_1
    const-class v8, Lcom/android/settings/ConfirmLockPattern;

    goto :goto_1

    .line 254
    :sswitch_1
    if-nez p5, :cond_2

    if-eqz p7, :cond_3

    .line 255
    :cond_2
    const-class v8, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    :goto_2
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move-object/from16 v15, p11

    .line 253
    invoke-direct/range {v3 .. v15}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;)Z

    move-result v16

    .local v16, "launched":Z
    goto :goto_0

    .line 256
    .local v16, "launched":Z
    :cond_3
    const-class v8, Lcom/android/settings/ConfirmLockPassword;

    goto :goto_2

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public isPasswordLockMode()Z
    .locals 3

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    .line 345
    .local v0, "effectiveUserId":I
    const/4 v1, 0x0

    .line 346
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 356
    :goto_0
    return v1

    .line 353
    :sswitch_0
    const/4 v1, 0x1

    .line 354
    goto :goto_0

    .line 346
    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v6, v5

    .line 74
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v8, p5

    .line 162
    invoke-direct/range {v0 .. v10}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J
    .param p7, "userId"    # I

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v10, p5

    .line 180
    invoke-direct/range {v2 .. v12}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v2

    return v2
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z

    .prologue
    .line 124
    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 123
    invoke-direct/range {v0 .. v10}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "userId"    # I

    .prologue
    .line 146
    const-wide/16 v10, 0x0

    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v12

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 145
    invoke-direct/range {v2 .. v12}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v2

    return v2
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z

    .prologue
    const/4 v3, 0x0

    .line 87
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z
    .locals 11
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 103
    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p4}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    move v7, v6

    .line 102
    invoke-direct/range {v0 .. v10}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z
    .locals 14
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "external"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    move/from16 v0, p8

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v12

    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-wide/from16 v10, p6

    .line 201
    invoke-direct/range {v2 .. v12}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v2

    return v2
.end method

.method public launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 12
    .param p1, "request"    # I
    .param p2, "header"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "alternateButton"    # Ljava/lang/CharSequence;

    .prologue
    .line 217
    const-wide/16 v8, 0x0

    .line 215
    const/4 v2, 0x0

    .line 216
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 217
    const/16 v10, -0x270f

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v11, p4

    .line 215
    invoke-direct/range {v0 .. v11}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public lockMode()I
    .locals 3

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "ret":I
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings/Utils;->getEffectiveUserId(Landroid/content/Context;)I

    move-result v0

    .line 326
    .local v0, "effectiveUserId":I
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 339
    :goto_0
    :sswitch_0
    return v1

    .line 329
    :sswitch_1
    const/4 v1, 0x1

    .line 330
    goto :goto_0

    .line 332
    :sswitch_2
    const/4 v1, 0x2

    .line 333
    goto :goto_0

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
