.class public final Lcom/ss/ugc/effectplatform/repository/EffectListRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 3

    const-string v0, "effectConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/repository/EffectListRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    return-void
.end method
