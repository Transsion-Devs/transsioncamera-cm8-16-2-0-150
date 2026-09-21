.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;
.super Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointType"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/util/List;)V
    .registers 3

    .line 1094
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    .line 1095
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/util/List;)V

    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;F)V
    .registers 10

    .line 1150
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->getItemAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)I

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_b5

    .line 1154
    :cond_8
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->getItemScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1e

    .line 1156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1157
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v4

    invoke-virtual {p1, v1, v1, p3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1160
    :cond_1e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-boolean v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    if-nez v1, :cond_6e

    goto :goto_37

    .line 1161
    :cond_2b
    iget v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mSwitchFromType:I

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->getType()I

    move-result v4

    if-ne v1, v4, :cond_6e

    iget-boolean v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    if-nez v1, :cond_6e

    :goto_37
    const/16 v1, 0xff

    if-lt v0, v1, :cond_42

    .line 1163
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCircleColorAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result v1

    goto :goto_50

    :cond_42
    int-to-float v1, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 1164
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCircleColorAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1165
    :goto_50
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1166
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomPointRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, p3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1169
    :cond_6e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mgetZoomItemText(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    iput-object v1, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mText:Ljava/lang/String;

    .line 1171
    iget-boolean p2, p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mIsSelected:Z

    if-eqz p2, :cond_81

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectedRatioTextPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object p2

    goto :goto_87

    :cond_81
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmRatioTextPaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object p2

    .line 1172
    :goto_87
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v1, v5, v2, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1173
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1174
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    add-float/2addr v0, p0

    invoke-virtual {p1, v1, p3, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-gez v3, :cond_b5

    .line 1176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b5
    :goto_b5
    return-void
.end method


# virtual methods
.method public getContentWidth()F
    .registers 3

    .line 1118
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mItemNum:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemWidth(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mItemNum:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmPointPadding(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method public getType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public onCurrentItemSelected()V
    .registers 1

    .line 1182
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$mplayItemClickFeedbackAnimation(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_9a

    .line 1127
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    iget v0, v0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    .line 1128
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->updateItemPosition()V

    .line 1132
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmItemCircleScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 1133
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmItemCircleAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1134
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->getCurrentSelectedItem()Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    move-result-object v1

    .line 1135
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchFraction(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->getCurrentCenterX(F)F

    move-result v1

    .line 1136
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectCirclePaint(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1139
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmIsTypeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchingItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/Set;

    move-result-object v0

    goto :goto_67

    :cond_65
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    .line 1140
    :goto_67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    .line 1141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1142
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmTypeSwitchFraction(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->getCurrentCenterX(F)F

    move-result v2

    .line 1143
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmRotateAnimator(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/transsion/camera/ui/setting/zoom/RotateAnimator;->rotate(Landroid/graphics/Canvas;FF)F

    .line 1144
    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;F)V

    .line 1145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6b

    :cond_9a
    :goto_9a
    return-void
.end method

.method public updateItemPosition()V
    .registers 10

    .line 1105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->getContentWidth()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 1106
    :goto_10
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mItemNum:I

    if-ge v1, v2, :cond_6c

    .line 1107
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AbstractType;->mInnerZoomItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;

    int-to-float v3, v1

    .line 1108
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemWidth(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmPointPadding(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v5

    mul-float/2addr v3, v5

    add-float/2addr v4, v3

    iput v4, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    .line 1109
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mCenterX:F

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v7

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$PointType;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v8}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItemRadius(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)F

    move-result v8

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;->mBounds:Landroid/graphics/RectF;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_6c
    return-void
.end method
