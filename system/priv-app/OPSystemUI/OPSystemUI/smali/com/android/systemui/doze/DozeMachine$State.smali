.class public final enum Lcom/android/systemui/doze/DozeMachine$State;
.super Ljava/lang/Enum;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/doze/DozeMachine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

.field private static final synthetic -com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

.field public static final enum DOZE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum FINISH:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

.field public static final enum UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;


# direct methods
.method private static synthetic -getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine$State;->values()[Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->-com-android-systemui-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 48
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 49
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 51
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "DOZE"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 52
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 53
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "DOZE_AOD"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    .line 55
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "DOZE_REQUEST_PULSE"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 57
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "DOZE_PULSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 58
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 59
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "DOZE_PULSE_DONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 60
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    .line 61
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "FINISH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 62
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 63
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "DOZE_AOD_PAUSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    .line 65
    new-instance v0, Lcom/android/systemui/doze/DozeMachine$State;

    const-string/jumbo v1, "DOZE_AOD_PAUSING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/doze/DozeMachine$State;-><init>(Ljava/lang/String;I)V

    .line 66
    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/systemui/doze/DozeMachine$State;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/systemui/doze/DozeMachine$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/android/systemui/doze/DozeMachine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/doze/DozeMachine$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->$VALUES:[Lcom/android/systemui/doze/DozeMachine$State;

    return-object v0
.end method


# virtual methods
.method canPulse()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine$State;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 74
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method screenState()I
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine$State;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    return v0

    .line 97
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 99
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 102
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method staysAwake()Z
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/android/systemui/doze/DozeMachine$State;->-getcom-android-systemui-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 84
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
