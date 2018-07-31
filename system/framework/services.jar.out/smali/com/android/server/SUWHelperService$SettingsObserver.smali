.class final Lcom/android/server/SUWHelperService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SUWHelperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SUWHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final USER_SETUP_COMPLETE_BY_812:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/SUWHelperService;


# direct methods
.method public constructor <init>(Lcom/android/server/SUWHelperService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SUWHelperService;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    const-string/jumbo v0, "user_setup_complete_by_812"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->USER_SETUP_COMPLETE_BY_812:Landroid/net/Uri;

    .line 62
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v0}, Lcom/android/server/SUWHelperService;->-get1(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->USER_SETUP_COMPLETE_BY_812:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/SUWHelperService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 67
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 71
    const-string/jumbo v0, "SUWHelperService"

    const-string/jumbo v1, "OnChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/server/SUWHelperService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 73
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 76
    invoke-static {}, Lcom/android/server/SUWHelperService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    const-string/jumbo v6, "SUWHelperService"

    const-string/jumbo v7, "update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v6, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v6}, Lcom/android/server/SUWHelperService;->-get1(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 79
    const-string/jumbo v7, "user_setup_complete"

    .line 78
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_3

    const/4 v4, 0x1

    .line 80
    .local v4, "setupComplete":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v6}, Lcom/android/server/SUWHelperService;->-get1(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 81
    const-string/jumbo v7, "user_setup_complete_by_812"

    .line 80
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v5, 0x1

    .line 82
    .local v5, "setupCompleteBy812":Z
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 83
    iget-object v6, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v6}, Lcom/android/server/SUWHelperService;->-get1(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "user_setup_complete_by_812"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    invoke-static {}, Lcom/android/server/SUWHelperService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    const-string/jumbo v6, "SUWHelperService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Suw setupComplete success!! : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    iget-object v6, p0, Lcom/android/server/SUWHelperService$SettingsObserver;->this$0:Lcom/android/server/SUWHelperService;

    invoke-static {v6}, Lcom/android/server/SUWHelperService;->-get1(Lcom/android/server/SUWHelperService;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 87
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 88
    .local v3, "pids":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 89
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 90
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "com.google.android.setupwizard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    const-string/jumbo v6, "SUWHelperService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Killing pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 78
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "pids":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v4    # "setupComplete":Z
    .end local v5    # "setupCompleteBy812":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "setupComplete":Z
    goto/16 :goto_0

    .line 80
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "setupCompleteBy812":Z
    goto/16 :goto_1

    .line 96
    :cond_5
    return-void
.end method
