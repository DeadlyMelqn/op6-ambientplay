.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap10(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-wrap8(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set1(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 271
    const/4 v0, 0x1

    return v0
.end method
