.class Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)V
    .registers 3

    .line 466
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 467
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;

    if-nez p0, :cond_c

    goto/16 :goto_db

    .line 476
    :cond_c
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_dc

    const/4 v0, 0x2

    if-eq p1, v0, :cond_36

    if-eq p1, v1, :cond_19

    goto/16 :goto_db

    .line 499
    :cond_19
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoRectView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_28

    .line 500
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoRectView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_28
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_db

    .line 503
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 481
    :cond_36
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoRectView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_82

    .line 482
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoRectView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 483
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 484
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 485
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 486
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoRectView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoRectView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_82
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_db

    .line 490
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 491
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 492
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandType(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandScore(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_db
    :goto_db
    return-void

    .line 478
    :cond_dc
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->-$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    return-void
.end method
