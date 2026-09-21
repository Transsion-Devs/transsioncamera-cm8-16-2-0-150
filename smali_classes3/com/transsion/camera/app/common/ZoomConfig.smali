.class public Lcom/transsion/camera/app/common/ZoomConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    }
.end annotation


# instance fields
.field private mCurrentFocalLength:Ljava/lang/String;

.field private mCurrentLensType:I

.field private mDefaultZoomRatio:I

.field private mInstantZoomRatios:[Ljava/lang/String;

.field private mIsContinuousZoomSupported:Z

.field private mIsFocalLengthCustom:Z

.field private mIsOrientationFixed:Z

.field private mIsSATSupported:Z

.field private mIsZoomRangeLimited:Z

.field private mLensInfoList:Ljava/util/List;

.field private final mMarginOffsets:Landroid/util/SparseArray;

.field private mMaxLimitedZoomRatio:I

.field private mMaxZoomRatio:I

.field private mMinLimitedZoomRatio:I

.field private mMinZoomRatio:I

.field private mNeedTranslatePointBarOnRecording:Z

.field private mSupportedZoomTypeFlag:I

.field private mSupportedZoomTypes:[I

.field private mTickViewDegreeScaleFactor:F


# direct methods
.method public static synthetic $r8$lambda$FEs6eLOrnUVjDiAcru4ITssclPI(ILcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Z
    .registers 2

    .line 263
    invoke-static {p1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->-$$Nest$fgetmLensType(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    iput v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mDefaultZoomRatio:I

    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentLensType:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mTickViewDegreeScaleFactor:F

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mNeedTranslatePointBarOnRecording:Z

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsOrientationFixed:Z

    .line 72
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mSupportedZoomTypes:[I

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMarginOffsets:Landroid/util/SparseArray;

    return-void
.end method

.method private updateCurrentFocalLengthByRatio(I)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    if-nez v0, :cond_5

    goto :goto_2f

    .line 108
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 109
    invoke-static {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->-$$Nest$fgetmFocalLength(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_9

    .line 112
    :cond_20
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->containsRatio(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 113
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentFocalLength:Ljava/lang/String;

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public addLensInfo(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    if-nez v0, :cond_c

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    .line 243
    :cond_c
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result v0

    if-gtz v0, :cond_19

    .line 244
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getStartRatio()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->setCurrentRatio(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 246
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCurrentFocalLength()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentFocalLength:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLensInfo()Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 2

    .line 255
    iget v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentLensType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getLensInfoByType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentLensType()I
    .registers 1

    .line 142
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentLensType:I

    return p0
.end method

.method public getDefaultZoomRatio()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mDefaultZoomRatio:I

    return p0
.end method

.method public getInstantZoomRatios()[Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mInstantZoomRatios:[Ljava/lang/String;

    return-object p0
.end method

.method public getLensInfo()Ljava/util/List;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getLensInfoByType(I)Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;
    .registers 4

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 262
    :cond_6
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/common/ZoomConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/ZoomConfig$$ExternalSyntheticLambda0;-><init>(I)V

    .line 263
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 264
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 265
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    return-object p0
.end method

.method public getLimitedZoomRange()Landroid/util/Range;
    .registers 3

    .line 93
    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMinLimitedZoomRatio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMaxLimitedZoomRatio:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public getMarginOffset(I)I
    .registers 3

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMarginOffsets:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getTickViewDegreeScaleFactor()F
    .registers 1

    .line 278
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mTickViewDegreeScaleFactor:F

    return p0
.end method

.method public getZoomRange()Landroid/util/Range;
    .registers 3

    .line 83
    new-instance v0, Landroid/util/Range;

    iget v1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMinZoomRatio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMaxZoomRatio:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public isContinuousZoomSupported()Z
    .registers 1

    .line 209
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsContinuousZoomSupported:Z

    return p0
.end method

.method public isDefaultRatioSet()Z
    .registers 1

    .line 124
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mDefaultZoomRatio:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isFocalLengthCustom()Z
    .registers 1

    .line 269
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsFocalLengthCustom:Z

    return p0
.end method

.method public isOrientationFixed()Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsOrientationFixed:Z

    return p0
.end method

.method public isSATSupported()Z
    .registers 1

    .line 188
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsSATSupported:Z

    return p0
.end method

.method public isZoomRangeLimited()Z
    .registers 1

    .line 179
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsZoomRangeLimited:Z

    return p0
.end method

.method public isZoomTypeSupported(I)Z
    .registers 2

    .line 205
    iget p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mSupportedZoomTypeFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public needTranslateZoomUIOnRecording()Z
    .registers 1

    .line 213
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mNeedTranslatePointBarOnRecording:Z

    return p0
.end method

.method public setCurrentFocalLength(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 5

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentFocalLength:Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    if-nez p1, :cond_7

    goto :goto_29

    .line 151
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 152
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getFocalLengths()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentFocalLength:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 153
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getCurrentRatio()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mDefaultZoomRatio:I

    :cond_29
    :goto_29
    return-object p0
.end method

.method public setCurrentLensTypeByCameraId(Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mLensInfoList:Ljava/util/List;

    if-nez v0, :cond_5

    goto :goto_25

    .line 132
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    .line 133
    invoke-static {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 134
    invoke-static {v1}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->-$$Nest$fgetmLensType(Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mCurrentLensType:I

    :cond_25
    :goto_25
    return-object p0
.end method

.method public setDefaultZoomRatio(I)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 97
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mDefaultZoomRatio:I

    .line 98
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ZoomConfig;->updateCurrentFocalLengthByRatio(I)V

    return-object p0
.end method

.method public setFocalLengthCustom(Z)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 273
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsFocalLengthCustom:Z

    return-object p0
.end method

.method public varargs setInstantZoomRatios([Ljava/lang/String;)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mInstantZoomRatios:[Ljava/lang/String;

    return-object p0
.end method

.method public setLimitedZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 3

    .line 87
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMinLimitedZoomRatio:I

    .line 88
    iput p2, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMaxLimitedZoomRatio:I

    return-object p0
.end method

.method public setMarginOffset(II)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMarginOffsets:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setOrientationFixed(Z)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 226
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsOrientationFixed:Z

    return-object p0
.end method

.method public setSATSupported(Z)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 183
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsSATSupported:Z

    return-object p0
.end method

.method public varargs setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 6

    .line 192
    iput-object p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mSupportedZoomTypes:[I

    .line 193
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget v2, p1, v1

    .line 194
    iget v3, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mSupportedZoomTypeFlag:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mSupportedZoomTypeFlag:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    const/4 p1, 0x4

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsContinuousZoomSupported:Z

    return-object p0
.end method

.method public setTickViewDegreeScaleFactor(F)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 282
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mTickViewDegreeScaleFactor:F

    return-object p0
.end method

.method public setTranslateZoomUIOnRecording(Z)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 217
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mNeedTranslatePointBarOnRecording:Z

    return-object p0
.end method

.method public setZoomRange(II)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 3

    .line 77
    iput p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMinZoomRatio:I

    .line 78
    iput p2, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mMaxZoomRatio:I

    return-object p0
.end method

.method public setZoomRangeLimited(Z)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 174
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ZoomConfig;->mIsZoomRangeLimited:Z

    return-object p0
.end method
