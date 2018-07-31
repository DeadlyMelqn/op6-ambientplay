.class Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "DataSwitchTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataSwitchTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/DataSwitchTile;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->-get0(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->-set0(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z

    .line 269
    return-void
.end method
