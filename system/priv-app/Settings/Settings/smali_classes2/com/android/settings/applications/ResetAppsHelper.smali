.class public Lcom/android/settings/applications/ResetAppsHelper;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"

.field private static final PKG_DEFAULT_DIALER:Ljava/lang/String; = "com.android.dialer"

.field private static final PKG_DEFAULT_LAUNCHER:Ljava/lang/String; = "net.oneplus.launcher/net.oneplus.launcher.Launcher"

.field private static final PKG_DEFAULT_MMS:Ljava/lang/String; = "com.android.mms"


# instance fields
.field private final mAom:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mNm:Landroid/app/INotificationManager;

.field private final mNpm:Landroid/net/NetworkPolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResetDialog:Landroid/app/AlertDialog;

.field private final mWvus:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/app/INotificationManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/ResetAppsHelper;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ResetAppsHelper;->isNonEnableableFallback(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ResetAppsHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/ResetAppsHelper;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ResetAppsHelper;->resetDefaultApps(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/settings/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 78
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 80
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    .line 81
    const-string/jumbo v0, "webviewupdate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mWvus:Landroid/webkit/IWebViewUpdateService;

    .line 82
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    .line 83
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    .line 84
    return-void
.end method

.method private isNonEnableableFallback(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ResetAppsHelper;->mWvus:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v1, p1}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private resetDefaultApps(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    .line 203
    .local v14, "userId":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 205
    .local v12, "mPm":Landroid/content/pm/PackageManager;
    sget-object v15, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v15}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initDefaultAppSettings(Z)V

    .line 206
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v5, "com.android.chrome"

    .line 207
    .local v5, "defaultBrowser":Ljava/lang/String;
    :goto_0
    invoke-virtual {v12, v5, v14}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v13

    .line 208
    .local v13, "result":Z
    const-string/jumbo v15, "com.android.mms"

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 209
    const-string/jumbo v15, "com.android.dialer"

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 211
    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v15, "android.intent.action.MAIN"

    invoke-direct {v11, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v11, "mHomeFilter":Landroid/content/IntentFilter;
    const-string/jumbo v15, "android.intent.category.HOME"

    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v15, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 214
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v10, "mAllHomeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v7, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v12, v7}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    .line 217
    .local v4, "currentDefaultHome":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_1

    .line 218
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 219
    .local v2, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 220
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v15, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v1, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v1, "activityName":Landroid/content/ComponentName;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 206
    .end local v1    # "activityName":Landroid/content/ComponentName;
    .end local v2    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v4    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v5    # "defaultBrowser":Ljava/lang/String;
    .end local v7    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "i":I
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "mAllHomeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v11    # "mHomeFilter":Landroid/content/IntentFilter;
    .end local v13    # "result":Z
    :cond_0
    const-string/jumbo v5, "com.android.browser"

    .restart local v5    # "defaultBrowser":Ljava/lang/String;
    goto :goto_0

    .line 223
    .restart local v4    # "currentDefaultHome":Landroid/content/ComponentName;
    .restart local v7    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "i":I
    .restart local v10    # "mAllHomeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v11    # "mHomeFilter":Landroid/content/IntentFilter;
    .restart local v13    # "result":Z
    :cond_1
    const-string/jumbo v15, "net.oneplus.launcher/net.oneplus.launcher.Launcher"

    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 224
    .local v3, "component":Landroid/content/ComponentName;
    const/4 v15, 0x0

    new-array v15, v15, [Landroid/content/ComponentName;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/content/ComponentName;

    const/high16 v16, 0x100000

    move/from16 v0, v16

    invoke-virtual {v12, v11, v0, v15, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v4    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v5    # "defaultBrowser":Ljava/lang/String;
    .end local v7    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "i":I
    .end local v10    # "mAllHomeComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v11    # "mHomeFilter":Landroid/content/IntentFilter;
    .end local v12    # "mPm":Landroid/content/pm/PackageManager;
    .end local v13    # "result":Z
    .end local v14    # "userId":I
    :goto_2
    return-void

    .line 225
    :catch_0
    move-exception v6

    .line 226
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "ResetAppsHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "reset default app exception."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    const v1, 0x7f0f0b1f

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 109
    const v1, 0x7f0f0b20

    .line 107
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    const v1, 0x7f0f0b21

    .line 107
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    const v1, 0x7f0f06bf

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    .line 115
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-eq v0, p1, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/android/settings/applications/ResetAppsHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ResetAppsHelper$1;-><init>(Lcom/android/settings/applications/ResetAppsHelper;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    .line 122
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    const-string/jumbo v0, "resetDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/applications/ResetAppsHelper;->buildResetDialog()V

    .line 90
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 101
    iput-object v1, p0, Lcom/android/settings/applications/ResetAppsHelper;->mResetDialog:Landroid/app/AlertDialog;

    .line 103
    :cond_0
    return-void
.end method
