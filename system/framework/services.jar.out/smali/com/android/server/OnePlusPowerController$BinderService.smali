.class final Lcom/android/server/OnePlusPowerController$BinderService;
.super Landroid/os/IOnePlusPowerController$Stub;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/os/IOnePlusPowerController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "-this1"    # Lcom/android/server/OnePlusPowerController$BinderService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController$BinderService;-><init>(Lcom/android/server/OnePlusPowerController;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/OnePlusPowerController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 352
    new-instance v0, Lcom/android/server/OnePlusPowerController$Shell;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController$Shell;-><init>(Lcom/android/server/OnePlusPowerController;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/OnePlusPowerController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 353
    return-void
.end method
