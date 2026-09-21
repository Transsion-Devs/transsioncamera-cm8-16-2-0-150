.class Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->setAnimParams(IIIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

.field final synthetic val$currentLeft:I

.field final synthetic val$currentRadius:F

.field final synthetic val$currentTop:I

.field final synthetic val$leftDelta:I

.field final synthetic val$radiusDelta:F

.field final synthetic val$topDelta:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;IIIIFF)V
    .registers 8

    .line 338
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iput p2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentLeft:I

    iput p3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$leftDelta:I

    iput p4, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentTop:I

    iput p5, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$topDelta:I

    iput p6, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentRadius:F

    iput p7, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$radiusDelta:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 341
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    # setter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mExecFraction:F
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$002(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    .line 343
    const-string v0, "pvh_border_scale"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    const-string v1, "pvh_frame_scale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 346
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_54

    .line 347
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 348
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$leftDelta:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    # setter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentLeft:I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$102(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I

    .line 349
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$topDelta:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    # setter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentTop:I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$202(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I

    .line 350
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    const/16 v2, 0xff

    # setter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentAlpha:I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$302(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;I)I

    .line 351
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    iget v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$currentRadius:F

    iget v3, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->val$radiusDelta:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    # setter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentRadius:F
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$402(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    .line 352
    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # setter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentScale:F
    invoke-static {v1, v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$502(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    .line 356
    :cond_54
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_63

    .line 357
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 358
    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # setter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mCurrentFrameScale:F
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$602(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;F)F

    .line 361
    :cond_63
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # getter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;
    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 362
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # getter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;
    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$900(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/PathMeasure;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # getter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F
    invoke-static {v0}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$800(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # getter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mMeasurePathFullTick:Landroid/graphics/PathMeasure;
    invoke-static {v1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$900(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/PathMeasure;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # getter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mDeltaTickLength:F
    invoke-static {v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$800(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # getter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathTick:Landroid/graphics/Path;
    invoke-static {v2}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$700(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 363
    iget-object p1, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    # getter for: Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->mPathBorder:Landroid/graphics/Path;
    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->access$1000(Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 365
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable$1;->this$0:Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
