.class Lcom/android/server/wm/WindowManagerService$5;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLandroid/view/WindowManagerPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1356
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->-wrap8(Lcom/android/server/wm/WindowManagerService;)V

    .line 1359
    return-void
.end method