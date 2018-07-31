.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$Led$1;,
        Lcom/android/server/BatteryService$Led$2;
    }
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private mBatteryFastChargeARGB:I

.field private mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightHandler:Landroid/os/Handler;

.field private final mNotificationLight:Lcom/android/server/lights/Light;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method static synthetic -get0(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/BatteryService$Led;

    .prologue
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/BatteryService$Led;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    new-instance v1, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 1124
    new-instance v1, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1155
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 1157
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1158
    const v2, 0x10e006d

    .line 1157
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1159
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1160
    const v2, 0x10e006e

    .line 1159
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1161
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1162
    const v2, 0x10e006a

    .line 1161
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1163
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1164
    const v2, 0x10e006c

    .line 1163
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1165
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1166
    const v2, 0x10e006b

    .line 1165
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1169
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1170
    const v2, 0x50a000a

    .line 1169
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    .line 1172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1173
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1174
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 1178
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1181
    return-void
.end method


# virtual methods
.method public setLedColors(III)V
    .locals 3
    .param p1, "batteryLowARGB"    # I
    .param p2, "batteryMediumARGB"    # I
    .param p3, "batteryFullARGB"    # I

    .prologue
    .line 1145
    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1146
    iput p2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1147
    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1148
    const-string/jumbo v0, "BatteryLed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBatteryLowARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBatteryMediumARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1149
    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1149
    const-string/jumbo v2, "mBatteryFullARGB = "

    .line 1148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1150
    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void
.end method

.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    .line 1188
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1189
    return-void

    .line 1192
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get3(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1194
    return-void

    .line 1197
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1198
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1200
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get7(Lcom/android/server/BatteryService;)I

    move-result v2

    if-gt v0, v2, :cond_6

    .line 1202
    if-ne v1, v3, :cond_4

    .line 1204
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 1243
    :goto_1
    return-void

    .line 1205
    :cond_3
    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    goto :goto_0

    .line 1209
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_5

    .line 1210
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1211
    return-void

    .line 1214
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1218
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1219
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1218
    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 1221
    :cond_6
    if-eq v1, v3, :cond_7

    .line 1222
    if-ne v1, v4, :cond_b

    .line 1227
    :cond_7
    if-eq v1, v4, :cond_8

    const/16 v2, 0x63

    if-le v0, v2, :cond_9

    .line 1233
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 1236
    :cond_9
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get8(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 1237
    :cond_a
    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    goto :goto_2

    .line 1241
    :cond_b
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_1
.end method
