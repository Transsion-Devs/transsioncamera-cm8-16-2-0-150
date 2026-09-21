.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;
.source "SourceFile"


# instance fields
.field private mAntiVideoRestrict4K30FPS:Z

.field protected mInterval:I

.field private mIsLimitMode:Z

.field private mIsNormalCamera:Z

.field private mIsStartRecording:Z

.field private mIsTeleCamera:Z

.field private mIsWideCamera:Z

.field protected mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field private mMaxWideRecordingProgress:I

.field protected mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

.field protected mPaint:Landroid/graphics/Paint;

.field private mResources:Landroid/content/res/Resources;

.field private mTeleProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .registers 13

    .line 56
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsStartRecording:Z

    .line 44
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsWideCamera:Z

    .line 45
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsTeleCamera:Z

    .line 46
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsNormalCamera:Z

    .line 47
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsLimitMode:Z

    .line 48
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mAntiVideoRestrict4K30FPS:Z

    .line 49
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mTeleProgress:I

    const/16 p2, 0x4e20

    .line 50
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMaxWideRecordingProgress:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    .line 60
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_graduation_interval:I

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_major_graduation_width:I

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_major_graduation_height:I

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_minor_graduation_width:I

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_minor_graduation_height:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->default_stroke_border:I

    .line 74
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    const/4 v6, 0x0

    .line 77
    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 78
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_minor_graduation_color:I

    .line 79
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 80
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_stroke_border_color:I

    .line 81
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 83
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    .line 84
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move v6, v1

    .line 86
    new-instance v1, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move v7, v4

    .line 90
    new-instance v4, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    move v6, v0

    move v8, v5

    move v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;-><init>(IIIII)V

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoRestrict4K30FPS:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mAntiVideoRestrict4K30FPS:Z

    if-eqz p1, :cond_91

    const/16 p2, 0x2328

    .line 95
    :cond_91
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMaxWideRecordingProgress:I

    return-void
.end method


# virtual methods
.method protected buildMajorIndexList(Ljava/util/List;)Ljava/util/List;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 3

    .line 152
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method protected createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 4

    .line 146
    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mPaint:Landroid/graphics/Paint;

    .line 147
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    goto :goto_f

    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMinorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    :goto_f
    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;-><init>(Landroid/graphics/Paint;Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;)V

    return-object v0
.end method

.method protected getAnimDistanceThreshold()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mWidth:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected getAnimTranslateMax()I
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMajorShapeInfo:Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/ShapeInfo;->mHeight:I

    return p0
.end method

.method protected getIndependentWidth()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getRangeInternal(I)I
    .registers 2

    .line 157
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    return p0
.end method

.method public setCurrentLimitations(ZZZI)V
    .registers 5

    .line 137
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsTeleCamera:Z

    .line 138
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsNormalCamera:Z

    .line 139
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsLimitMode:Z

    .line 140
    iput p4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mTeleProgress:I

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->updateRecordingSeekBarStyle()V

    return-void
.end method

.method public updateRangeInternal()V
    .registers 2

    .line 187
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mInterval:I

    return-void
.end method

.method public updateRecordingSeekBarColor(ZZ)V
    .registers 3

    .line 130
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsStartRecording:Z

    .line 131
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsWideCamera:Z

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->updateRecordingSeekBarStyle()V

    return-void
.end method

.method public updateRecordingSeekBarStyle()V
    .registers 9

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->default_major_graduation_color:I

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_minor_graduation_color:I

    .line 102
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 103
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_minor_graduation_color:I

    .line 104
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/4 v3, 0x0

    .line 106
    :goto_1a
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_69

    .line 107
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    .line 108
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsStartRecording:Z

    iput-boolean v5, v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIsStartRecording:Z

    .line 109
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsLimitMode:Z

    if-eqz v6, :cond_37

    if-eqz v5, :cond_37

    const/16 v6, 0x7530

    goto :goto_3a

    :cond_37
    const v6, 0x186a0

    :goto_3a
    if-eqz v5, :cond_64

    .line 112
    iget v5, v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    iget v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mMaxWideRecordingProgress:I

    if-le v5, v7, :cond_49

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsWideCamera:Z

    if-eqz v7, :cond_49

    .line 113
    iput v1, v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mShapeColor:I

    goto :goto_66

    :cond_49
    const/16 v7, 0x2710

    if-lt v5, v7, :cond_4f

    if-le v5, v6, :cond_56

    .line 114
    :cond_4f
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsNormalCamera:Z

    if-eqz v6, :cond_56

    .line 116
    iput v2, v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mShapeColor:I

    goto :goto_66

    .line 117
    :cond_56
    iget v6, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mTeleProgress:I

    if-ge v5, v6, :cond_61

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->mIsTeleCamera:Z

    if-eqz v5, :cond_61

    .line 118
    iput v2, v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mShapeColor:I

    goto :goto_66

    .line 120
    :cond_61
    iput v0, v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mShapeColor:I

    goto :goto_66

    .line 123
    :cond_64
    iput v0, v4, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mShapeColor:I

    :goto_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_69
    return-void
.end method
