.class public final Lcom/ss/ugc/effectplatform/repository/UserEffectRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

.field private tagsCachedMap:Lbytekn/foundation/concurrent/SharedReference;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 3

    const-string v0, "effectConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/repository/UserEffectRepository;->effectConfig:Lcom/ss/ugc/effectplatform/EffectConfig;

    .line 53
    new-instance p1, Lbytekn/foundation/concurrent/SharedReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/repository/UserEffectRepository;->tagsCachedMap:Lbytekn/foundation/concurrent/SharedReference;

    return-void
.end method
