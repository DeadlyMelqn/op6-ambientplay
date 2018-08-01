.class Lcom/android/systemui/statusbar/NotificationGuts$1;
.super Ljava/lang/Object;
.source "NotificationGuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get1(Lcom/android/systemui/statusbar/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get0(Lcom/android/systemui/statusbar/NotificationGuts;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$1;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    .line 141
    :cond_0
    return-void
.end method
