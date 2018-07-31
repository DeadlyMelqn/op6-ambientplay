.class Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;
.super Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Ljava/time/LocalTime;

.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private mStartTime:Ljava/time/LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    .prologue
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;)V

    .line 1288
    invoke-virtual {p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1289
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1295
    return-void
.end method

.method private updateActivated()V
    .locals 9

    .prologue
    .line 1302
    const-string/jumbo v5, "ColorBalanceService"

    const-string/jumbo v6, "CustomAutoMode updateActivated!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get14(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1304
    :try_start_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1305
    .local v2, "now":Ljava/time/LocalDateTime;
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v5, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 1306
    .local v4, "start":Ljava/time/LocalDateTime;
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v5, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 1307
    .local v1, "end":Ljava/time/LocalDateTime;
    invoke-virtual {v2, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    .line 1309
    .local v0, "activated":Z
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    if-nez v5, :cond_7

    const/4 v3, 0x1

    .line 1310
    .local v3, "setActivated":Z
    :goto_0
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v5, v0, :cond_1

    .line 1312
    :cond_0
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1313
    invoke-virtual {v2, v4}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    .line 1319
    .end local v3    # "setActivated":Z
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1320
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get9(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1321
    :cond_2
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CustomAutoMode Reading mode is on,dont turn "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_b

    const-string/jumbo v5, "on"

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " night mode automatically for time up."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    if-eqz v0, :cond_c

    .line 1323
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set11(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1332
    :cond_3
    :goto_3
    if-eqz v3, :cond_6

    .line 1333
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get9(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1334
    :cond_4
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CustomAutoMode Reading mode is on,dont turn "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_d

    const-string/jumbo v5, "on"

    :goto_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " night mode automatically for time up!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_5
    :goto_5
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time up:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_6
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set4(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1378
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set6(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1379
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1381
    return-void

    .line 1309
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "setActivated":Z
    goto/16 :goto_0

    .line 1313
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1315
    :cond_9
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2, v4}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    .local v3, "setActivated":Z
    goto/16 :goto_1

    .local v3, "setActivated":Z
    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1321
    .end local v3    # "setActivated":Z
    :cond_b
    const-string/jumbo v5, "off"

    goto/16 :goto_2

    .line 1325
    :cond_c
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, -0x1

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set11(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1326
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get16(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v7

    and-int/lit8 v7, v7, -0x2

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set10(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1327
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set12(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1328
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->-wrap19(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1303
    .end local v0    # "activated":Z
    .end local v1    # "end":Ljava/time/LocalDateTime;
    .end local v2    # "now":Ljava/time/LocalDateTime;
    .end local v4    # "start":Ljava/time/LocalDateTime;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1334
    .restart local v0    # "activated":Z
    .restart local v1    # "end":Ljava/time/LocalDateTime;
    .restart local v2    # "now":Ljava/time/LocalDateTime;
    .restart local v4    # "start":Ljava/time/LocalDateTime;
    :cond_d
    :try_start_2
    const-string/jumbo v5, "off"

    goto/16 :goto_4

    .line 1336
    :cond_e
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set11(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1337
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1344
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_12

    .line 1345
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v5

    if-eq v5, v0, :cond_10

    .line 1346
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Custom JUST BOOT 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    if-nez v0, :cond_f

    .line 1348
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set2(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1349
    :cond_f
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    goto/16 :goto_5

    .line 1351
    :cond_10
    if-eqz v0, :cond_11

    .line 1352
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1353
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1354
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Custom JUST BOOT 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1356
    :cond_11
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 1357
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set2(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1358
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Custom JUST BOOT 3:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1362
    :cond_12
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get25(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1363
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set17(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1364
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Custom JUST BOOT 4:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    xor-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1366
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    goto/16 :goto_5

    .line 1368
    :cond_13
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method private updateActivatedOnCustomStartTimeChanged()V
    .locals 2

    .prologue
    .line 1297
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1298
    .local v0, "now":Ljava/time/LocalDateTime;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1299
    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 9
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/time/LocalDateTime;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1391
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v8

    .line 1392
    .local v8, "nextStart":Ljava/time/LocalDateTime;
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v7

    .line 1393
    .local v7, "nextEnd":Ljava/time/LocalDateTime;
    invoke-virtual {v8, v7}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNextAlarm nextStart setExact:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 1396
    .local v2, "millis":J
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v4, "ColorBalanceService"

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1402
    :goto_0
    return-void

    .line 1398
    .end local v2    # "millis":J
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNextAlarm nextEnd setExact:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 1400
    .restart local v2    # "millis":J
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v4, "ColorBalanceService"

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 1431
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1432
    .local v0, "now":Ljava/time/LocalDateTime;
    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 1434
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .prologue
    .line 1452
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1454
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 1446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1447
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1448
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 1439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1440
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1441
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1406
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1410
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    .line 1411
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    .line 1414
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1415
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1419
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1420
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1421
    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 1422
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "CustomAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1427
    :cond_0
    return-void
.end method
