.class Lcom/transsion/camera/app/ui/setting/PopupOption$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .registers 2

    .line 790
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 793
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 794
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 795
    invoke-static {}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onTouch] event y= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", popupWindowHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mIsDismissing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4d

    .line 797
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$mdispatchTouchEvent(Lcom/transsion/camera/app/ui/setting/PopupOption;Landroid/view/MotionEvent;)V

    goto/16 :goto_da

    :cond_4d
    const/4 v1, 0x0

    cmpg-float v3, p1, v1

    if-gez v3, :cond_8d

    .line 800
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-nez p1, :cond_77

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-nez p1, :cond_77

    .line 801
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    move-result-object p1

    const/16 v0, 0x64

    const-wide/16 v3, 0x3c

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 803
    :cond_77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-eqz p1, :cond_ce

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 804
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$mdispatchTouchEvent(Lcom/transsion/camera/app/ui/setting/PopupOption;Landroid/view/MotionEvent;)V

    goto :goto_ce

    :cond_8d
    cmpl-float v3, p1, v1

    if-ltz v3, :cond_b2

    cmpg-float v3, p1, v0

    if-lez v3, :cond_99

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b2

    .line 807
    :cond_99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$mdispatchTouchEvent(Lcom/transsion/camera/app/ui/setting/PopupOption;Landroid/view/MotionEvent;)V

    .line 808
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_ce

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 809
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    goto :goto_ce

    .line 812
    :cond_b2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->applyDismissPopup()V

    cmpl-float p1, p1, v0

    if-lez p1, :cond_ce

    .line 814
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_ce

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 816
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$mdispatchTouchEvent(Lcom/transsion/camera/app/ui/setting/PopupOption;Landroid/view/MotionEvent;)V

    .line 819
    :cond_ce
    :goto_ce
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_da

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$6;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fputmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)V

    :cond_da
    :goto_da
    return v2
.end method
