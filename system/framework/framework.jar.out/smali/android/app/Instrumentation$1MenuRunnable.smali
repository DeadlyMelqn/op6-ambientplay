.class Landroid/app/Instrumentation$1MenuRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuRunnable"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final flags:I

.field private final identifier:I

.field returnValue:Z

.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Instrumentation;
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_identifier"    # I
    .param p4, "_flags"    # I

    .prologue
    .line 867
    iput-object p1, p0, Landroid/app/Instrumentation$1MenuRunnable;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p2, p0, Landroid/app/Instrumentation$1MenuRunnable;->activity:Landroid/app/Activity;

    .line 870
    iput p3, p0, Landroid/app/Instrumentation$1MenuRunnable;->identifier:I

    .line 871
    iput p4, p0, Landroid/app/Instrumentation$1MenuRunnable;->flags:I

    .line 872
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 875
    iget-object v1, p0, Landroid/app/Instrumentation$1MenuRunnable;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 879
    .local v0, "win":Landroid/view/Window;
    iget v1, p0, Landroid/app/Instrumentation$1MenuRunnable;->identifier:I

    .line 880
    iget v2, p0, Landroid/app/Instrumentation$1MenuRunnable;->flags:I

    .line 878
    const/4 v3, 0x0

    .line 877
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Window;->performPanelIdentifierAction(III)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    .line 881
    return-void
.end method
