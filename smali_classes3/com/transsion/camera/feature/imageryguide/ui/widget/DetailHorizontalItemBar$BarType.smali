.class Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$IType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarType"
.end annotation


# instance fields
.field private mSwitchTypeAction:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->mSwitchTypeAction:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V

    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;)V
    .registers 9

    .line 404
    iget-object v0, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mText:Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_7a

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[drawItem] , text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ,item.mCenterX :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mCenterX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ,mCenterY + mTextBounds.height() / 2f :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Rect;

    move-result-object v3

    .line 407
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    const-string v3, "Guide_ItemView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-boolean v2, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mIsSelected:Z

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmSelectedTextPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;

    move-result-object v2

    goto :goto_54

    :cond_4e
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmTextPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;

    move-result-object v2

    .line 409
    :goto_54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v4}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 410
    iget v3, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mCenterX:F

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v4}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v5}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmTextBounds(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    :cond_7a
    iget-object v0, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b7

    .line 415
    iget-object v0, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 416
    iget-object v2, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 418
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_horizontal_item_bar_item_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_horizontal_item_bar_item_height:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 421
    new-instance v4, Landroid/graphics/RectF;

    div-float/2addr v3, v1

    sub-float v5, v0, v3

    div-float/2addr p0, v1

    sub-float v1, v2, p0

    add-float/2addr v0, v3

    add-float/2addr v2, p0

    invoke-direct {v4, v5, v1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 428
    iget-object p0, p2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_b7
    return-void
.end method


# virtual methods
.method public onCurrentItemSelected()V
    .registers 4

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$mplayClickFeedbackAnimation(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->mSwitchTypeAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->mSwitchTypeAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$mgetItemNum(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_89

    .line 387
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmBarRadius(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmBarRadius(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmBackgroundPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmRectScaleFactor(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemRadius(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v0

    mul-float/2addr p1, v0

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmSelectRectPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmRectAlpha(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItems(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmSelectedIndex(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    iget-object v0, v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmSelectRectPaint(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v0, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 395
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItems(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    .line 396
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 397
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->drawItem(Landroid/graphics/Canvas;Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;)V

    .line 398
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_73

    :cond_89
    :goto_89
    return-void
.end method

.method public onLayout()V
    .registers 11

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$mgetItemNum(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_90

    .line 372
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItems(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;

    .line 373
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmBackgroundPadding(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v3

    int-to-float v4, v1

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v5}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v6}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemInterval(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v4}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mCenterX:F

    .line 374
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mCenterX:F

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v6}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v6}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v6

    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v7}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/util/Size;

    move-result-object v7

    .line 375
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget v7, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mCenterX:F

    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v8}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/util/Size;

    move-result-object v8

    .line 376
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v8}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmCenterY(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v8

    iget-object v9, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v9}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)Landroid/util/Size;

    move-result-object v9

    .line 377
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    add-float/2addr v8, v9

    invoke-direct {v3, v4, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$Item;->mBounds:Landroid/graphics/RectF;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_90
    return-void
.end method

.method public onLongPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onMeasure(II)V
    .registers 7

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    # invokes: Landroid/view/View;->getSuggestedMinimumWidth()I
    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->access$000(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    # invokes: Landroid/view/View;->getSuggestedMinimumHeight()I
    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->access$100(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$mgetItemNum(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)I

    move-result v0

    int-to-float v1, p1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    .line 361
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmItemInterval(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmBackgroundPadding(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v1, p2

    .line 362
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-static {v2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fgetmBackgroundPadding(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)F

    move-result v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 363
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v0, v1}, Landroid/util/Size;-><init>(II)V

    invoke-static {v2, v3}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fputmItemSize(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;Landroid/util/Size;)V

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$BarType;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    # invokes: Landroid/view/View;->setMeasuredDimension(II)V
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->access$200(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;II)V

    return-void
.end method
