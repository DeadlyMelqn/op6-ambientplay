.class Lcom/android/systemui/statusbar/phone/StatusBar$16$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$16;->onFinishedGoingToSleep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$16;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$16;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$16;

    .line 6120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$16;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$16$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$16;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get13(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraLaunchGestureDetected(I)V

    .line 6124
    return-void
.end method
