.class Lcom/android/systemui/statusbar/phone/StatusBar$22;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "StatusBar.java"


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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 6209
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 6212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVrMode:Z

    .line 6213
    return-void
.end method
