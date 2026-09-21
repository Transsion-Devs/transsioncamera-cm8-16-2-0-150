.class final Lcom/ss/ugc/effectplatform/EffectPlatform$algorithmRepository$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/EffectPlatform;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/EffectPlatform;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/EffectPlatform;)V
    .registers 2

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectPlatform$algorithmRepository$2;->this$0:Lcom/ss/ugc/effectplatform/EffectPlatform;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;
    .registers 3

    .line 84
    sget-object v0, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;->Companion:Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_11

    .line 85
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform$algorithmRepository$2;->this$0:Lcom/ss/ugc/effectplatform/EffectPlatform;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->getEffectConfig()Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;->initialize(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    .line 87
    :cond_11
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository$Companion;->getInstance()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$algorithmRepository$2;->invoke()Lcom/ss/ugc/effectplatform/repository/AlgorithmRepository;

    move-result-object p0

    return-object p0
.end method
