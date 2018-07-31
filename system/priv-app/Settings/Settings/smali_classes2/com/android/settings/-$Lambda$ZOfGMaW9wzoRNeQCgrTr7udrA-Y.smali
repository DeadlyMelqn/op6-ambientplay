.class final synthetic Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;

.field public static final synthetic $INST$1:Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->lambda$-com_android_settings_ChooseLockPassword$ChooseLockPasswordFragment_21337(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/settings/OxygenChooseLockPassword$ChooseLockPasswordFragment;->lambda$-com_android_settings_OxygenChooseLockPassword$ChooseLockPasswordFragment_21199(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;-><init>(B)V

    sput-object v0, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;->$INST$0:Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;

    new-instance v0, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;-><init>(B)V

    sput-object v0, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;->$INST$1:Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/-$Lambda$ZOfGMaW9wzoRNeQCgrTr7udrA-Y;->$m$1(Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
