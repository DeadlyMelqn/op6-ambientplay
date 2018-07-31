.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;,
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_NO_ARG:I = 0x0

.field private static final CALL_TYPE_PROVIDER:I = 0x1

.field private static final CALL_TYPE_PROVIDER_WITH_EVENT:I = 0x2

.field static final sInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInfo:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

.field private final mWrapped:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->sInfoCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "wrapped"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    .line 41
    return-void
.end method

.method private static createInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    .locals 23
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v20

    .line 116
    .local v20, "superclass":Ljava/lang/Class;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v11, "handlerToEvent":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    if-nez v20, :cond_1

    .line 124
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v17

    .line 126
    .local v17, "methods":[Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v13

    .line 127
    .local v13, "interfaces":[Ljava/lang/Class;
    move-object v3, v13

    .local v3, "-l_5_R":Ljava/lang/Object;
    array-length v4, v13

    .local v4, "-l_6_I":I
    const/4 v5, 0x0

    .local v5, "-l_7_I":I
    :goto_1
    if-lt v5, v4, :cond_2

    .line 133
    move-object/from16 v3, v17

    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v4, :cond_4

    .line 166
    new-instance v12, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    invoke-direct {v12, v11}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;-><init>(Ljava/util/Map;)V

    .line 167
    .local v12, "info":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    sget-object v21, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->sInfoCache:Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-object v12

    .line 118
    .end local v3    # "-l_5_R":Ljava/lang/Object;
    .end local v4    # "-l_6_I":I
    .end local v5    # "-l_7_I":I
    .end local v12    # "info":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    .end local v13    # "interfaces":[Ljava/lang/Class;
    .end local v17    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    invoke-static/range {v20 .. v20}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    move-result-object v19

    .line 119
    .local v19, "superInfo":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    if-eqz v19, :cond_0

    .line 120
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 127
    .end local v19    # "superInfo":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    .restart local v3    # "-l_5_R":Ljava/lang/Object;
    .restart local v4    # "-l_6_I":I
    .restart local v5    # "-l_7_I":I
    .restart local v13    # "interfaces":[Ljava/lang/Class;
    .restart local v17    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    aget-object v14, v3, v5

    .line 128
    .local v14, "intrfc":Ljava/lang/Class;
    invoke-static {v14}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;->mHandlerToEvent:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "-l_9_R":Ljava/lang/Object;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_3

    .line 127
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 128
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 129
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/arch/lifecycle/Lifecycle$Event;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-static {v11, v0, v1, v2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    goto :goto_3

    .line 133
    .end local v6    # "-l_9_R":Ljava/lang/Object;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    .end local v14    # "intrfc":Ljava/lang/Class;
    :cond_4
    aget-object v15, v17, v5

    .line 134
    .local v15, "method":Ljava/lang/reflect/Method;
    const-class v21, Landroid/arch/lifecycle/OnLifecycleEvent;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Landroid/arch/lifecycle/OnLifecycleEvent;

    .line 135
    .local v7, "annotation":Landroid/arch/lifecycle/OnLifecycleEvent;
    if-eqz v7, :cond_7

    .line 138
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v18

    .line 139
    .local v18, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 140
    .local v8, "callType":I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-gtz v21, :cond_8

    .line 147
    :cond_5
    invoke-interface {v7}, Landroid/arch/lifecycle/OnLifecycleEvent;->value()Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v10

    .line 149
    .local v10, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_9

    .line 160
    :cond_6
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    .line 163
    new-instance v16, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v15}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;-><init>(ILjava/lang/reflect/Method;)V

    .line 164
    .local v16, "methodReference":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v11, v0, v10, v1}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 133
    .end local v8    # "callType":I
    .end local v10    # "event":Landroid/arch/lifecycle/Lifecycle$Event;
    .end local v16    # "methodReference":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    .end local v18    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 141
    .restart local v8    # "callType":I
    .restart local v18    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_8
    const/4 v8, 0x1

    .line 142
    const/16 v21, 0x0

    aget-object v21, v18, v21

    const-class v22, Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 143
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 150
    .restart local v10    # "event":Landroid/arch/lifecycle/Lifecycle$Event;
    :cond_9
    const/4 v8, 0x2

    .line 151
    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-class v22, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 155
    sget-object v21, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_6

    .line 156
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "Second arg is supported only for ON_ANY value"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 152
    :cond_a
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "invalid parameter type. second arg must be an event"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 161
    :cond_b
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v22, "cannot have more than 2 params"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private static getInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    .locals 2
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    .line 91
    sget-object v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->sInfoCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    .line 92
    .local v0, "existing":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    if-nez v0, :cond_0

    .line 95
    invoke-static {p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->createInfo(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    move-result-object v0

    .line 96
    return-object v0

    .line 93
    :cond_0
    return-object v0
.end method

.method private invokeCallback(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p1, "reference"    # Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    .param p2, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p3, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    .line 67
    :try_start_0
    iget v2, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mCallType:I

    packed-switch v2, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v2, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const-string/jumbo v4, "Failed to call observer method"

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 72
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :pswitch_1
    :try_start_1
    iget-object v2, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 75
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :pswitch_2
    :try_start_2
    iget-object v2, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private invokeCallbacks(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "info"    # Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;
    .param p2, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p3, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    .line 60
    iget-object v0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;->mEventToHandlers:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->invokeMethodsForEvent(Ljava/util/List;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 61
    iget-object v0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;->mEventToHandlers:Ljava/util/Map;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->invokeMethodsForEvent(Ljava/util/List;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 62
    return-void
.end method

.method private invokeMethodsForEvent(Ljava/util/List;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p2, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p3, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;",
            ">;",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;>;"
    if-nez p1, :cond_1

    .line 56
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;

    .line 53
    .local v1, "reference":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    invoke-direct {p0, v1, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->invokeCallback(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static verifyAndPutHandler(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 5
    .param p1, "newHandler"    # Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;
    .param p2, "newEvent"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .param p3, "klass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "handlers":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$Event;

    .line 102
    .local v0, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    if-nez v0, :cond_1

    .line 109
    :cond_0
    if-eqz v0, :cond_2

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_1
    if-eq p2, v0, :cond_0

    .line 103
    iget-object v1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 104
    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already declared with different @OnLifecycleEvent value: previous"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getReceiver()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mWrapped:Ljava/lang/Object;

    return-object v0
.end method

.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->mInfo:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;

    invoke-direct {p0, v0, p1, p2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->invokeCallbacks(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$CallbackInfo;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 46
    return-void
.end method
