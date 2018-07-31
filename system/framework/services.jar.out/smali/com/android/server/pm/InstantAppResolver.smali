.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolver$ResolutionStatus;
    }
.end annotation


# static fields
.field private static final DEBUG_EPHEMERAL:Z

.field private static final RESOLUTION_BIND_TIMEOUT:I = 0x2

.field private static final RESOLUTION_CALL_TIMEOUT:I = 0x3

.field private static final RESOLUTION_FAILURE:I = 0x1

.field private static final RESOLUTION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static synthetic -wrap0(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 1
    .param p0, "instantAppResolveInfoList"    # Ljava/util/List;
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p6, "token"    # Ljava/lang/String;

    .prologue
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(IJLjava/lang/String;I)V
    .locals 1
    .param p0, "action"    # I
    .param p1, "startTime"    # J
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 20
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "failureIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "instantAppPackageName"    # Ljava/lang/String;
    .param p8, "instantAppSplitName"    # Ljava/lang/String;
    .param p9, "installFailureActivity"    # Landroid/content/ComponentName;
    .param p10, "versionCode"    # I
    .param p11, "token"    # Ljava/lang/String;
    .param p12, "needsPhaseTwo"    # Z

    .prologue
    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v14

    .line 249
    .local v14, "flags":I
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v16, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    .line 250
    or-int/2addr v2, v14

    .line 252
    const v3, 0x8000

    .line 250
    or-int/2addr v2, v3

    .line 253
    const/high16 v3, 0x40000000    # 2.0f

    .line 250
    or-int/2addr v2, v3

    .line 254
    const/high16 v3, 0x800000

    .line 250
    or-int/2addr v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    if-eqz p11, :cond_0

    .line 256
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_TOKEN"

    move-object/from16 v0, v16

    move-object/from16 v1, p11

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 259
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_HOSTNAME"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :cond_1
    if-nez p12, :cond_4

    .line 265
    if-nez p2, :cond_2

    if-eqz p9, :cond_3

    .line 268
    :cond_2
    if-eqz p9, :cond_5

    .line 269
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v17, "onFailureIntent":Landroid/content/Intent;
    move-object/from16 v0, v17

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v2, "android.intent.extra.SPLIT_NAME"

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v2, "android.intent.extra.INTENT"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 280
    const/4 v3, 0x1

    new-array v8, v3, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v17, v8, v3

    .line 281
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v9, v3

    .line 278
    const/4 v3, 0x2

    .line 279
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 282
    const/high16 v10, 0x54000000

    .line 285
    const/4 v11, 0x0

    move-object/from16 v4, p3

    move/from16 v12, p6

    .line 276
    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v13

    .line 286
    .local v13, "failureIntentTarget":Landroid/content/IIntentSender;
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_FAILURE"

    .line 287
    new-instance v3, Landroid/content/IntentSender;

    invoke-direct {v3, v13}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 286
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    .end local v13    # "failureIntentTarget":Landroid/content/IIntentSender;
    .end local v17    # "onFailureIntent":Landroid/content/Intent;
    :cond_3
    :goto_1
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 293
    .local v18, "successIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 295
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 299
    const/4 v3, 0x1

    new-array v8, v3, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v18, v8, v3

    .line 300
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v9, v3

    .line 297
    const/4 v3, 0x2

    .line 298
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 301
    const/high16 v10, 0x54000000

    .line 303
    const/4 v11, 0x0

    move-object/from16 v4, p3

    move/from16 v12, p6

    .line 295
    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v19

    .line 304
    .local v19, "successIntentTarget":Landroid/content/IIntentSender;
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_SUCCESS"

    .line 305
    new-instance v3, Landroid/content/IntentSender;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 304
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    .end local v19    # "successIntentTarget":Landroid/content/IIntentSender;
    :goto_2
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, v16

    move-object/from16 v1, p7

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string/jumbo v2, "android.intent.extra.SPLIT_NAME"

    move-object/from16 v0, v16

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v2, "android.intent.extra.VERSION_CODE"

    move-object/from16 v0, v16

    move/from16 v1, p10

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string/jumbo v2, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    if-eqz p4, :cond_4

    .line 313
    const-string/jumbo v2, "android.intent.extra.VERIFICATION_BUNDLE"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 317
    .end local v18    # "successIntent":Landroid/content/Intent;
    :cond_4
    return-object v16

    .line 274
    :cond_5
    move-object/from16 v17, p2

    .restart local v17    # "onFailureIntent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 306
    .end local v17    # "onFailureIntent":Landroid/content/Intent;
    .restart local v18    # "successIntent":Landroid/content/Intent;
    :catch_0
    move-exception v15

    .local v15, "ignore":Landroid/os/RemoteException;
    goto :goto_2

    .line 288
    .end local v15    # "ignore":Landroid/os/RemoteException;
    .end local v18    # "successIntent":Landroid/content/Intent;
    :catch_1
    move-exception v15

    .restart local v15    # "ignore":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public static doInstantAppResolutionPhaseOne(Landroid/content/Context;Lcom/android/server/pm/EphemeralResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/pm/EphemeralResolverConnection;
    .param p2, "requestObj"    # Landroid/content/pm/InstantAppRequest;

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 97
    .local v14, "startTime":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "token":Ljava/lang/String;
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    if-eqz v4, :cond_0

    .line 99
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] Phase1; resolving"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 103
    .local v3, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v7, v4, v5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    .line 104
    .local v7, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    invoke-virtual {v7}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v12

    .line 105
    .local v12, "shaPrefix":[I
    const/4 v11, 0x0

    .line 106
    .local v11, "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    const/4 v10, 0x0

    .line 109
    .local v10, "resolutionStatus":I
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Lcom/android/server/pm/EphemeralResolverConnection;->getInstantAppResolveInfoList([ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 112
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p2

    iget v5, v0, Landroid/content/pm/InstantAppRequest;->userId:I

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    :try_end_0
    .catch Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 125
    .end local v2    # "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    .end local v11    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :cond_1
    :goto_0
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    if-eqz v4, :cond_2

    if-nez v10, :cond_2

    .line 126
    const/16 v4, 0x383

    invoke-static {v4, v14, v15, v8, v10}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 129
    :cond_2
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    if-eqz v4, :cond_3

    if-nez v11, :cond_3

    .line 130
    const/4 v4, 0x2

    if-ne v10, v4, :cond_6

    .line 131
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] Phase1; bind timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_3
    :goto_1
    return-object v11

    .line 115
    .restart local v11    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :catch_0
    move-exception v9

    .line 116
    .local v9, "e":Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
    iget v4, v9, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;->failure:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 117
    const/4 v10, 0x2

    goto :goto_0

    .line 118
    :cond_4
    iget v4, v9, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;->failure:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 119
    const/4 v10, 0x3

    goto :goto_0

    .line 121
    :cond_5
    const/4 v10, 0x1

    goto :goto_0

    .line 132
    .end local v9    # "e":Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
    .end local v11    # "resolveInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    :cond_6
    const/4 v4, 0x3

    if-ne v10, v4, :cond_7

    .line 133
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] Phase1; call timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    :cond_7
    if-eqz v10, :cond_8

    .line 135
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] Phase1; service connection error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    :cond_8
    const-string/jumbo v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] Phase1; No results matched"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/EphemeralResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Lcom/android/server/pm/EphemeralResolverConnection;
    .param p2, "requestObj"    # Landroid/content/pm/InstantAppRequest;
    .param p3, "instantAppInstaller"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 147
    .local v12, "startTime":J
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v5, v6, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 148
    .local v5, "token":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    if-eqz v6, :cond_0

    .line 149
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Phase2; resolving"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 152
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, "hostName":Ljava/lang/String;
    new-instance v4, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const/4 v6, 0x5

    invoke-direct {v4, v9, v6}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    .line 154
    .local v4, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    invoke-virtual {v4}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v16

    .line 156
    .local v16, "shaPrefix":[I
    new-instance v2, Lcom/android/server/pm/InstantAppResolver$1;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Landroid/content/Intent;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    .local v2, "callback":Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;
    move-object/from16 v6, p1

    move-object/from16 v7, v16

    move-object v8, v5

    move-object v10, v2

    move-object/from16 v11, p4

    .line 211
    :try_start_0
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/pm/EphemeralResolverConnection;->getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    :try_end_0
    .catch Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v14

    .line 214
    .local v14, "e":Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;
    const/4 v15, 0x1

    .line 215
    .local v15, "resolutionStatus":I
    iget v6, v14, Lcom/android/server/pm/EphemeralResolverConnection$ConnectionException;->failure:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 216
    const/4 v15, 0x2

    .line 218
    :cond_2
    const/16 v6, 0x384

    invoke-static {v6, v12, v13, v5, v15}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 220
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    if-eqz v6, :cond_1

    .line 221
    const/4 v6, 0x2

    if-ne v15, v6, :cond_3

    .line 222
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Phase2; bind timed out"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_3
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Phase2; service connection error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 23
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p6, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/AuxiliaryResolveInfo;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "instantAppResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppResolveInfo;>;"
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v21

    .line 325
    .local v21, "shaPrefix":[I
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v11

    .line 326
    .local v11, "digestBytes":[[B
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 327
    .local v10, "failureIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v6

    or-int/lit16 v6, v6, 0x200

    invoke-virtual {v10, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, v21

    array-length v6, v0

    add-int/lit8 v12, v6, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_b

    .line 331
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "instantAppInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/InstantAppResolveInfo;

    .line 332
    .local v5, "instantAppInfo":Landroid/content/pm/InstantAppResolveInfo;
    aget-object v6, v11, v12

    invoke-virtual {v5}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 335
    if-eqz p4, :cond_1

    .line 336
    invoke-virtual {v5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 335
    if-nez v6, :cond_0

    .line 340
    :cond_1
    invoke-virtual {v5}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v15

    .line 342
    .local v15, "instantAppFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 343
    :cond_2
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    if-eqz v6, :cond_3

    .line 344
    const-string/jumbo v6, "PackageManager"

    const-string/jumbo v7, "No app filters; go to phase 2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_3
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 347
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 348
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 349
    const/4 v10, 0x0

    move-object/from16 v8, p6

    .line 346
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    .end local v10    # "failureIntent":Landroid/content/Intent;
    return-object v4

    .line 353
    .restart local v10    # "failureIntent":Landroid/content/Intent;
    :cond_4
    new-instance v17, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;-><init>()V

    .line 354
    .local v17, "instantAppResolver":Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v18, v6, -0x1

    .local v18, "j":I
    :goto_2
    if-ltz v18, :cond_7

    .line 355
    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/InstantAppIntentFilter;

    .line 356
    .local v14, "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    invoke-virtual {v14}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v22

    .line 357
    .local v22, "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v22, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 354
    :cond_5
    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    .line 360
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v19, v6, -0x1

    .local v19, "k":I
    :goto_3
    if-ltz v19, :cond_5

    .line 362
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 363
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    invoke-virtual {v14}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v7

    .line 364
    const/4 v9, 0x0

    move-object/from16 v8, p6

    .line 362
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo;Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 365
    .local v4, "intentInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 360
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 369
    .end local v4    # "intentInfo":Landroid/content/pm/AuxiliaryResolveInfo;
    .end local v14    # "instantAppFilter":Landroid/content/pm/InstantAppIntentFilter;
    .end local v19    # "k":I
    .end local v22    # "splitFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_7
    const/4 v6, 0x0

    .line 368
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v20

    .line 370
    .local v20, "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 371
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    if-eqz v6, :cond_8

    .line 372
    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 373
    .local v13, "info":Landroid/content/pm/AuxiliaryResolveInfo;
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] Found match;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 374
    const-string/jumbo v8, " package: "

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 374
    iget-object v8, v13, Landroid/content/pm/AuxiliaryResolveInfo;->packageName:Ljava/lang/String;

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 375
    const-string/jumbo v8, ", split: "

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 375
    iget-object v8, v13, Landroid/content/pm/AuxiliaryResolveInfo;->splitName:Ljava/lang/String;

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 376
    const-string/jumbo v8, ", versionCode: "

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 376
    iget v8, v13, Landroid/content/pm/AuxiliaryResolveInfo;->versionCode:I

    .line 373
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v13    # "info":Landroid/content/pm/AuxiliaryResolveInfo;
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/AuxiliaryResolveInfo;

    return-object v6

    .line 379
    :cond_9
    sget-boolean v6, Lcom/android/server/pm/InstantAppResolver;->DEBUG_EPHEMERAL:Z

    if-eqz v6, :cond_0

    .line 380
    const-string/jumbo v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] No matches found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    const-string/jumbo v8, " package: "

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    invoke-virtual {v5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 382
    const-string/jumbo v8, ", versionCode: "

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 382
    invoke-virtual {v5}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v8

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 330
    .end local v5    # "instantAppInfo":Landroid/content/pm/InstantAppResolveInfo;
    .end local v15    # "instantAppFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    .end local v17    # "instantAppResolver":Lcom/android/server/pm/PackageManagerService$EphemeralIntentResolver;
    .end local v18    # "j":I
    .end local v20    # "matchedResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo;>;"
    :cond_a
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 387
    .end local v16    # "instantAppInfo$iterator":Ljava/util/Iterator;
    :cond_b
    const/4 v6, 0x0

    return-object v6
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 91
    :cond_0
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static logMetrics(IJLjava/lang/String;I)V
    .locals 7
    .param p0, "action"    # I
    .param p1, "startTime"    # J
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 392
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 393
    const/4 v2, 0x4

    .line 392
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 395
    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 394
    const/16 v3, 0x385

    .line 392
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 396
    const/16 v2, 0x387

    .line 392
    invoke-virtual {v1, v2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 397
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x386

    .line 392
    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 398
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    invoke-static {}, Lcom/android/server/pm/InstantAppResolver;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 399
    return-void
.end method
