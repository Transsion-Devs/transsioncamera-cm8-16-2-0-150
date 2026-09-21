.class public final Lcom/bytedance/ies/cutsame/util/TimeClipParamExt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toVE(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TimeClipParam;)Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TimeClipParam;->getTrimIn()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TimeClipParam;->getTrimOut()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TimeClipParam;->getSpeed()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    return-object v0
.end method
