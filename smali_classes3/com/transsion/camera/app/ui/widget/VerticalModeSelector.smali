.class public Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllItemList:Ljava/util/List;

.field private mCurrentValue:Ljava/lang/String;

.field private mDVVideoModeTitle:Ljava/lang/String;

.field private mDefaultValue:Ljava/lang/String;

.field private mInsideCount:I

.field private mInsideItemList:Ljava/util/List;

.field private mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

.field private mIsOutSideShown:Z

.field private mOnModeSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;

.field private mOutsideItemList:Ljava/util/List;

.field private mOutsideTextView:Landroid/widget/TextView;

.field private mProSeekUIShow:Z

.field private mVideoModeTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5_x03TQC0kR0ot_UsB5TYMO8hwY(Lcom/transsion/camera/app/common/FeatureResource;)Z
    .registers 2

    .line 139
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TlMc_Z1FkW-XgsfFVX6FAS5mXxI(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->lambda$setItemList$4(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$chcyt4qONW0i9IAHIytz5YE0MZ8(Lcom/transsion/camera/app/common/FeatureResource;)Z
    .registers 2

    .line 138
    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eqGeASLY66XwXEUOsH4E1g5Nhyk(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->lambda$setItemList$2(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iNyQPpjgCc4mJk0jAxdFLvJvQq8(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->lambda$onFinishInflate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VerticalModeSelector"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private chooseViewToShow(Ljava/lang/String;)V
    .registers 5

    .line 210
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mCurrentValue:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mIsOutSideShown:Z

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 218
    :cond_20
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mIsOutSideShown:Z

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_37

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->getIndex()I

    move-result v0

    if-eq p1, v0, :cond_37

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->updateIndex(IZ)V

    .line 223
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private exitOutSide()V
    .registers 4

    .line 244
    sget-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitOutSide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mIsOutSideShown:Z

    if-eqz v0, :cond_41

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mDVVideoModeTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->isModeReseting()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_41

    .line 247
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mDefaultValue:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mDVVideoModeTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mCurrentValue:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mVideoModeTitle:Ljava/lang/String;

    .line 251
    :cond_3b
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->chooseViewToShow(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->notifyChange(Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method private isTouchInExitDrawable(II)Z
    .registers 7

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 230
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3e

    const/4 v2, 0x3

    .line 231
    aget-object v0, v0, v2

    if-eqz v0, :cond_3e

    .line 233
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr p0, v3

    .line 235
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 236
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p0

    if-lt p1, v2, :cond_3e

    if-gt p1, v3, :cond_3e

    if-lt p2, p0, :cond_3e

    if-gt p2, v0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    return v1
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->isTouchInExitDrawable(II)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->exitOutSide()V

    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setItemList$2(Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 138
    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mDVVideoModeTitle:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$setItemList$4(Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 139
    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mVideoModeTitle:Ljava/lang/String;

    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 5

    .line 257
    sget-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOnModeSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;

    if-eqz v0, :cond_2d

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mAllItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;->onModeSelected(I)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public isOutSideShown()Z
    .registers 1

    .line 197
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mIsOutSideShown:Z

    return p0
.end method

.method public isScrolling()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mIsOutSideShown:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 204
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->isScrolling()Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .registers 3

    .line 125
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mIsOutSideShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 126
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mProSeekUIShow:Z

    if-eqz v0, :cond_a

    return v1

    .line 129
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->exitOutSide()V

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method public onConfigurationChanged()V
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    if-eqz p0, :cond_7

    .line 70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    :cond_7
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 100
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 101
    sget v0, Lcom/transsion/camera/R$id;->mode_selector_inside_recycler:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    .line 102
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;)V

    .line 104
    sget v0, Lcom/transsion/camera/R$id;->mode_selector_outside_text:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    .line 105
    new-instance v1, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onStopScrolling()V
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOnModeSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;

    if-eqz p0, :cond_7

    .line 64
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;->onStopScrolling()V

    :cond_7
    return-void
.end method

.method public onTabScrolling()V
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOnModeSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;

    if-eqz p0, :cond_7

    .line 57
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;->onTabScrolling()V

    :cond_7
    return-void
.end method

.method public onTabSelected(I)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    sget-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->setEnabled(Z)V

    return-void
.end method

.method public setInsideFadingEdgeLength(I)V
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    if-eqz p0, :cond_7

    .line 188
    invoke-virtual {p0, p1}, Landroid/view/View;->setFadingEdgeLength(I)V

    :cond_7
    return-void
.end method

.method public setItemList(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .registers 10

    .line 137
    iput-object p6, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mDefaultValue:Ljava/lang/String;

    .line 138
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 139
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    if-nez p3, :cond_3c

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mAllItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideItemList:Ljava/util/List;

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideItemList:Ljava/util/List;

    .line 144
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideCount:I

    goto :goto_6c

    .line 146
    :cond_3c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mAllItemList:Ljava/util/List;

    .line 147
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p7, v0}, Ljava/lang/Math;->min(II)I

    move-result p7

    iput p7, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideCount:I

    if-eqz p1, :cond_57

    .line 149
    iput-object p4, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideItemList:Ljava/util/List;

    .line 150
    invoke-static {p4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 151
    iput-object p5, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideItemList:Ljava/util/List;

    goto :goto_6c

    .line 153
    :cond_57
    invoke-interface {p3, p2, p7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideItemList:Ljava/util/List;

    .line 154
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 155
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideCount:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p3, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideItemList:Ljava/util/List;

    .line 158
    :goto_6c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideItemList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->setItemList(Ljava/util/List;)V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideItemList:Ljava/util/List;

    if-eqz p1, :cond_7a

    .line 160
    invoke-direct {p0, p6}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->chooseViewToShow(Ljava/lang/String;)V

    :cond_7a
    return-void
.end method

.method public setItemSize(II)V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->setItemSize(II)V

    .line 181
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOutsideTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_12

    if-lez p2, :cond_12

    const/4 p1, 0x0

    int-to-float p2, p2

    .line 182
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_12
    return-void
.end method

.method public setOnModeSelectedListener(Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mOnModeSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeSelector$OnModeSelectedListener;

    return-void
.end method

.method public setProSeekUIShow(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mProSeekUIShow:Z

    return-void
.end method

.method public updateDefaultValue(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public updateIndexByValue(Ljava/lang/String;)V
    .registers 2

    .line 165
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->chooseViewToShow(Ljava/lang/String;)V

    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeSelector;->mInsideRecyclerView:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->updateRingScreenLight(Z)V

    return-void
.end method
