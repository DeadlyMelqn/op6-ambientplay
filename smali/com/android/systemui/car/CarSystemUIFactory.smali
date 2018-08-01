.class public Lcom/android/systemui/car/CarSystemUIFactory;
.super Lcom/android/systemui/SystemUIFactory;
.source "CarSystemUIFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/SystemUIFactory;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_car_CarSystemUIFactory_1311(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Lcom/android/systemui/volume/car/CarVolumeDialogController;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/car/CarVolumeDialogController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "providers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Lcom/android/systemui/Dependency$DependencyProvider;>;"
    invoke-super {p0, p1, p2}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    .line 34
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    new-instance v1, Lcom/android/systemui/car/-$Lambda$FzSWPoBmYhequhh86D4WD0hQurY;

    invoke-direct {v1, p2}, Lcom/android/systemui/car/-$Lambda$FzSWPoBmYhequhh86D4WD0hQurY;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
