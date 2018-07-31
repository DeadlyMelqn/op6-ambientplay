.class final Lcom/android/server/VibratorService$VibratorShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorShellCommand"
.end annotation


# static fields
.field private static final MAX_VIBRATION_MS:J = 0xc8L


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1083
    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 1084
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$VibratorShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "-this2"    # Lcom/android/server/VibratorService$VibratorShellCommand;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private runVibrate()I
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1097
    const-string/jumbo v5, "zen_mode"

    .line 1096
    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1098
    .local v10, "zenMode":I
    if-eqz v10, :cond_1

    .line 1099
    const/4 v9, 0x0

    .local v9, "pw":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    .line 1100
    .local v9, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v0, "Ignoring because device is on DND mode "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    const-class v0, Landroid/provider/Settings$Global;

    const-string/jumbo v5, "ZEN_MODE_"

    invoke-static {v0, v5, v10}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1104
    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    throw v1
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1106
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .end local v10    # "zenMode":I
    :catch_0
    move-exception v8

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1111
    .local v6, "duration":J
    const-wide/16 v0, 0xc8

    cmp-long v0, v6, v0

    if-lez v0, :cond_6

    .line 1112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maximum duration is 200"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    .end local v6    # "duration":J
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "zenMode":I
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1103
    :cond_2
    return v4

    .line 1104
    .end local v9    # "pw":Ljava/io/PrintWriter;
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_1
    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    :try_start_6
    throw v1

    :catch_3
    move-exception v5

    if-nez v1, :cond_4

    move-object v1, v5

    goto :goto_2

    :cond_4
    if-eq v1, v5, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    throw v0
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1114
    .end local v10    # "zenMode":I
    .restart local v6    # "duration":J
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, "description":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 1116
    const-string/jumbo v2, "Shell command"

    .line 1120
    :cond_7
    const/4 v0, -0x1

    invoke-static {v6, v7, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 1121
    .local v3, "effect":Landroid/os/VibrationEffect;
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1122
    iget-object v5, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 1121
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V

    .line 1123
    return v4

    .line 1104
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "effect":Landroid/os/VibrationEffect;
    .end local v6    # "duration":J
    .restart local v10    # "zenMode":I
    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1088
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result v0

    return v0

    .line 1091
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1128
    const/4 v0, 0x0

    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1129
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v1, "Vibrator commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    const-string/jumbo v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    const-string/jumbo v1, "  vibrate duration [description]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    const-string/jumbo v1, "    Vibrates for duration milliseconds; ignored when device is on DND "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v1, "    (Do Not Disturb) mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1136
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1137
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v2, :cond_3

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    if-eq v2, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v1

    .line 1138
    .restart local v0    # "pw":Ljava/io/PrintWriter;
    :cond_4
    return-void

    .line 1137
    .end local v0    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v1

    goto :goto_1
.end method
