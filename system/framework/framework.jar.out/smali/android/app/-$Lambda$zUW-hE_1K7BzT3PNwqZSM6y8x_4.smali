.class final synthetic Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/app/WallpaperManager$OnColorsChangedListener;

    check-cast p1, Landroid/util/Pair;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/app/WallpaperManager$Globals;->lambda$-android_app_WallpaperManager$Globals_12572(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/util/Pair;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Landroid/app/-$Lambda$zUW-hE_1K7BzT3PNwqZSM6y8x_4;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
