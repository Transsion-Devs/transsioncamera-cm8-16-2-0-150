.class public final Lcom/bytedance/ies/cutsame/veadapter/CropEx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toVE(Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;)Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;-><init>()V

    .line 9
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftX()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 10
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperLeftY()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 11
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperRightX()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 12
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getUpperRightY()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 13
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerLeftX()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x4

    aput v2, v1, v3

    .line 14
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerLeftY()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 15
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightX()D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x6

    aput v2, v1, v3

    .line 16
    iget-object v1, v0, Lcom/ss/android/vesdk/filterparam/VEVideoCropFilterParam;->cropNodesCoord:[F

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Crop;->getLowerRightY()D

    move-result-wide v2

    double-to-float p0, v2

    const/4 v2, 0x7

    aput p0, v1, v2

    return-object v0
.end method
