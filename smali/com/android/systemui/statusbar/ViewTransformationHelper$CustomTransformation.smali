.class public abstract Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.super Ljava/lang/Object;
.source "ViewTransformationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ViewTransformationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomTransformation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;
    .locals 1
    .param p1, "interpolationType"    # I
    .param p2, "isFrom"    # Z

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public abstract transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
.end method

.method public abstract transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
.end method
