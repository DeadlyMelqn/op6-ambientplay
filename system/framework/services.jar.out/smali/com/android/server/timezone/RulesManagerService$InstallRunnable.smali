.class Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field private final mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/timezone/RulesManagerService;
    .param p2, "distroParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p4, "callback"    # Landroid/app/timezone/ICallback;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 254
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 255
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    .line 256
    return-void
.end method

.method private mapInstallerResultToApiCode(I)I
    .locals 1
    .param p1, "installerResult"    # I

    .prologue
    .line 294
    packed-switch p1, :pswitch_data_0

    .line 306
    const/4 v0, 0x1

    return v0

    .line 296
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 298
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 300
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 302
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 304
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 260
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/EventLogTags;->writeTimezoneInstallStarted(Ljava/lang/String;)V

    .line 262
    const/4 v7, 0x0

    .line 265
    .local v7, "success":Z
    const/4 v5, 0x0

    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 268
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 269
    .local v4, "isFdOwner":Z
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct {v3, v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 271
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v0, v3}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v0, "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get0(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v2

    .line 273
    .local v2, "installerResult":I
    invoke-direct {p0, v2}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mapInstallerResultToApiCode(I)I

    move-result v6

    .line 274
    .local v6, "resultCode":I
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 275
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v10, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v8, v10, v6}, Lcom/android/server/timezone/RulesManagerService;->-wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 279
    const/4 v7, 0x1

    .line 290
    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    if-eqz v9, :cond_4

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 280
    .end local v0    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    .end local v2    # "installerResult":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isFdOwner":Z
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "resultCode":I
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v8, "timezone.RulesManagerService"

    const-string/jumbo v9, "Failed to install distro."

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-wrap1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    .line 282
    invoke-static {v8, v9}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 284
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/server/timezone/RulesManagerService;->-wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 289
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 290
    .restart local v0    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    .restart local v2    # "installerResult":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "isFdOwner":Z
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "resultCode":I
    :catch_1
    move-exception v9

    goto :goto_0

    .end local v0    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    .end local v2    # "installerResult":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isFdOwner":Z
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "resultCode":I
    :catch_2
    move-exception v8

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_2
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1
    :goto_3
    if-eqz v9, :cond_3

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 285
    :catchall_1
    move-exception v8

    .line 287
    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v9, v10, v7}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 289
    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    throw v8

    .line 290
    :catch_3
    move-exception v10

    if-nez v9, :cond_2

    move-object v9, v10

    goto :goto_3

    :cond_2
    if-eq v9, v10, :cond_1

    :try_start_7
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 287
    .restart local v0    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    .restart local v2    # "installerResult":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "isFdOwner":Z
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "resultCode":I
    :cond_4
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 289
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->-get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 290
    .end local v0    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    .end local v2    # "installerResult":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "isFdOwner":Z
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "resultCode":I
    :catchall_2
    move-exception v8

    goto :goto_2
.end method
