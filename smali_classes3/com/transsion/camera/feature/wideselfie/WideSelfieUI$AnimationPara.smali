.class Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationPara"
.end annotation


# instance fields
.field dstArrowHeight:I

.field dstArrowWidth:I

.field dstGravity:I

.field dstMarginBottom:I

.field dstMarginLeft:I

.field dstMarginRight:I

.field dstMarginTop:I

.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)V

    return-void
.end method


# virtual methods
.method public updateArrowWidthAndHeight(I)V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$misLand(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmUISpec(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidthLand:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e5652bd    # 0.2093f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    return-void

    .line 355
    :cond_25
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmUISpec(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mArrowWidth:I

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    .line 356
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3e554c98    # 0.2083f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowHeight:I

    return-void
.end method

.method public updateRootLayoutMargin(I)V
    .registers 13

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$misLand(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;I)Z

    move-result v1

    const-string v2, "on"

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_18a

    const v1, 0x3e561e4f    # 0.2091f

    const v6, 0x3dddcc64    # 0.1083f

    const/16 v7, 0x10e

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-ne p1, v7, :cond_7c

    .line 365
    iput v9, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 366
    iget-object v10, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v10}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v6, v10

    iput v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    .line 367
    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v6

    if-eq v6, v8, :cond_6c

    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    .line 368
    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v6

    if-ne v6, v9, :cond_59

    goto :goto_6c

    .line 371
    :cond_59
    iget v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v0, v6

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    goto :goto_cc

    .line 369
    :cond_6c
    :goto_6c
    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    goto :goto_cc

    :cond_7c
    const/16 v10, 0x5a

    if-ne p1, v10, :cond_cc

    .line 374
    iput v4, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 375
    iget-object v10, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v10}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v6, v10

    iput v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    .line 376
    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v6

    if-eq v6, v8, :cond_bd

    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    .line 377
    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v6

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v6

    if-ne v6, v9, :cond_aa

    goto :goto_bd

    .line 380
    :cond_aa
    iget v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v0, v6

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    goto :goto_cc

    .line 378
    :cond_bd
    :goto_bd
    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v1, v6

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    .line 383
    :cond_cc
    :goto_cc
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v10, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    sub-int/2addr v6, v10

    div-int/2addr v6, v5

    add-int/2addr v1, v6

    iput v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    .line 384
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    if-ne v1, v3, :cond_129

    const v1, 0x3d79db23    # 0.061f

    if-ne p1, v7, :cond_110

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget-object v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    goto :goto_129

    .line 388
    :cond_110
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget-object v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    .line 391
    :cond_129
    :goto_129
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmSwitchPreviewValue(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_274

    .line 392
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v8, :cond_148

    .line 393
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    div-int/2addr v0, v5

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    return-void

    .line 394
    :cond_148
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v9, :cond_15b

    .line 395
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    div-int/2addr v0, v5

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    return-void

    .line 396
    :cond_15b
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v4, :cond_274

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstArrowWidth:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v5

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmUISpec(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/feature/wideselfie/BaseWideSelfieUISpec;->mHoverDownPreviewLandOffset:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    return-void

    .line 401
    :cond_18a
    iput v3, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v6, 0x3df79a6b    # 0.1209f

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginLeft:I

    .line 404
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginRight:I

    .line 405
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginBottom:I

    .line 406
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$900(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v1

    const v6, 0x3deb50b1    # 0.1149f

    if-ne v1, v3, :cond_1fc

    if-nez p1, :cond_1e0

    .line 408
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    or-int/lit8 p1, p1, 0x30

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 409
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    return-void

    :cond_1e0
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_274

    .line 411
    iget p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    or-int/lit8 p1, p1, 0x50

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstGravity:I

    .line 412
    iput v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginBottom:I

    return-void

    .line 415
    :cond_1fc
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$1000(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v5, :cond_222

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    return-void

    .line 417
    :cond_222
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    # getter for: Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->access$1100(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    if-ne p1, v4, :cond_274

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4db8bb    # 0.2009f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmSwitchPreviewValue(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_274

    .line 420
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-double v0, p1

    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3fbc63f1370a3d71L    # 0.110899997651577

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI$AnimationPara;->dstMarginTop:I

    :cond_274
    return-void
.end method
