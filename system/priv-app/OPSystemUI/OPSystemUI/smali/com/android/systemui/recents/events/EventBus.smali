.class public Lcom/android/systemui/recents/events/EventBus;
.super Landroid/content/BroadcastReceiver;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/events/EventBus$1;,
        Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;,
        Lcom/android/systemui/recents/events/EventBus$Event;,
        Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;,
        Lcom/android/systemui/recents/events/EventBus$ReusableEvent;
    }
.end annotation


# static fields
.field public static DEBUG_TRACE_ALL:Z

.field private static final EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCallCount:I

.field private mCallDurationMicros:J

.field private mEventTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/recents/events/EventBus$Event;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInterprocessEventNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriberTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/EventHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscribers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/events/EventBus;
    .param p1, "eventHandler"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/events/EventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    .line 368
    new-instance v0, Lcom/android/systemui/recents/events/EventBus$1;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/EventBus$1;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    .line 382
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->sLock:Ljava/lang/Object;

    .line 204
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    .line 425
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    .line 426
    return-void
.end method

.method private findRegisteredSubscriber(Ljava/lang/Object;Z)Z
    .locals 4
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "removeFoundSubscriber"    # Z

    .prologue
    const/4 v3, 0x0

    .line 930
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 931
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/events/Subscriber;

    .line 932
    .local v1, "sub":Lcom/android/systemui/recents/events/Subscriber;
    invoke-virtual {v1}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 933
    if-eqz p2, :cond_0

    .line 934
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 936
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 930
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 939
    .end local v1    # "sub":Lcom/android/systemui/recents/events/Subscriber;
    :cond_2
    return v3
.end method

.method public static getDefault()Lcom/android/systemui/recents/events/EventBus;
    .locals 3

    .prologue
    .line 432
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    if-nez v0, :cond_2

    .line 433
    sget-object v1, Lcom/android/systemui/recents/events/EventBus;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    if-nez v0, :cond_1

    .line 435
    sget-boolean v0, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v0, :cond_0

    .line 436
    const-string/jumbo v0, "New EventBus"

    invoke-static {v0}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 438
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/events/EventBus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/recents/events/EventBus;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 441
    :cond_2
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    return-object v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p3, "isInterprocessEventOut"    # Landroid/util/MutableBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/util/MutableBoolean;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 947
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 948
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 949
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    .line 948
    if-eqz v1, :cond_4

    .line 950
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 948
    if-eqz v1, :cond_4

    .line 951
    array-length v1, p2

    if-ne v1, v4, :cond_4

    .line 952
    const-class v1, Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onInterprocessBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 952
    if-eqz v1, :cond_0

    .line 954
    iput-boolean v4, p3, Landroid/util/MutableBoolean;->value:Z

    .line 955
    return v4

    .line 956
    :cond_0
    const-class v1, Lcom/android/systemui/recents/events/EventBus$Event;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 957
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 956
    if-eqz v1, :cond_1

    .line 958
    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z

    .line 959
    return v4

    .line 961
    :cond_1
    sget-boolean v1, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v1, :cond_2

    .line 962
    const-class v1, Lcom/android/systemui/recents/events/EventBus$Event;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method take an Event-based parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 981
    :cond_2
    :goto_0
    return v3

    .line 964
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onInterprocessBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 965
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 964
    if-eqz v1, :cond_2

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method start with method prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_4
    sget-boolean v1, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v1, :cond_2

    .line 972
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method to be public: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_5
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method to be final: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Expected method to return null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static logWithPid(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 995
    const-string/jumbo v0, "EventBus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void
.end method

.method private processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 12
    .param p1, "eventHandler"    # Lcom/android/systemui/recents/events/EventHandler;
    .param p2, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .prologue
    .line 867
    iget-boolean v5, p2, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    if-eqz v5, :cond_2

    .line 868
    iget-boolean v5, p2, Lcom/android/systemui/recents/events/EventBus$Event;->trace:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_1

    .line 869
    :cond_0
    const-string/jumbo v5, "Event dispatch cancelled"

    invoke-static {v5}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 871
    :cond_1
    return-void

    .line 875
    :cond_2
    :try_start_0
    iget-boolean v5, p2, Lcom/android/systemui/recents/events/EventBus$Event;->trace:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_4

    .line 876
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " -> "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventHandler;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 878
    :cond_4
    iget-object v5, p1, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v4

    .line 879
    .local v4, "sub":Ljava/lang/Object;
    if-eqz v4, :cond_7

    .line 880
    const-wide/16 v6, 0x0

    .line 881
    .local v6, "t1":J
    sget-boolean v5, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_5

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v6

    .line 884
    :cond_5
    iget-object v5, p1, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-virtual {v5, v4, p2}, Lcom/android/systemui/recents/events/EventHandlerMethod;->invoke(Ljava/lang/Object;Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 885
    sget-boolean v5, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v5, :cond_6

    .line 886
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 887
    .local v0, "duration":J
    iget-wide v8, p0, Lcom/android/systemui/recents/events/EventBus;->mCallDurationMicros:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lcom/android/systemui/recents/events/EventBus;->mCallDurationMicros:J

    .line 888
    iget v5, p0, Lcom/android/systemui/recents/events/EventBus;->mCallCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/recents/events/EventBus;->mCallCount:I

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-virtual {v8}, Lcom/android/systemui/recents/events/EventHandlerMethod;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " duration: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 890
    const-string/jumbo v8, " microseconds, avg: "

    .line 889
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 890
    iget-wide v8, p0, Lcom/android/systemui/recents/events/EventBus;->mCallDurationMicros:J

    iget v10, p0, Lcom/android/systemui/recents/events/EventBus;->mCallCount:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 889
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 900
    .end local v0    # "duration":J
    .end local v4    # "sub":Ljava/lang/Object;
    .end local v6    # "t1":J
    :cond_6
    :goto_0
    return-void

    .line 893
    .restart local v4    # "sub":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v5, "EventBus"

    const-string/jumbo v8, "Failed to deliver event to null subscriber"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 895
    .end local v4    # "sub":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 896
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "EventBus"

    const-string/jumbo v8, "Failed to invoke method"

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 897
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 898
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .prologue
    .line 813
    iget-object v5, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 814
    .local v2, "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    if-nez v2, :cond_0

    .line 818
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPreDispatch()V

    .line 819
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    .line 820
    return-void

    .line 824
    :cond_0
    const/4 v3, 0x0

    .line 825
    .local v3, "hasPostedEvent":Z
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPreDispatch()V

    .line 829
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 830
    .restart local v2    # "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 831
    .local v1, "eventHandlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 832
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/events/EventHandler;

    .line 833
    .local v0, "eventHandler":Lcom/android/systemui/recents/events/EventHandler;
    iget-object v5, v0, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 834
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    if-eqz v5, :cond_2

    .line 835
    iget-object v5, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/events/EventBus$4;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/systemui/recents/events/EventBus$4;-><init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    const/4 v3, 0x1

    .line 831
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 843
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/events/EventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 849
    .end local v0    # "eventHandler":Lcom/android/systemui/recents/events/EventHandler;
    :cond_3
    if-eqz v3, :cond_4

    .line 850
    iget-object v5, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/events/EventBus$5;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/recents/events/EventBus$5;-><init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 859
    :goto_2
    return-void

    .line 857
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    goto :goto_2
.end method

.method private registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V
    .locals 26
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I
    .param p3, "hasInterprocessEventsChangedOut"    # Landroid/util/MutableBoolean;

    .prologue
    .line 719
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    .line 720
    .local v4, "callingThreadId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v22

    cmp-long v19, v4, v22

    if-eqz v19, :cond_0

    .line 721
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Can not register() a subscriber from a non-main thread."

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 725
    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 726
    return-void

    .line 729
    :cond_1
    const-wide/16 v20, 0x0

    .line 730
    .local v20, "t1":J
    sget-boolean v19, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_2

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v20

    .line 732
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "registerSubscriber("

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 734
    :cond_2
    new-instance v16, Lcom/android/systemui/recents/events/Subscriber;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/events/Subscriber;-><init>(Ljava/lang/Object;J)V

    .line 735
    .local v16, "sub":Lcom/android/systemui/recents/events/Subscriber;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 736
    .local v18, "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 737
    .local v17, "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    if-eqz v17, :cond_5

    .line 738
    sget-boolean v19, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_3

    .line 739
    const-string/jumbo v19, "Subscriber class type already registered"

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 744
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "method$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/events/EventHandlerMethod;

    .line 745
    .local v12, "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 746
    .local v8, "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    new-instance v19, Lcom/android/systemui/recents/events/EventHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    goto :goto_0

    .line 749
    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v12    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    return-void

    .line 752
    .end local v13    # "method$iterator":Ljava/util/Iterator;
    :cond_5
    sget-boolean v19, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_6

    .line 753
    const-string/jumbo v19, "Subscriber class type requires registration"

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 758
    :cond_6
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .restart local v17    # "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v10, Landroid/util/MutableBoolean;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 765
    .local v10, "isInterprocessEvent":Landroid/util/MutableBoolean;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    .line 766
    .local v14, "methods":[Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v22, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v11, v14, v19

    .line 767
    .local v11, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    .line 768
    .local v15, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    .line 769
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15, v10}, Lcom/android/systemui/recents/events/EventBus;->isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 770
    const/16 v23, 0x0

    aget-object v7, v15, v23

    .line 771
    .local v7, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$Event;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 772
    .restart local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    if-nez v8, :cond_7

    .line 773
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .restart local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_7
    iget-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 779
    const/16 v23, 0x1

    :try_start_0
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const-class v24, Landroid/os/Bundle;

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    if-eqz p3, :cond_8

    .line 784
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_8
    new-instance v12, Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-direct {v12, v11, v7}, Lcom/android/systemui/recents/events/EventHandlerMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 791
    .restart local v12    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    new-instance v9, Lcom/android/systemui/recents/events/EventHandler;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-direct {v9, v0, v12, v1}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    .line 792
    .local v9, "handler":Lcom/android/systemui/recents/events/EventHandler;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    .line 796
    sget-boolean v23, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v23, :cond_9

    .line 797
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "  * Method: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 798
    const-string/jumbo v24, " event: "

    .line 797
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 798
    const/16 v24, 0x0

    aget-object v24, v15, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    .line 797
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 799
    const-string/jumbo v24, " interprocess? "

    .line 797
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 799
    iget-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    move/from16 v24, v0

    .line 797
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 766
    .end local v7    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$Event;>;"
    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v9    # "handler":Lcom/android/systemui/recents/events/EventHandler;
    .end local v12    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 786
    .restart local v7    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$Event;>;"
    .restart local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    :catch_0
    move-exception v6

    .line 787
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Expected InterprocessEvent to have a Bundle constructor"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 803
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v7    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$Event;>;"
    .end local v8    # "eventTypeHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v11    # "m":Ljava/lang/reflect/Method;
    .end local v15    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    sget-boolean v19, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v19, :cond_b

    .line 804
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Registered "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, " in "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v22

    sub-long v22, v22, v20

    .line 804
    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 805
    const-string/jumbo v22, " microseconds"

    .line 804
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 807
    :cond_b
    return-void
.end method

.method private sortEventHandlersByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "eventHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/events/EventHandler;>;"
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 989
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 659
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->dumpInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public dumpInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 663
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 664
    .local v8, "innerPrefix":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 665
    .local v7, "innerInnerPrefix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v9, "output":Ljava/lang/StringBuilder;
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const-string/jumbo v12, "Registered class types:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 670
    .local v10, "subsciberTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v12, Lcom/android/systemui/recents/events/EventBus$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/events/EventBus$2;-><init>(Lcom/android/systemui/recents/events/EventBus;)V

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 676
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    .line 677
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 678
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 682
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string/jumbo v12, "Event map:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 686
    .local v0, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    new-instance v12, Lcom/android/systemui/recents/events/EventBus$3;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/events/EventBus$3;-><init>(Lcom/android/systemui/recents/events/EventBus;)V

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 692
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_3

    .line 693
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 694
    .restart local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    const-string/jumbo v12, " -> "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v12, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 699
    .local v4, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "handler$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/events/EventHandler;

    .line 700
    .local v2, "handler":Lcom/android/systemui/recents/events/EventHandler;
    iget-object v12, v2, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v12}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v11

    .line 701
    .local v11, "subscriber":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 702
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 703
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string/jumbo v12, " [0x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 692
    .end local v2    # "handler":Lcom/android/systemui/recents/events/EventHandler;
    .end local v6    # "id":Ljava/lang/String;
    .end local v11    # "subscriber":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 710
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "handler$iterator":Ljava/util/Iterator;
    .end local v4    # "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 638
    sget-boolean v4, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v4, :cond_0

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 642
    :cond_0
    const-string/jumbo v4, "interprocess_event_bundle"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 643
    .local v2, "eventBundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 645
    .local v3, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;>;"
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 646
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;>;"
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "EventBus"

    const-string/jumbo v5, "Failed to create InterprocessEvent"

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .prologue
    .line 581
    sget-boolean v0, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "post("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 586
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    .line 588
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 589
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 452
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    .line 453
    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    .line 466
    return-void
.end method

.method public send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .prologue
    const/4 v4, 0x0

    .line 561
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 562
    .local v0, "callingThreadId":J
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 563
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Can not send() a message from a non-main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    :cond_0
    sget-boolean v2, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v2, :cond_1

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 571
    :cond_1
    iput-boolean v4, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    .line 572
    iput-boolean v4, p1, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    .line 573
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 574
    return-void
.end method

.method public sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/EventBus$Event;

    .prologue
    .line 596
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 597
    .local v0, "callingThreadId":J
    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/Object;

    .prologue
    .line 511
    sget-boolean v8, Lcom/android/systemui/recents/events/EventBus;->DEBUG_TRACE_ALL:Z

    if-eqz v8, :cond_0

    .line 512
    const-string/jumbo v8, "unregister()"

    invoke-static {v8}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 516
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 517
    .local v0, "callingThreadId":J
    iget-object v8, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    .line 518
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Can not unregister() a subscriber from a non-main thread."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 522
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/recents/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 523
    return-void

    .line 526
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 527
    .local v7, "subscriberType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 528
    .local v6, "subscriberMethods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandlerMethod;>;"
    if-eqz v6, :cond_5

    .line 531
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "method$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/events/EventHandlerMethod;

    .line 532
    .local v4, "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    iget-object v8, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v9, v4, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 533
    .local v2, "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 534
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/events/EventHandler;

    iget-object v8, v8, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v8}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_4

    .line 535
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 533
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 540
    .end local v2    # "eventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/events/EventHandler;>;"
    .end local v3    # "i":I
    .end local v4    # "method":Lcom/android/systemui/recents/events/EventHandlerMethod;
    .end local v5    # "method$iterator":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
