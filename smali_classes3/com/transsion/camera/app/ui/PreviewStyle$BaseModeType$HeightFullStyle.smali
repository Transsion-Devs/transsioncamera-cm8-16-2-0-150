.class public Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;
.super Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeightFullStyle"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V
    .registers 4

    .line 345
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    .line 346
    const-string v0, "height_full_style"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    return-void
.end method


# virtual methods
.method protected onEntry(Z)V
    .registers 4

    .line 351
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onEntry(Z)V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmViewWidth(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result v0

    if-gtz v0, :cond_18

    goto :goto_5d

    :cond_18
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_46

    .line 358
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    .line 362
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmInterpolator(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/animation/PathInterpolator;

    move-result-object p0

    .line 363
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 366
    :cond_46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 353
    :cond_5d
    :goto_5d
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid entry, style: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmViewWidth(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method sizeChanged()V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmViewWidth(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result v0

    if-gtz v0, :cond_15

    goto :goto_2e

    .line 378
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 379
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 374
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sizeChanged, style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/PreviewStyle;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mViewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$HeightFullStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmViewWidth(Lcom/transsion/camera/app/ui/PreviewStyle;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
