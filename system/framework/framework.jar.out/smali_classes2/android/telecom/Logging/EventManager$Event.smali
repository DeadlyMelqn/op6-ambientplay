.class public Landroid/telecom/Logging/EventManager$Event;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public eventId:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "data"    # Ljava/lang/Object;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    .line 138
    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$Event;->time:J

    .line 139
    iput-object p5, p0, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    .line 140
    return-void
.end method
