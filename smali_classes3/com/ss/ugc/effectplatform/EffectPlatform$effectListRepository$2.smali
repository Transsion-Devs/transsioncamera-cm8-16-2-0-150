.class final Lcom/ss/ugc/effectplatform/EffectPlatform$effectListRepository$2;
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

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/EffectPlatform$effectListRepository$2;->this$0:Lcom/ss/ugc/effectplatform/EffectPlatform;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ss/ugc/effectplatform/repository/EffectListRepository;
    .registers 2

    .line 81
    new-instance v0, Lcom/ss/ugc/effectplatform/repository/EffectListRepository;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/EffectPlatform$effectListRepository$2;->this$0:Lcom/ss/ugc/effectplatform/EffectPlatform;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform;->getEffectConfig()Lcom/ss/ugc/effectplatform/EffectConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ss/ugc/effectplatform/repository/EffectListRepository;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 78
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectPlatform$effectListRepository$2;->invoke()Lcom/ss/ugc/effectplatform/repository/EffectListRepository;

    move-result-object p0

    return-object p0
.end method
