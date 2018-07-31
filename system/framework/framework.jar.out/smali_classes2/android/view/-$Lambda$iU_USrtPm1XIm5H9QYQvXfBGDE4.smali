.class final synthetic Landroid/view/-$Lambda$iU_USrtPm1XIm5H9QYQvXfBGDE4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Landroid/view/-$Lambda$iU_USrtPm1XIm5H9QYQvXfBGDE4;->-$f0:I

    check-cast p1, Landroid/view/View;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/view/View;->lambda$-android_view_View_422645(ILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/-$Lambda$iU_USrtPm1XIm5H9QYQvXfBGDE4;->-$f0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Landroid/view/-$Lambda$iU_USrtPm1XIm5H9QYQvXfBGDE4;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
