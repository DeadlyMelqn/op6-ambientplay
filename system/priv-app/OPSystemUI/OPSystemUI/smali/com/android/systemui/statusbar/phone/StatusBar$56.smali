.class Lcom/android/systemui/statusbar/phone/StatusBar$56;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get0(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->hideIndication()V

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$12;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->queryAndUpdateWeather()V

    .line 1525
    return-void
.end method
