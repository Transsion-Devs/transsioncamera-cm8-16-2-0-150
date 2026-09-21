.class public final Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository$fetchThirdPartyEffectInfo$executionContext$1;
.super Lcom/ss/ugc/effectplatform/ExecutionContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->fetchThirdPartyEffectInfo(Ljava/lang/String;Ljava/util/Map;Lkotlin/reflect/KClass;Lcom/ss/ugc/effectplatform/listener/IEffectPlatformBaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository$fetchThirdPartyEffectInfo$executionContext$1;->this$0:Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/ExecutionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackManager()Lcom/ss/ugc/effectplatform/listener/CallbackManager;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository$fetchThirdPartyEffectInfo$executionContext$1;->this$0:Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    # getter for: Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->access$getEffectConfig$p(Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;)Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCallbackManager$effectplatform_release()Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    move-result-object p0

    return-object p0
.end method

.method public getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository$fetchThirdPartyEffectInfo$executionContext$1;->this$0:Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    # getter for: Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->access$getEffectConfig$p(Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;)Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    return-object p0
.end method

.method public getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository$fetchThirdPartyEffectInfo$executionContext$1;->this$0:Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;

    # getter for: Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;->access$getEffectConfig$p(Lcom/ss/ugc/effectplatform/repository/ThirdPartyEffectRepository;)Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object p0

    return-object p0
.end method
