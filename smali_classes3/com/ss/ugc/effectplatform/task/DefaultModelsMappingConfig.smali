.class public final Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig;
.super Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;I)V
    .registers 6

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;

    invoke-direct {v0, p1, p2}, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;I)V

    .line 122
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 123
    new-instance v1, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$2;

    invoke-direct {v1, p1}, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$2;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "biz_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    const-string p2, "/model/api/arithmetics"

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;-><init>(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method
