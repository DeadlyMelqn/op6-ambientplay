.class final synthetic Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/PluginFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/preference/PreferenceScreen;

    check-cast p1, Landroid/content/pm/PackageInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/tuner/PluginFragment;->lambda$-com_android_systemui_tuner_PluginFragment_3913(Landroid/util/ArrayMap;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/ShortcutPicker;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/preference/PreferenceScreen;

    check-cast p1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/tuner/ShortcutPicker;->lambda$-com_android_systemui_tuner_ShortcutPicker_3437(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/ShortcutPicker;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/tuner/ShortcutPicker;->lambda$-com_android_systemui_tuner_ShortcutPicker_2792(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->$id:B

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f2:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$S4S5TsLYOFyxLJH4L9zSMxWlxg8;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
