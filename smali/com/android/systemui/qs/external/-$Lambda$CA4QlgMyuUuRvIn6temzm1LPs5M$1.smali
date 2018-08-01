.class final synthetic Lcom/android/systemui/qs/external/-$Lambda$CA4QlgMyuUuRvIn6temzm1LPs5M$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/external/-$Lambda$CA4QlgMyuUuRvIn6temzm1LPs5M$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->lambda$-com_android_systemui_qs_external_CustomTile_10869(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/-$Lambda$CA4QlgMyuUuRvIn6temzm1LPs5M$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/external/-$Lambda$CA4QlgMyuUuRvIn6temzm1LPs5M$1;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
