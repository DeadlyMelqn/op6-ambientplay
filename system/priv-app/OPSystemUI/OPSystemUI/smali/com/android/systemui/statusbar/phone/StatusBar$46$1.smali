.class Lcom/android/systemui/statusbar/phone/StatusBar$46$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$46;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$46;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$46;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBar$46;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$46$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$46;

    .line 5203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$46$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$46;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap8(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5207
    return-void
.end method
