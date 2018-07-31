.class final synthetic Lcom/android/systemui/plugins/-$Lambda$Upv-4XtKk9gV4CvuUNPqdt0_SZ8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Log$TerribleFailureHandler;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/util/Log$TerribleFailure;
    .param p3, "arg2"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/plugins/-$Lambda$Upv-4XtKk9gV4CvuUNPqdt0_SZ8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/plugins/PluginManagerImpl;->lambda$-com_android_systemui_plugins_PluginManagerImpl_12589(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/-$Lambda$Upv-4XtKk9gV4CvuUNPqdt0_SZ8$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/plugins/-$Lambda$Upv-4XtKk9gV4CvuUNPqdt0_SZ8$1;->$m$0(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    return-void
.end method
