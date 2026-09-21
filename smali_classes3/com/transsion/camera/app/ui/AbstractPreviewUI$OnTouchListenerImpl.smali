.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchListenerImpl"
.end annotation


# instance fields
.field private mHasTouchDown:Z

.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 2

    .line 1785
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1786
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->mHasTouchDown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1789
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmTimerStatus(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status_self_timer_begin"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 1792
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-le v0, v3, :cond_3b

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3b

    .line 1793
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouch intercepted, pointerCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1796
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmIsSuperNightLiteUIShowing(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1797
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "skip, mIsSuperNightLiteUIShowing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1800
    :cond_4d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_61

    .line 1801
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewContainerView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1802
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->mHasTouchDown:Z

    :cond_61
    if-ne v0, v3, :cond_71

    .line 1804
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->mHasTouchDown:Z

    if-nez v3, :cond_71

    .line 1805
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "skip, !mHasTouchDown recorded"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_71
    const/4 v3, 0x0

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_78

    .line 1809
    :cond_76
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->mHasTouchDown:Z

    .line 1811
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewContainerView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewContainerView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_97

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_97

    goto :goto_98

    :cond_97
    return v1

    .line 1812
    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmOnTouchListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmOnTouchListener(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_ad

    return v1

    :cond_ad
    return v3
.end method
