.class Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field bound:Z

.field final componentName:Landroid/content/ComponentName;

.field retryCount:I

.field service:Landroid/support/v4/app/INotificationSideChannel;

.field taskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/support/v4/app/NotificationManagerCompat$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    .line 567
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 563
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct/range {v1 .. v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    .line 565
    iput v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 568
    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    return-void
.end method
