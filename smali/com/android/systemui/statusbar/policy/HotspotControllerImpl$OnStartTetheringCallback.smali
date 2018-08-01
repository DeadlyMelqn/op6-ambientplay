.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HotspotController"

    const-string/jumbo v1, "onTetheringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    .line 148
    return-void
.end method

.method public onTetheringStarted()V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HotspotController"

    const-string/jumbo v1, "onTetheringStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z

    .line 140
    return-void
.end method
