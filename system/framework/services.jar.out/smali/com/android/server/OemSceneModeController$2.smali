.class Lcom/android/server/OemSceneModeController$2;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    const-string/jumbo v1, "2"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->-wrap14(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 468
    return-void
.end method
