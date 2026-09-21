.class public final Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public bind_effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field public category_key:Ljava/lang/String;

.field public collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field public effect_with_video_url:Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;

.field public effect_with_video_url_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;",
            ">;"
        }
    .end annotation
.end field

.field public effects:Lcom/ss/ugc/effectplatform/model/Effect;

.field public version:Ljava/lang/String;

.field public video_info:Lcom/ss/ugc/effectplatform/model/net/VideoInfo;


# direct methods
.method public constructor <init>()V
    .registers 12

    .line 0
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/VideoInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/VideoInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            "Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;",
            "Ljava/util/List<",
            "Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ugc/effectplatform/model/Effect;",
            ">;",
            "Lcom/ss/ugc/effectplatform/model/net/VideoInfo;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->category_key:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->effects:Lcom/ss/ugc/effectplatform/model/Effect;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->effect_with_video_url:Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;

    iput-object p5, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->effect_with_video_url_list:Ljava/util/List;

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->collection:Ljava/util/List;

    iput-object p7, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->bind_effects:Ljava/util/List;

    iput-object p8, p0, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;->video_info:Lcom/ss/ugc/effectplatform/model/net/VideoInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/VideoInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_15

    move-object p4, v0

    :cond_15
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_1f

    move-object p6, v0

    :cond_1f
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_24

    move-object p7, v0

    :cond_24
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_29

    move-object p8, v0

    .line 50
    :cond_29
    invoke-direct/range {p0 .. p8}, Lcom/ss/ugc/effectplatform/model/net/CategoryEffect;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ugc/effectplatform/model/Effect;Lcom/ss/ugc/effectplatform/model/net/EffectWithVideoURL;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/ss/ugc/effectplatform/model/net/VideoInfo;)V

    return-void
.end method
