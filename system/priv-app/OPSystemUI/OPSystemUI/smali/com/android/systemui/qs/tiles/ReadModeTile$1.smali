.class Lcom/android/systemui/qs/tiles/ReadModeTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "ReadModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ReadModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ReadModeTile;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;
    .param p5, "$anonymous3"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ReadModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;

    .line 41
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->-get0(Lcom/android/systemui/qs/tiles/ReadModeTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleValueChanged:READ_MODE_STATUS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->refreshState()V

    .line 46
    return-void
.end method
