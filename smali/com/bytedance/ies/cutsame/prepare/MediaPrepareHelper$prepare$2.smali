.class final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

.field final synthetic $progressUnit:F

.field final synthetic $transProgress:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;FLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;->$transProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p2, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;->$progressUnit:F

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;->$transProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v2, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;->$progressUnit:F

    add-float/2addr v1, v2

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 47
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$2;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    float-to-int v0, v1

    invoke-interface {p0, v0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;->onProgress(I)V

    return-void
.end method
