.class Lcom/android/systemui/power/PowerNotificationWarnings$1$1;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/power/PowerNotificationWarnings$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/power/PowerNotificationWarnings$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$1$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$1;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$1$1;->this$1:Lcom/android/systemui/power/PowerNotificationWarnings$1;

    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings$1;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap3(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V

    .line 546
    return-void
.end method