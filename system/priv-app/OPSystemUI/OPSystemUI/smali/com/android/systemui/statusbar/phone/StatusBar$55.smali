.class Lcom/android/systemui/statusbar/phone/StatusBar$55;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get0(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-virtual {v0}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->hideWeatherIndication()V

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get0(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->TrackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->ArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ambientmusic/AmbientIndicationContainer;->setIndication(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->TrackName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$11;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get17(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/ambientmusic/aoscp/AmbientPlayRecognition$Results;->ArtistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap15(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    return-void
.end method