.class final Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;
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

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $licenseBuffer:[B

.field final synthetic $needReverseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $progressUnit:F

.field final synthetic $transProgress:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;FLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "F",
            "Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;",
            "[B)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$dataList:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$needReverseList:Ljava/util/List;

    iput-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$transProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p5, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$progressUnit:F

    iput-object p6, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    iput-object p7, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$licenseBuffer:[B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .registers 12

    .line 52
    const-string v0, "startResize isSuccess? "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPrepareHelper"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 54
    sget-object v2, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;

    .line 55
    iget-object v3, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$context:Landroid/content/Context;

    .line 56
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$dataList:Ljava/util/List;

    .line 57
    iget-object v5, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$needReverseList:Ljava/util/List;

    .line 58
    iget-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$transProgress:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v6, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 59
    iget v7, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$progressUnit:F

    .line 60
    iget-object v8, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    .line 61
    iget-object v9, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$licenseBuffer:[B

    .line 54
    # invokes: Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->reverseData(Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V
    invoke-static/range {v2 .. v9}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;->access$reverseData(Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper;Landroid/content/Context;Ljava/util/List;Ljava/util/List;FFLcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;[B)V

    return-void

    .line 64
    :cond_27
    const-string p1, "resize fail"

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$prepare$3;->$callback:Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;

    new-instance p1, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;

    const-string v0, "resize video failed"

    invoke-direct {p1, v0}, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/MediaPrepareHelper$PrepareCallback;->onFailed(Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;)V

    return-void
.end method
