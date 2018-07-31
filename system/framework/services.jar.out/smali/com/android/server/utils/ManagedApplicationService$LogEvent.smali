.class public Lcom/android/server/utils/ManagedApplicationService$LogEvent;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/ManagedApplicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEvent"
.end annotation


# static fields
.field public static final EVENT_BINDING_DIED:I = 0x3

.field public static final EVENT_CONNECTED:I = 0x1

.field public static final EVENT_DISCONNECTED:I = 0x2

.field public static final EVENT_STOPPED_PERMANENTLY:I = 0x4


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final event:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(JLandroid/content/ComponentName;I)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "event"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-wide p1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    .line 125
    iput-object p3, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 126
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    .line 127
    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 137
    packed-switch p0, :pswitch_data_0

    .line 147
    const-string/jumbo v0, "Unknown Event Occurred"

    return-object v0

    .line 139
    :pswitch_0
    const-string/jumbo v0, "Connected"

    return-object v0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "Disconnected"

    return-object v0

    .line 143
    :pswitch_2
    const-string/jumbo v0, "Binding Died For"

    return-object v0

    .line 145
    :pswitch_3
    const-string/jumbo v0, "Permanently Stopped"

    return-object v0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 4
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    invoke-static {v1}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->eventToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, " Managed Service: "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string/jumbo v0, "None"

    .line 131
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
