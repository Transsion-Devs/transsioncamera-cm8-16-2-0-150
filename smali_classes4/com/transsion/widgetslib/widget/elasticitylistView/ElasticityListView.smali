.class public Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_TOUCHEVNET:Z = false

.field private static final MAX_SCALE_DISTANCE:F = 1.1f

.field private static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mDistanceY:F

.field private mDownY:F

.field private mFirstVisibleItem:I

.field private mMotionPosition:I

.field private mOutsideScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPviotY:F

.field private mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

.field private mScaleY:F

.field private mVisibleItemCount:I

.field private scrollListener:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mFirstVisibleItem:I

    .line 27
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mVisibleItemCount:I

    .line 29
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    .line 35
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mMotionPosition:I

    .line 42
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mFirstVisibleItem:I

    .line 27
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mVisibleItemCount:I

    .line 29
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    .line 35
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mMotionPosition:I

    .line 48
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mFirstVisibleItem:I

    .line 27
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mVisibleItemCount:I

    .line 29
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    .line 35
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mMotionPosition:I

    .line 54
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mFirstVisibleItem:I

    .line 27
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mVisibleItemCount:I

    .line 29
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    .line 30
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    .line 35
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mMotionPosition:I

    .line 60
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->startScaleAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mOutsideScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mVisibleItemCount:I

    return p1
.end method

.method private init()V
    .registers 3

    .line 64
    new-instance v0, Lcom/transsion/widgetslib/util/ListScaleHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/util/ListScaleHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

    .line 65
    new-instance v0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;-><init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$1;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->scrollListener:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$InnerOnScrollListener;

    .line 69
    invoke-super {p0, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private scaleWithDistance(F)Z
    .registers 9

    .line 177
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedFirstItemEdge()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    const v5, 0x3f8ccccd    # 1.1f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedLastItemEdge()Z

    move-result v0

    if-eqz v0, :cond_65

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3d

    .line 179
    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    .line 180
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v6

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_31

    .line 183
    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    return v4

    :cond_31
    cmpl-float p1, p1, v5

    if-lez p1, :cond_37

    .line 187
    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 192
    :cond_37
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    .line 196
    :cond_3d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    .line 197
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v6, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_59

    .line 200
    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    return v4

    :cond_59
    cmpl-float p1, p1, v5

    if-lez p1, :cond_5f

    .line 204
    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 209
    :cond_5f
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    .line 215
    :cond_65
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedFirstItemEdge()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 216
    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    .line 217
    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v6

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_81

    .line 220
    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    return v4

    :cond_81
    cmpl-float p1, p1, v5

    if-lez p1, :cond_87

    .line 224
    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 229
    :cond_87
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    .line 233
    :cond_8d
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedLastItemEdge()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    .line 235
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    mul-float/2addr p1, v3

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v6, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    cmpg-float v0, p1, v6

    if-gez v0, :cond_af

    .line 238
    iput v6, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    return v4

    :cond_af
    cmpl-float p1, p1, v5

    if-lez p1, :cond_b5

    .line 242
    iput v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 247
    :cond_b5
    iget p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return v2

    :cond_bb
    return v4
.end method

.method private startScaleAnimation()V
    .registers 5

    .line 264
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedFirstItemEdge()Z

    move-result v0

    const v1, 0x3f828f5c    # 1.02f

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    .line 266
    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 269
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->isReachedLastItemEdge()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    .line 271
    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 274
    :cond_1d
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_31

    .line 275
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

    iget v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    invoke-virtual {v2, p0, v0, v3}, Lcom/transsion/widgetslib/util/ListScaleHelper;->onRebound(Landroid/view/View;FF)V

    .line 276
    iput v1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_31
    return-void
.end method


# virtual methods
.method public isReachedFirstItemEdge()Z
    .registers 3

    .line 283
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 288
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mFirstVisibleItem:I

    if-nez v0, :cond_1e

    .line 289
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 291
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    if-ltz v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public isReachedLastItemEdge()Z
    .registers 7

    .line 299
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 300
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 301
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_18

    .line 306
    iget v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mFirstVisibleItem:I

    iget v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mVisibleItemCount:I

    add-int/2addr v3, v5

    if-ne v3, v2, :cond_30

    :cond_18
    sub-int/2addr v1, v0

    .line 307
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    if-lt v1, v0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 255
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/util/ListScaleHelper;->isFinished()Z

    move-result p1

    if-nez p1, :cond_16

    .line 257
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/util/ListScaleHelper;->update()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_16
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7a

    if-eq v0, v1, :cond_5d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_14

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5d

    goto/16 :goto_9f

    .line 98
    :cond_14
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_22

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    .line 100
    iput v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 102
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9f

    .line 104
    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9f

    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->scaleWithDistance(F)Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 107
    iget v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 109
    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 111
    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->onCancelPendingInputEvents()V

    goto :goto_9f

    .line 123
    :cond_5d
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_9f

    .line 124
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v4

    iget v5, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mPviotY:F

    invoke-virtual {v0, p0, v4, v5}, Lcom/transsion/widgetslib/util/ListScaleHelper;->onRelease(Landroid/view/View;FF)V

    .line 125
    iput v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 126
    iput v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    .line 127
    iput v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_9f

    .line 88
    :cond_7a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/ListScaleHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_87

    .line 89
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleHelper:Lcom/transsion/widgetslib/util/ListScaleHelper;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/ListScaleHelper;->finish()V

    .line 91
    :cond_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDownY:F

    float-to-int v4, v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mMotionPosition:I

    .line 93
    iput v3, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mScaleY:F

    .line 94
    iput v2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mDistanceY:F

    .line 132
    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b0

    return v1

    .line 135
    :cond_b0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->mOutsideScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
