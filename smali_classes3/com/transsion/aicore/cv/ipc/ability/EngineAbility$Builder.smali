.class public final Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/aicore/cv/ipc/ability/EngineAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final build()Landroid/os/Bundle;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public final putAbility(Ljava/util/HashMap;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
    .registers 4

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "ability"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public final putAbilityMethod(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
    .registers 4

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "ability_method"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putAbilityMethodParameter(Ljava/util/HashMap;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
    .registers 4

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "ability_method_parameter_map"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public final putAsync(Z)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "ability_method_async"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final putCallerPackageName(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
    .registers 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "businessName"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final putCapability([Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
    .registers 4

    const-string v0, "capabilities"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public final putFlowInstanceId(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;
    .registers 4

    const-string v0, "flowId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/transsion/aicore/cv/ipc/ability/EngineAbility$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "sceneTag"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
