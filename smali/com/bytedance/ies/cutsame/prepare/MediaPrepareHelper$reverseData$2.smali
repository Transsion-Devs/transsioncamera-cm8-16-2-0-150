.class final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->reverseData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

.field final synthetic $progress:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $progressUnit:F


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;Lkotlin/jvm/internal/Ref$FloatRef;F)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;->$progress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p3, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;->$progressUnit:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 93
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;->invoke(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(F)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;->$progress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$2;->$progressUnit:F

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    float-to-int p0, v1

    invoke-interface {v0, p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;->onProgress(I)V

    return-void
.end method
