.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;
.super Ljava/lang/Object;
.source "NavigationBarGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NavigationBarGuide"

    const-string/jumbo v1, "mConfirm.run()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-get1(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-set0(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;Z)Z

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-wrap3(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->-wrap1(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)V

    .line 402
    return-void
.end method
