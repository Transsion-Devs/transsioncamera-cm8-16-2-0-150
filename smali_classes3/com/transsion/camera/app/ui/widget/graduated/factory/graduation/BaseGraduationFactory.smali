.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCursorMoveCount:I

.field protected mCursorTitleDrawables:Ljava/util/List;

.field protected mCursorTitleTexts:Ljava/util/List;

.field protected mGraduations:Ljava/util/List;

.field protected final mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

.field protected mIndependentCursorIndexList:Ljava/util/List;

.field protected mIndicatorRotateDegree:I

.field protected mLowLight:Z

.field protected mMajorIndex:Ljava/util/List;

.field protected mPauseIndependentIndex:I

.field protected mReversed:Z

.field protected mValues:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$8WyooW7op6-tQ4VVLq3QxxwR5bw(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)Z
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$JW12SUZgBDugapCG6NYib1hfULs(ILcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .registers 2

    .line 258
    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->rotateIndicator(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sfzs7Wak7Lu7O4s6jOKEJNOjmww(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 2

    .line 82
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseGraduationFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    return-void
.end method


# virtual methods
.method protected abstract buildMajorIndexList()Ljava/util/List;
.end method

.method protected abstract buildMajorIndexList(Ljava/util/List;)Ljava/util/List;
.end method

.method protected abstract buildValues()Ljava/util/List;
.end method

.method protected abstract createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.end method

.method protected abstract createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.end method

.method public createGraduations(Z)Ljava/util/List;
    .registers 19

    move-object/from16 v0, p0

    .line 97
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->buildValues()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    .line 98
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_15

    .line 99
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->buildMajorIndexList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    goto :goto_3b

    .line 101
    :cond_15
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->buildMajorIndexList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    .line 102
    sget-object v1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildMajorIndexList, mMajorIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    new-array v6, v2, [Ljava/util/List;

    aput-object v5, v6, v3

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    :goto_3b
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->reverseIfNeeded(Z)V

    .line 105
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    const/4 v5, 0x0

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move-object v11, v5

    :goto_57
    if-ge v6, v1, :cond_ec

    .line 117
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->createGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v12

    .line 118
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getValue(I)I

    move-result v13

    iput v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 119
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isSelectable(I)Z

    move-result v13

    iput-boolean v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 120
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isVibrate(I)Z

    move-result v13

    iput-boolean v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    .line 121
    iget-boolean v13, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {v0, v6, v13}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    move-result-object v13

    iput-object v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v13, :cond_7e

    .line 123
    iget v14, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndicatorRotateDegree:I

    invoke-interface {v13, v14}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->rotateIndicator(I)V

    .line 125
    :cond_7e
    instance-of v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    if-eqz v13, :cond_94

    .line 126
    move-object v13, v12

    check-cast v13, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;

    iget-boolean v14, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {v0, v6, v14}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getGraduationColor(IZ)I

    move-result v14

    iget-boolean v15, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mLowLight:Z

    invoke-virtual {v0, v6, v15}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getBorderColor(IZ)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/DrawGraduation;->updateShapeInfoColor(II)V

    .line 128
    :cond_94
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 129
    invoke-virtual {v0, v9}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getRangeInternal(I)I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    .line 133
    :cond_a0
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 134
    iget v14, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v15, v14, 0x2

    add-int/2addr v15, v7

    iput v15, v13, Landroid/graphics/Point;->x:I

    .line 135
    iget v15, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v3, v15, 0x2

    iput v3, v13, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v1, -0x1

    if-ne v6, v3, :cond_b8

    :goto_b6
    add-int/2addr v7, v14

    goto :goto_ba

    :cond_b8
    add-int/2addr v14, v8

    goto :goto_b6

    .line 143
    :goto_ba
    iput-object v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    if-ge v10, v15, :cond_bf

    move v10, v15

    .line 149
    :cond_bf
    iget-object v3, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result v3

    if-eqz v3, :cond_e4

    if-nez v6, :cond_d5

    .line 153
    new-instance v3, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v3, v12}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 155
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 157
    :cond_d5
    invoke-virtual {v11, v12}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 158
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :goto_db
    new-instance v11, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v11}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    .line 161
    invoke-virtual {v11, v12}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    goto :goto_e7

    .line 163
    :cond_e4
    invoke-virtual {v11, v12}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    :goto_e7
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_57

    .line 168
    :cond_ec
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    if-le v1, v2, :cond_183

    add-int/2addr v8, v7

    sub-int/2addr v1, v2

    .line 172
    div-int/2addr v8, v1

    .line 173
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    if-eqz v1, :cond_109

    .line 174
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 175
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getIndependentWidth()I

    move-result v3

    mul-int/2addr v3, v1

    sub-int v3, v7, v3

    iget v6, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    div-int v8, v3, v6

    goto :goto_10a

    :cond_109
    const/4 v1, 0x0

    .line 178
    :goto_10a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v5

    move-object v11, v9

    const/4 v6, 0x0

    const/16 v16, 0x0

    .line 179
    :goto_114
    iget v12, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    if-ge v6, v12, :cond_17d

    .line 180
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->createDefaultGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    move-result-object v12

    .line 181
    iput v6, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    .line 182
    iput-boolean v2, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mSelectable:Z

    .line 183
    invoke-virtual {v0, v6}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isVibrate(I)Z

    move-result v13

    iput-boolean v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mVibrate:Z

    .line 184
    iput-object v5, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    .line 186
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 187
    iget v14, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mWidth:I

    div-int/lit8 v15, v14, 0x2

    add-int v15, v16, v15

    iput v15, v13, Landroid/graphics/Point;->x:I

    .line 188
    iget v15, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mHeight:I

    div-int/lit8 v15, v15, 0x2

    iput v15, v13, Landroid/graphics/Point;->y:I

    .line 189
    iget v15, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    add-int/lit8 v15, v15, -0x2

    if-ne v6, v15, :cond_148

    .line 190
    div-int/lit8 v14, v14, 0x2

    sub-int v14, v7, v14

    move/from16 v16, v14

    goto :goto_153

    :cond_148
    if-ge v6, v1, :cond_151

    .line 193
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getIndependentWidth()I

    move-result v14

    add-int v16, v16, v14

    goto :goto_153

    :cond_151
    add-int v16, v16, v8

    .line 198
    :goto_153
    iput-object v13, v12, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    .line 199
    iget v13, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v13, :cond_15c

    if-ne v6, v13, :cond_15c

    move-object v9, v12

    :cond_15c
    if-nez v6, :cond_167

    .line 204
    new-instance v11, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;

    invoke-direct {v11, v12}, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;-><init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 206
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    .line 208
    :cond_167
    invoke-virtual {v11, v12}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->add(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 209
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :goto_16d
    new-instance v11, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;

    invoke-direct {v11}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;-><init>()V

    move/from16 v13, p1

    .line 212
    invoke-virtual {v11, v13}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->reverse(Z)V

    .line 213
    invoke-virtual {v11, v12}, Lcom/transsion/camera/app/ui/widget/graduated/range/Range;->setPreMajor(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_114

    .line 215
    :cond_17d
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setCursorRanges(Ljava/util/List;)V

    goto :goto_184

    :cond_183
    move-object v9, v5

    .line 218
    :goto_184
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v7}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentWidth(I)V

    .line 219
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v10}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setContentHeight(I)V

    .line 220
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setRanges(Ljava/util/List;)V

    .line 222
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getAnimTranslateMax()I

    move-result v1

    .line 223
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    add-int/2addr v10, v1

    invoke-virtual {v2, v10}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setExceptedHeight(I)V

    .line 224
    iget-object v2, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimTranslateMax(I)V

    .line 225
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->getAnimDistanceThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setAnimDistanceThreshold(I)V

    .line 226
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 227
    iget v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    if-lez v1, :cond_1b9

    .line 228
    iget-object v1, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mHelper:Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;

    invoke-virtual {v1, v9}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V

    .line 231
    :cond_1b9
    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getAnimDistanceThreshold()I
.end method

.method protected abstract getAnimTranslateMax()I
.end method

.method protected getBorderColor(IZ)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method protected getGraduationColor(IZ)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract getIndependentWidth()I
.end method

.method protected getIndicator(IZ)Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract getRangeInternal(I)I
.end method

.method protected getValue(I)I
    .registers 2

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected isMajor(I)Z
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 266
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isSelectable(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method protected isVibrate(I)Z
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->isMajor(I)Z

    move-result p0

    return p0
.end method

.method protected reverseIfNeeded(Z)V
    .registers 7

    .line 74
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mReversed:Z

    if-eqz p1, :cond_5d

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_33

    .line 80
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 82
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mMajorIndex:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 84
    :cond_3d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    if-eqz p1, :cond_4d

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    .line 86
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 88
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    if-eqz p1, :cond_5d

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    .line 90
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_5d
    return-void
.end method

.method public rotateIndicator(I)V
    .registers 3

    .line 253
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndicatorRotateDegree:I

    if-eq v0, p1, :cond_1f

    .line 254
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndicatorRotateDegree:I

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mGraduations:Ljava/util/List;

    if-eqz p0, :cond_1f

    .line 256
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda1;-><init>()V

    .line 257
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory$$ExternalSyntheticLambda2;-><init>(I)V

    .line 258
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1f
    return-void
.end method

.method public setCursorMoveCount(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorMoveCount:I

    return-void
.end method

.method public setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleTexts:Ljava/util/List;

    .line 65
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mCursorTitleDrawables:Ljava/util/List;

    return-void
.end method

.method public setIndependentCursorIndexList(Ljava/util/List;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mIndependentCursorIndexList:Ljava/util/List;

    return-void
.end method

.method public setPauseIndependentIndex(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mPauseIndependentIndex:I

    return-void
.end method
