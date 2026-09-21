.class public Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-gt p3, v0, :cond_4f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-le p3, v0, :cond_f

    goto :goto_4f

    .line 162
    :cond_f
    iget-object p3, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/transsion/camera/R$dimen;->pop_setting_scroll_threshold_distance:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 165
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4f

    cmpl-float p1, p2, p3

    if-lez p1, :cond_4f

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmPopSettingUIManager(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmPopSettingUIManager(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->hidePopSettingUI()V

    :cond_4e
    return v0

    :cond_4f
    :goto_4f
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
