.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/ExpandableView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 339
    .local v0, "endY":F
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 340
    .local v1, "otherEndY":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 341
    const/4 v2, -0x1

    return v2

    .line 342
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 343
    const/4 v2, 0x1

    return v2

    .line 346
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 336
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableView;

    check-cast p2, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;->compare(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    return v0
.end method
