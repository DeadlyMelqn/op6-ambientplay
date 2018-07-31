.class Lcom/android/server/pm/ShortcutRequestPinProcessor;
.super Ljava/lang/Object;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;,
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;,
        Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 215
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    .line 216
    return-void
.end method

.method private requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .locals 14
    .param p1, "inShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "resultIntentOriginal"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ShortcutInfo;",
            "Landroid/content/IntentSender;",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/pm/LauncherApps$PinItemRequest;"
        }
    .end annotation

    .prologue
    .line 298
    .local p3, "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 299
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v8

    .line 298
    invoke-virtual {v2, v3, v8}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v13

    .line 301
    .local v13, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v11

    .line 302
    .local v11, "existing":Landroid/content/pm/ShortcutInfo;
    if-eqz v11, :cond_2

    const/4 v9, 0x1

    .line 312
    .local v9, "existsAlready":Z
    :goto_0
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "launcherPackage":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 315
    .local v7, "launcherUserId":I
    move-object/from16 v5, p2

    .line 317
    .local v5, "resultIntentToSend":Landroid/content/IntentSender;
    if-eqz v9, :cond_3

    .line 318
    invoke-direct {p0, v11}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 320
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 321
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v3

    .line 320
    invoke-virtual {v2, v6, v3, v7}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    move-result v12

    .line 322
    .local v12, "isAlreadyPinned":Z
    if-eqz v12, :cond_0

    .line 325
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 328
    const/4 v5, 0x0

    .line 333
    .end local v5    # "resultIntentToSend":Landroid/content/IntentSender;
    :cond_0
    const/16 v2, 0xb

    invoke-virtual {v11, v2}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 335
    .local v4, "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    if-nez v12, :cond_1

    .line 337
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    .line 367
    .end local v12    # "isAlreadyPinned":Z
    :cond_1
    :goto_1
    new-instance v1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;

    .line 369
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, v6, v7}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v8

    .line 367
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;IIZLcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;)V

    .line 372
    .local v1, "inner":Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;
    new-instance v2, Landroid/content/pm/LauncherApps$PinItemRequest;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    return-object v2

    .line 302
    .end local v1    # "inner":Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;
    .end local v4    # "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    .end local v6    # "launcherPackage":Ljava/lang/String;
    .end local v7    # "launcherUserId":I
    .end local v9    # "existsAlready":Z
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "existsAlready":Z
    goto :goto_0

    .line 343
    .restart local v5    # "resultIntentToSend":Landroid/content/IntentSender;
    .restart local v6    # "launcherPackage":Ljava/lang/String;
    .restart local v7    # "launcherUserId":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_4

    .line 344
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 345
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v8

    .line 344
    invoke-virtual {v2, v3, v8}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V

    .line 352
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 353
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v8

    .line 352
    invoke-virtual {v2, v3, v8}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 359
    const/16 v2, 0xa

    .line 358
    invoke-virtual {p1, v2}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .restart local v4    # "shortcutForLauncher":Landroid/content/pm/ShortcutInfo;
    goto :goto_1
.end method

.method private startRequestConfirmActivity(Landroid/content/ComponentName;ILandroid/content/pm/LauncherApps$PinItemRequest;I)Z
    .locals 8
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "launcherUserId"    # I
    .param p3, "request"    # Landroid/content/pm/LauncherApps$PinItemRequest;
    .param p4, "requestType"    # I

    .prologue
    const/4 v7, 0x1

    .line 386
    if-ne p4, v7, :cond_0

    .line 387
    const-string/jumbo v0, "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

    .line 391
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v1, "confirmIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 393
    const-string/jumbo v3, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v4

    .line 398
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 399
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 398
    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 406
    return v7

    .line 388
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "confirmIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_0
    const-string/jumbo v0, "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    .line 400
    .restart local v1    # "confirmIntent":Landroid/content/Intent;
    .restart local v4    # "token":J
    :catch_0
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v3, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    const/4 v3, 0x0

    .line 404
    iget-object v6, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 402
    return v3

    .line 403
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 404
    iget-object v6, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 403
    throw v3
.end method

.method private validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 3
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Shortcut ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already exists but disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 382
    return-void
.end method


# virtual methods
.method public createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .locals 6
    .param p1, "inShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 275
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v1

    .line 276
    .local v1, "launcherUserId":I
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 277
    .local v0, "defaultLauncher":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 278
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v4, "Default launcher not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-object v5

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 287
    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v2

    .line 289
    .local v2, "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.content.pm.extra.PIN_ITEM_REQUEST"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public directPinShortcut(Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;)Z
    .locals 14
    .param p1, "request"    # Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;

    .prologue
    .line 447
    iget-object v7, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutOriginal:Landroid/content/pm/ShortcutInfo;

    .line 448
    .local v7, "original":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    .line 449
    .local v1, "appUserId":I
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "appPackageName":Ljava/lang/String;
    iget v6, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 451
    .local v6, "launcherUserId":I
    iget-object v5, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherPackage:Ljava/lang/String;

    .line 452
    .local v5, "launcherPackage":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 454
    .local v9, "shortcutId":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 455
    :try_start_0
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10, v1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 456
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    iget v12, p1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    invoke-virtual {v10, v12}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v10

    .line 455
    :goto_0
    if-nez v10, :cond_1

    .line 457
    const-string/jumbo v10, "ShortcutService"

    const-string/jumbo v12, "User is locked now."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 455
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 461
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10, v5, v1, v6}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v4

    .line 463
    .local v4, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 464
    invoke-virtual {v4, v7}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    .line 468
    const/4 v10, 0x1

    monitor-exit v11

    return v10

    .line 471
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v8

    .line 473
    .local v8, "ps":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v8, v9}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 477
    .local v2, "current":Landroid/content/pm/ShortcutInfo;
    if-nez v2, :cond_6

    .line 479
    :try_start_3
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10, v7}, Lcom/android/server/pm/ShortcutService;->validateShortcutForPinRequest(Landroid/content/pm/ShortcutInfo;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 490
    :goto_1
    if-nez v2, :cond_4

    .line 497
    :try_start_4
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_3

    .line 498
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10, v0}, Lcom/android/server/pm/ShortcutService;->getDummyMainActivity(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 500
    :cond_3
    invoke-virtual {v8, v7}, Lcom/android/server/pm/ShortcutPackage;->addOrUpdateDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 508
    :cond_4
    invoke-virtual {v4, v0, v1, v9}, Lcom/android/server/pm/ShortcutLauncher;->addPinnedShortcut(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    if-nez v2, :cond_5

    .line 514
    invoke-virtual {v8, v9}, Lcom/android/server/pm/ShortcutPackage;->deleteDynamicWithId(Ljava/lang/String;)Z

    .line 517
    :cond_5
    invoke-virtual {v8}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v11

    .line 520
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 521
    iget-object v10, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 523
    const/4 v10, 0x1

    return v10

    .line 481
    :cond_6
    :try_start_5
    invoke-direct {p0, v2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->validateExistingShortcut(Landroid/content/pm/ShortcutInfo;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 483
    :catch_0
    move-exception v3

    .line 484
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_6
    const-string/jumbo v10, "ShortcutService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to pin shortcut: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 485
    const/4 v10, 0x0

    monitor-exit v11

    return v10

    .line 454
    .end local v2    # "current":Landroid/content/pm/ShortcutInfo;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    .end local v8    # "ps":Lcom/android/server/pm/ShortcutPackage;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method getRequestPinConfirmationActivity(II)Landroid/util/Pair;
    .locals 6
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutService;->getParentOrSelfUserId(I)I

    move-result v2

    .line 419
    .local v2, "launcherUserId":I
    iget-object v4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 421
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 422
    const-string/jumbo v4, "ShortcutService"

    const-string/jumbo v5, "Default launcher not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-object v3

    .line 425
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 426
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-virtual {v4, v5, v2, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPinConfirmationActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v0

    .line 427
    .local v0, "activity":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    :goto_0
    return-object v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_0
.end method

.method public isCallerUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestPinItemSupported(II)Z
    .locals 1
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z
    .locals 12
    .param p1, "inShortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "inAppWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .param p5, "resultIntent"    # Landroid/content/IntentSender;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    const/4 v11, 0x1

    .line 238
    .local v11, "requestType":I
    :goto_0
    move/from16 v0, p4

    invoke-virtual {p0, v0, v11}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    move-result-object v8

    .line 241
    .local v8, "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-nez v8, :cond_1

    .line 242
    const-string/jumbo v1, "ShortcutService"

    const-string/jumbo v2, "Launcher doesn\'t support requestPinnedShortcut(). Shortcut not created."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v1, 0x0

    return v1

    .line 236
    .end local v8    # "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v11    # "requestType":I
    :cond_0
    const/4 v11, 0x2

    .restart local v11    # "requestType":I
    goto :goto_0

    .line 246
    .restart local v8    # "confirmActivity":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 250
    .local v9, "launcherUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 254
    if-eqz p1, :cond_2

    .line 255
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0, v8}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Landroid/util/Pair;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v10

    .line 264
    .local v10, "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    :goto_1
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-direct {p0, v1, v9, v10, v11}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->startRequestConfirmActivity(Landroid/content/ComponentName;ILandroid/content/pm/LauncherApps$PinItemRequest;I)Z

    move-result v1

    return v1

    .line 257
    .end local v10    # "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 258
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {v2, v1, v9}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 259
    .local v4, "launcherUid":I
    new-instance v10, Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 260
    new-instance v1, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;)V

    .line 262
    const/4 v2, 0x2

    .line 259
    invoke-direct {v10, v1, v2}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/content/pm/IPinItemRequest;I)V

    .restart local v10    # "request":Landroid/content/pm/LauncherApps$PinItemRequest;
    goto :goto_1
.end method

.method public sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "extras"    # Landroid/content/Intent;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectSendIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 435
    return-void
.end method
