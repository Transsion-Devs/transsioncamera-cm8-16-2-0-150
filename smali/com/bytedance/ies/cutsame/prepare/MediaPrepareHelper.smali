.class public final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;

.field private static final RESIZE_HELPER$delegate:Lkotlin/Lazy;

.field private static final REVERSE_HELPER$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;

    .line 18
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$REVERSE_HELPER$2;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$REVERSE_HELPER$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->REVERSE_HELPER$delegate:Lkotlin/Lazy;

    .line 19
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$RESIZE_HELPER$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->RESIZE_HELPER$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$reverseData(Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V
    .registers 8

    .line 17
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->reverseData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V

    return-void
.end method

.method private final getRESIZE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;
    .registers 1

    .line 19
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->RESIZE_HELPER$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    return-object p0
.end method

.method private final getREVERSE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;
    .registers 1

    .line 18
    sget-object p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->REVERSE_HELPER$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    return-object p0
.end method

.method private final reverseData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;FF",
            "Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;",
            "[B)V"
        }
    .end annotation

    .line 88
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reverseData reverseList "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPrepareHelper"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 90
    invoke-interface {p6, p2}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;->onSucceed(Ljava/util/List;)V

    return-void

    .line 92
    :cond_1d
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput p4, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 93
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->getREVERSE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    move-result-object p0

    move-object p4, p2

    move-object p2, p3

    new-instance p3, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;

    invoke-direct {p3, p6, p4}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$1;-><init>(Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;Ljava/util/List;)V

    new-instance p4, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;

    invoke-direct {p4, p6, v0, p5}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;-><init>(Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;Lkotlin/jvm/internal/Ref$FloatRef;F)V

    move p6, p5

    new-instance p5, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;

    invoke-direct {p5, v0, p6}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;F)V

    move-object p6, p7

    invoke-virtual/range {p0 .. p6}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->startReverse(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;[B)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->getREVERSE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/prepare/ReverseVideoHelper;->cancelReverse()V

    .line 76
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->getRESIZE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->cancelTrans()V

    return-void
.end method

.method public final prepare(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[BLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;[B",
            "Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reverseFlagList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "licenseBuffer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->getRESIZE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->reset()V

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    .line 117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_3e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3e
    check-cast v2, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;

    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5c

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->getType()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_5c

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5c
    move v1, v4

    goto :goto_2d

    .line 37
    :cond_5e
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->getRESIZE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->getNeedToTransMediaDataList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v5, v1, v0

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "needResizeList "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPrepareHelper"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v7, p4

    move-object v6, p5

    .line 42
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->reverseData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V

    return-void

    .line 44
    :cond_97
    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 45
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->getRESIZE_HELPER()Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;

    move-result-object p0

    new-instance v8, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;

    invoke-direct {v8, v4, v5, p5}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;FLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;)V

    new-instance v9, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;

    invoke-direct {v9, v4, v5, p5}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;FLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;)V

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;

    move-object v1, p1

    move-object v2, p3

    move-object v7, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;FLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V

    move-object v5, v8

    new-instance v8, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$4;

    invoke-direct {v8, p5}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$4;-><init>(Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v7, v0

    move-object v6, v9

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->startResize(Landroid/content/Context;Ljava/util/List;[BLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
