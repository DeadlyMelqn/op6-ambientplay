.class final synthetic Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;

.field public static final synthetic $INST$1:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/server/content/SyncOperation;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/content/SyncManager;->lambda$-com_android_server_content_SyncManager_82480(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/server/content/SyncOperation;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/content/SyncManager;->lambda$-com_android_server_content_SyncManager_82999(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;-><init>(B)V

    sput-object v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->$INST$0:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;

    new-instance v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;-><init>(B)V

    sput-object v0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->$INST$1:Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->$id:B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/content/-$Lambda$doNli3wDRrwDz12cAoe6lOOQskA$1;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
