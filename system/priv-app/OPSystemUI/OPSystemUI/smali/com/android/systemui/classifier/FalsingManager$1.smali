.class Lcom/android/systemui/classifier/FalsingManager$1;
.super Landroid/database/ContentObserver;
.source "FalsingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/classifier/FalsingManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager$1;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    .line 82
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager$1;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->-wrap0(Lcom/android/systemui/classifier/FalsingManager;)V

    .line 86
    return-void
.end method
