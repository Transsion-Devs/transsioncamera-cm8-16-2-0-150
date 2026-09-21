.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomItem"
.end annotation


# instance fields
.field mBounds:Landroid/graphics/RectF;

.field mCenterX:F

.field mCurrentRatio:I

.field mDefaultRatio:I

.field mFocalLengthIndex:I

.field mFocalLengthItems:[Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

.field mIsSelected:Z

.field mItemType:I

.field mLensType:I

.field mOffsetX:F

.field mStartX:F

.field mSwitchFromType:I

.field mSwitchState:I

.field mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V
    .registers 3

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 705
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchState:I

    .line 713
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mText:Ljava/lang/String;

    .line 716
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mBounds:Landroid/graphics/RectF;

    .line 717
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mItemType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 739
    instance-of v0, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 740
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    check-cast p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget p1, p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    if-ne p0, p1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method public getCurrentCenterX(F)F
    .registers 4

    .line 733
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 734
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mStartX:F

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mOffsetX:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0

    :cond_c
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    return p0
.end method

.method public getRatio()I
    .registers 2

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthItems:[Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    invoke-static {v0}, Lcom/transsion/camera/utils/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthItems:[Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthIndex:I

    aget-object p0, v0, p0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;->mZoomRatio:I

    return p0

    .line 729
    :cond_11
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCurrentRatio:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 747
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    return p0
.end method

.method public reset()V
    .registers 2

    .line 721
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCurrentRatio:I

    const/4 v0, 0x0

    .line 722
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mItemType:I

    return-void
.end method
