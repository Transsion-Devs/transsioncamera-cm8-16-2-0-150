.class public Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimDistanceThreshold:I

.field private mAnimTranslateMax:I

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCursorMoveCount:I

.field private mCursorRanges:Ljava/util/List;

.field private mCursorTitleDrawables:Ljava/util/List;

.field private mCursorTitleTexts:Ljava/util/List;

.field private mExceptedHeight:I

.field private mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

.field private mIndependentCursorIndexList:Ljava/util/List;

.field private mNeedReduceWith:Z

.field private mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mPauseIndependentIndex:I

.field private mRanges:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GraduationHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorMoveCount:I

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mIndependentCursorIndexList:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseIndependentIndex:I

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mNeedReduceWith:Z

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createFactory(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;
    .registers 4

    .line 131
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper$1;->$SwitchMap$com$transsion$camera$app$ui$widget$graduated$GraduationStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_f6

    .line 224
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    .line 225
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NONE return default factory"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_ee

    .line 221
    :pswitch_1b
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max10000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max10000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 218
    :pswitch_24
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max800Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max800Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 215
    :pswitch_2d
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max400Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max400Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 212
    :pswitch_36
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max600Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max600Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 209
    :pswitch_3f
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max300Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max300Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 206
    :pswitch_48
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max600Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max600Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 203
    :pswitch_51
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max300Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max300Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 199
    :pswitch_5a
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PTMasterFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 195
    :pswitch_63
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ProNormalFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 191
    :pswitch_6c
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomSuperMoonFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 187
    :pswitch_75
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PortraitBlurFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/PortraitBlurFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 183
    :pswitch_7e
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max6000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max6000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto/16 :goto_ee

    .line 179
    :pswitch_87
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max3000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max3000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 175
    :pswitch_8f
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 171
    :pswitch_97
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max2000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 167
    :pswitch_9f
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 163
    :pswitch_a7
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin60Max1000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 159
    :pswitch_af
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max6000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max6000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 155
    :pswitch_b7
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max3000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max3000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 151
    :pswitch_bf
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 147
    :pswitch_c7
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max2000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 143
    :pswitch_cf
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1500Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1500Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 139
    :pswitch_d7
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1000Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max1000Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 136
    :pswitch_df
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max800Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max800Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    goto :goto_ee

    .line 133
    :pswitch_e7
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max400Factory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max400Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    .line 230
    :goto_ee
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mNeedReduceWith:Z

    if-eqz p0, :cond_f5

    .line 231
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->updateRangeInternal()V

    :cond_f5
    return-object p1

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_df
        :pswitch_d7
        :pswitch_cf
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7e
        :pswitch_75
        :pswitch_6c
        :pswitch_63
        :pswitch_5a
        :pswitch_51
        :pswitch_48
        :pswitch_3f
        :pswitch_36
        :pswitch_2d
        :pswitch_24
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public createGraduations(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;Z)Ljava/util/List;
    .registers 6

    .line 112
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGraduations style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->createFactory(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    .line 114
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorMoveCount:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setCursorMoveCount(I)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mIndependentCursorIndexList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleTexts:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleDrawables:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseIndependentIndex:I

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setPauseIndependentIndex(I)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->createGraduations(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnimDistanceThreshold()I
    .registers 1

    .line 269
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimDistanceThreshold:I

    return p0
.end method

.method public getAnimTranslateMax()I
    .registers 1

    .line 261
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimTranslateMax:I

    return p0
.end method

.method public getContentHeight()I
    .registers 1

    .line 245
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentHeight:I

    return p0
.end method

.method public getContentWidth()I
    .registers 1

    .line 237
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentWidth:I

    return p0
.end method

.method public getCursorRanges()Ljava/util/List;
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorRanges:Ljava/util/List;

    return-object p0
.end method

.method public getExceptedHeight()I
    .registers 1

    .line 253
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mExceptedHeight:I

    return p0
.end method

.method public getPauseGraduation()Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-object p0
.end method

.method public getRanges()Ljava/util/List;
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mRanges:Ljava/util/List;

    return-object p0
.end method

.method public rotateIndicator(I)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->rotateIndicator(I)V

    return-void
.end method

.method public setAnimDistanceThreshold(I)V
    .registers 2

    .line 273
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimDistanceThreshold:I

    return-void
.end method

.method public setAnimTranslateMax(I)V
    .registers 2

    .line 265
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mAnimTranslateMax:I

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 249
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentHeight:I

    return-void
.end method

.method public setContentWidth(I)V
    .registers 2

    .line 241
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mContentWidth:I

    return-void
.end method

.method public setCurrentLimitations(ZZZI)V
    .registers 6

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    if-eqz p0, :cond_7

    .line 102
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->setCurrentLimitations(ZZZI)V

    .line 104
    :cond_7
    sget-object p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[setCurrentCameraId: ]"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "  isNormalCamera: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isLimitMode : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCursorMoveCount(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorMoveCount:I

    return-void
.end method

.method public setCursorRanges(Ljava/util/List;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorRanges:Ljava/util/List;

    return-void
.end method

.method public setCursorTitleContents(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleTexts:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mCursorTitleDrawables:Ljava/util/List;

    return-void
.end method

.method public setExceptedHeight(I)V
    .registers 2

    .line 257
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mExceptedHeight:I

    return-void
.end method

.method public setIndependentCursorIndexList(Ljava/util/List;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mIndependentCursorIndexList:Ljava/util/List;

    return-void
.end method

.method public setPauseGraduation(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-void
.end method

.method public setPauseIndependentIndex(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mPauseIndependentIndex:I

    return-void
.end method

.method public setRanges(Ljava/util/List;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mRanges:Ljava/util/List;

    return-void
.end method

.method public updateRecordingSeekBarColor(ZZ)V
    .registers 3

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mGraduationFactory:Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;

    if-eqz p0, :cond_7

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/IGraduationFactory;->updateRecordingSeekBarColor(ZZ)V

    :cond_7
    return-void
.end method

.method public updateScreenFormType(IZ)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    if-eqz p2, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 108
    :goto_8
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;->mNeedReduceWith:Z

    return-void
.end method
