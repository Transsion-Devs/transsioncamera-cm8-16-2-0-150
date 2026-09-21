.class public final Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public effect:Lcom/ss/ugc/effectplatform/model/Effect;

.field public simple_video_info:Lcom/ss/ugc/effectplatform/model/net/SimpleVideoInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;-><init>(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/SimpleVideoInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/SimpleVideoInfo;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;->effect:Lcom/ss/ugc/effectplatform/model/Effect;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;->simple_video_info:Lcom/ss/ugc/effectplatform/model/net/SimpleVideoInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/SimpleVideoInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 59
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;-><init>(Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/SimpleVideoInfo;)V

    return-void
.end method
