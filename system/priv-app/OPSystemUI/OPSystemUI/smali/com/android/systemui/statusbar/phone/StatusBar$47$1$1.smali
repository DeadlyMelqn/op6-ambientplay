.class Lcom/android/systemui/statusbar/phone/StatusBar$47$1$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$47$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/StatusBar$47$1;

.field final synthetic val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$47$1;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/systemui/statusbar/phone/StatusBar$47$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47$1$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$47$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47$1$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 6009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6012
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47$1$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$47$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$47$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$47;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get21(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 6013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47$1$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$47$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$47$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$47;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$47;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set11(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)Landroid/view/View;

    .line 6014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$47$1$1;->val$scrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    .line 6015
    return-void
.end method
