.class final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->prepare(Landroid/content/Context;Ljava/util/List;Ljava/util/List;[BLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;)V
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

.field final synthetic $progressUnit:F

.field final synthetic $transProgress:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;FLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;->$transProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p2, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;->$progressUnit:F

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 45
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;->invoke(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(F)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;->$transProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;->$progressUnit:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 50
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$1;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;->onProgress(I)V

    return-void
.end method
