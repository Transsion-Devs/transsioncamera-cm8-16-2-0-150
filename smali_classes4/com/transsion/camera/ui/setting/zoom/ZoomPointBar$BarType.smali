.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarType"
.end annotation


# instance fields
.field private mSuffixHeight:F

.field private mTypeUpdateAction:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/util/List;)V
    .registers 3

    .line 920
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    .line 921
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/util/List;)V

    .line 1067
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->mTypeUpdateAction:Ljava/lang/Runnable;

    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;F)V
    .registers 10

    .line 995
    iget v0, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mItemType:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_4e

    .line 996
    iget-object v0, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthItems:[Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    iget v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;->mFocalLength:Ljava/lang/String;

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MM"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mText:Ljava/lang/String;

    .line 998
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result p2

    add-float/2addr p2, v2

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmFocalLengthPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, p3, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 999
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result p2

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->getSuffixHeight()F

    move-result v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmFocalLengthSuffixTopMargin(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v0

    sub-float/2addr p2, v0

    .line 1000
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmFocalLengthSuffixPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v3, p3, p2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    .line 1004
    :cond_4e
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->getItemAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)I

    move-result v0

    if-nez v0, :cond_55

    goto :goto_b0

    .line 1008
    :cond_55
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->getItemScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)F

    move-result v1

    cmpg-float v2, v1, v2

    if-gez v2, :cond_69

    .line 1010
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1011
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v3

    invoke-virtual {p1, v1, v1, p3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1015
    :cond_69
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mgetZoomItemText(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    iput-object v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mText:Ljava/lang/String;

    .line 1017
    iget-boolean p2, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    if-eqz p2, :cond_7c

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectedRatioTextPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object p2

    goto :goto_82

    :cond_7c
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmRatioTextPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object p2

    .line 1018
    :goto_82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1019
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p0, v3

    add-float/2addr v0, p0

    invoke-virtual {p1, v1, p3, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-gez v2, :cond_b0

    .line 1023
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b0
    :goto_b0
    return-void
.end method

.method private getBackgroundWidth()F
    .registers 3

    .line 985
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->getContentWidth()F

    move-result v0

    .line 986
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 987
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmPreType(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;->getContentWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchFraction(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result p0

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    return v1

    :cond_20
    return v0
.end method

.method private getSuffixHeight()F
    .registers 6

    .line 1028
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->mSuffixHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_27

    .line 1029
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmFocalLengthPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "MM"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1030
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->mSuffixHeight:F

    .line 1032
    :cond_27
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->mSuffixHeight:F

    return p0
.end method


# virtual methods
.method public exit()V
    .registers 3

    .line 1078
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->mTypeUpdateAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1079
    invoke-super {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->exit()V

    return-void
.end method

.method public getContentWidth()F
    .registers 3

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemWidth(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmBackgroundPadding(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onCurrentItemSelected()V
    .registers 5

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectedIndex(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 1040
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthItems:[Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;

    if-eqz v1, :cond_4d

    array-length v2, v1

    if-eqz v2, :cond_4d

    .line 1052
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 1053
    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mItemType:I

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x0

    goto :goto_20

    :cond_1f
    move v2, v3

    .line 1054
    :goto_20
    iput v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mItemType:I

    goto :goto_25

    .line 1056
    :cond_23
    iput v3, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mItemType:I

    .line 1059
    :goto_25
    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthIndex:I

    add-int/2addr v2, v3

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mFocalLengthIndex:I

    .line 1060
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mplayItemClickFeedbackAnimation(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    .line 1061
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->getRatio()I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCurrentRatio:I

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mnotifyZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;I)V

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->mTypeUpdateAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1064
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->mTypeUpdateAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1043
    :cond_4d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mplayItemClickFeedbackAnimation(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    .line 1044
    iget v1, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCurrentRatio:I

    iget v2, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    if-eq v1, v2, :cond_67

    .line 1045
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->reset()V

    .line 1046
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1047
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mDefaultRatio:I

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mnotifyZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;I)V

    :cond_67
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 950
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 951
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onDraw, return for none point"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 955
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_25

    .line 956
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->updateItemPosition()V

    .line 960
    :cond_25
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->getBackgroundWidth()F

    move-result v0

    .line 961
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterX(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sub-float v4, v1, v2

    add-float v6, v4, v0

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmBarRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v8

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmBarRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmBackgroundPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v10

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 967
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmItemCircleScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v0

    mul-float/2addr p1, v0

    .line 968
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmItemCircleAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 969
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->getCurrentSelectedItem()Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchFraction(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->getCurrentCenterX(F)F

    move-result v0

    .line 971
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v3, v0, v1, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 974
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z

    move-result p1

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchingItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/Set;

    move-result-object p1

    goto :goto_9f

    :cond_9d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    .line 975
    :goto_9f
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 976
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 977
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchFraction(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->getCurrentCenterX(F)F

    move-result v1

    .line 978
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmRotateAnimator(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->rotate(Landroid/graphics/Canvas;FF)F

    .line 979
    invoke-direct {p0, v3, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;F)V

    .line 980
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a3

    :cond_d2
    return-void
.end method

.method public onLongPressed()Z
    .registers 2

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomListener(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1085
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomListener(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;->onLongPressed()V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public updateItemPosition()V
    .registers 10

    .line 931
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->getContentWidth()F

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    .line 933
    :goto_10
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mItemNum:I

    if-ge v0, v2, :cond_6b

    .line 934
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 935
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmBackgroundPadding(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v3

    add-float/2addr v3, v1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemWidth(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    .line 936
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$BarType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v8}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v8

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mBounds:Landroid/graphics/RectF;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_6b
    return-void
.end method
