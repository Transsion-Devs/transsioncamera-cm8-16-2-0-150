.class final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $progress:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $progressUnit:F


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;F)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;->$progress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p2, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;->$progressUnit:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;->$progress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$reverseData$3;->$progressUnit:F

    add-float/2addr v1, p0

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    return-void
.end method
