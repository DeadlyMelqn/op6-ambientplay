.class Lcom/android/server/locksettings/LockSettingsService$Injector$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/LockSettingsStorage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field final synthetic val$storage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/locksettings/LockSettingsService$Injector;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    .line 347
    const-string/jumbo v1, "ro.lockscreen.disable.default"

    .line 346
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 348
    .local v0, "lockScreenDisable":Z
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "lockscreen.disabled"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    :cond_0
    return-void
.end method
