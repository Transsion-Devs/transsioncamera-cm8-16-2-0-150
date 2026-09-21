.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseZoomFactory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    return-void
.end method


# virtual methods
.method public createGraduations(Z)Ljava/util/List;
    .registers 15

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->buildValues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->buildMajorIndexList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    .line 47
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->reverseIfNeeded(Z)V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    move-object v7, v3

    move v3, v6

    :goto_28
    if-ge v2, v0, :cond_a8

    .line 60
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v8

    .line 61
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getValue(I)I

    move-result v9

    iput v9, v8, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 62
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isSelectable(I)Z

    move-result v9

    iput-boolean v9, v8, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 63
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isVibrate(I)Z

    move-result v9

    iput-boolean v9, v8, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    .line 64
    iget-boolean v9, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {p0, v2, v9}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    move-result-object v9

    iput-object v9, v8, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v9, :cond_4f

    .line 66
    iget v10, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndicatorRotateDegree:I

    invoke-interface {v9, v10}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->rotateIndicator(I)V

    .line 69
    :cond_4f
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 70
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getRangeInternal(I)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    .line 74
    :cond_5b
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 75
    iget v10, v8, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v3

    iput v11, v9, Landroid/graphics/Point;->x:I

    .line 76
    iget v11, v8, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v12, v11, 0x2

    iput v12, v9, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v0, -0x1

    if-ne v2, v12, :cond_73

    :goto_71
    add-int/2addr v3, v10

    goto :goto_75

    :cond_73
    add-int/2addr v10, v6

    goto :goto_71

    .line 84
    :goto_75
    iput-object v9, v8, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    if-ge v4, v11, :cond_7a

    move v4, v11

    .line 90
    :cond_7a
    iget-object v9, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v9

    if-eqz v9, :cond_a2

    if-nez v2, :cond_90

    .line 94
    new-instance v7, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v7, v8}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 96
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 98
    :cond_90
    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 99
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_96
    new-instance v7, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;

    invoke-direct {v7}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;-><init>()V

    .line 102
    invoke-virtual {v7, p1}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->reverse(Z)V

    .line 103
    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->setLeftGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    goto :goto_a5

    .line 105
    :cond_a2
    invoke-virtual {v7, v8}, Lcom/transsion/camera/app/ui/widget/graduated/range/ZoomRange;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    :goto_a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 109
    :cond_a8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentWidth(I)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p1, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentHeight(I)V

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setRanges(Ljava/util/List;)V

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimTranslateMax()I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    add-int/2addr v4, p1

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setExceptedHeight(I)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimTranslateMax(I)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->getAnimDistanceThreshold()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimDistanceThreshold(I)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    return-object p0
.end method

.method public setCurrentLimitations(ZZZI)V
    .registers 5

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->setCurrentLimitations(ZZZI)V

    return-void
.end method

.method public updateRecordingSeekBarColor(ZZ)V
    .registers 3

    .line 35
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/BaseDrawGraduationFactory;->updateRecordingSeekBarColor(ZZ)V

    return-void
.end method
