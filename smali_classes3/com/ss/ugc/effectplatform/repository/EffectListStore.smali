.class public final Lcom/ss/ugc/effectplatform/repository/EffectListStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentEffectList:Lbytekn/foundation/concurrent/SharedReference;


# direct methods
.method public constructor <init>()V
    .registers 14

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    new-instance v1, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/ss/ugc/effectplatform/model/EffectChannelResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/Effect;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/EffectPanelModel;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/repository/EffectListStore;->currentEffectList:Lbytekn/foundation/concurrent/SharedReference;

    return-void
.end method
