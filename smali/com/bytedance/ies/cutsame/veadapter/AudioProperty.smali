.class public final Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private final curve:Ljava/lang/String;

.field private final volume:D


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;-><init>(DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .registers 5

    const-string v0, "curve"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    .line 213
    iput-wide p1, p0, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;->volume:D

    .line 214
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;->curve:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    .line 214
    const-string p3, ""

    .line 212
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;-><init>(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;)V
    .registers 9

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/AudioKeyframe;->getVolume()D

    move-result-wide v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 216
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;-><init>(DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getCurve()Ljava/lang/String;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;->curve:Ljava/lang/String;

    return-object p0
.end method

.method public final getVolume()D
    .registers 3

    .line 213
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/veadapter/AudioProperty;->volume:D

    return-wide v0
.end method
