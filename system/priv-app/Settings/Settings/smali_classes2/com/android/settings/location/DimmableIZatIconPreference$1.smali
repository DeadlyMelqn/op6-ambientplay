.class Lcom/android/settings/location/DimmableIZatIconPreference$1;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/DimmableIZatIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/DimmableIZatIconPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/location/DimmableIZatIconPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/DimmableIZatIconPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userConsentNotify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    aget-object v1, p3, v3

    if-eqz v1, :cond_0

    aget-object v1, p3, v3

    instance-of v1, v1, Ljava/lang/Boolean;

    .line 134
    if-eqz v1, :cond_0

    .line 136
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    .local v0, "consent":Z
    iget-object v1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference;

    iget-boolean v1, v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mChecked:Z

    if-eq v1, v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference;

    iput-boolean v0, v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mChecked:Z

    .line 139
    iget-object v2, p0, Lcom/android/settings/location/DimmableIZatIconPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference;

    iget-object v1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference;

    invoke-virtual {v1}, Lcom/android/settings/location/DimmableIZatIconPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$1;->this$0:Lcom/android/settings/location/DimmableIZatIconPreference;

    iget-boolean v1, v1, Lcom/android/settings/location/DimmableIZatIconPreference;->mChecked:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/settings/location/DimmableIZatIconPreference;->-wrap0(Lcom/android/settings/location/DimmableIZatIconPreference;Z)V

    .line 142
    .end local v0    # "consent":Z
    :cond_0
    return-object v4

    .line 139
    .restart local v0    # "consent":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
