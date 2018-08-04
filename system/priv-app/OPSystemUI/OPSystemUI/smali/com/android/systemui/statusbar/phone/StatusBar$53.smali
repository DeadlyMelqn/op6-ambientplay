.class Lcom/android/systemui/statusbar/phone/StatusBar$53;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1468
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "Will start listening again in 60 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap16(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1470
    return-void
.end method
