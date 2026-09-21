.class Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)V
    .registers 2

    .line 961
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .line 964
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 965
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 966
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 967
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 968
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopupWindow(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 969
    invoke-static {}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onTouch] event y= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", popupWindowHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mIsDismissing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v6}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 970
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v4

    const/4 v5, 0x5

    const-wide/16 v6, 0x3c

    const/16 v8, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v4, v5, :cond_1da

    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_70

    goto/16 :goto_1da

    .line 986
    :cond_70
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v4

    if-ne v4, v9, :cond_137

    .line 987
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v4

    if-eqz v4, :cond_e1

    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)I

    move-result v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_8b

    goto :goto_e1

    :cond_8b
    cmpg-float p1, v0, v10

    if-gez p1, :cond_a8

    .line 1005
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result p1

    if-nez p1, :cond_a8

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 1006
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a8
    cmpl-float p1, v0, v10

    if-ltz p1, :cond_bb

    cmpg-float p1, v0, v2

    if-lez p1, :cond_b4

    cmpg-float p1, v2, v10

    if-gez p1, :cond_bb

    :cond_b4
    if-eqz v3, :cond_22d

    .line 1011
    invoke-virtual {v3, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_22d

    .line 1014
    :cond_bb
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result p1

    if-nez p1, :cond_22d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_22d

    .line 1015
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    .line 1016
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopSettingPopupOptionManager(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->getTag()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->onPopupDismiss(I)V

    goto/16 :goto_22d

    :cond_e1
    :goto_e1
    cmpg-float v0, p1, v10

    if-gez v0, :cond_fe

    .line 989
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result v0

    if-nez v0, :cond_fe

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_fe
    cmpl-float v0, p1, v10

    if-ltz v0, :cond_111

    cmpg-float p1, p1, v1

    if-lez p1, :cond_10a

    cmpg-float p1, v1, v10

    if-gez p1, :cond_111

    :cond_10a
    if-eqz v3, :cond_22d

    .line 995
    invoke-virtual {v3, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_22d

    .line 998
    :cond_111
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result p1

    if-nez p1, :cond_22d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_22d

    .line 999
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    .line 1000
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopSettingPopupOptionManager(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->getTag()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->onPopupDismiss(I)V

    goto/16 :goto_22d

    :cond_137
    cmpg-float v0, p1, v10

    if-gez v0, :cond_16f

    .line 1022
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result v0

    if-nez v0, :cond_15a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_15a

    .line 1023
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    move-result-object v0

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1025
    :cond_15a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result v0

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result v0

    if-eqz v0, :cond_16f

    if-eqz v3, :cond_16f

    .line 1026
    invoke-virtual {v3, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_16f
    cmpl-float v0, p1, v10

    if-ltz v0, :cond_18c

    cmpg-float v0, p1, v1

    if-lez v0, :cond_17b

    cmpg-float v0, v1, v10

    if-gez v0, :cond_18c

    :cond_17b
    if-eqz v3, :cond_180

    .line 1031
    invoke-virtual {v3, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1033
    :cond_180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1cd

    .line 1034
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1, v9}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fputmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Z)V

    goto :goto_1cd

    .line 1037
    :cond_18c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result v0

    if-nez v0, :cond_1b6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b6

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopSettingPopupOptionManager(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->getTag()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->onPopupDismiss(I)V

    :cond_1b6
    cmpl-float p1, p1, v1

    if-lez p1, :cond_1cd

    .line 1042
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_1cd

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result p1

    if-eqz p1, :cond_1cd

    if-eqz v3, :cond_1cd

    .line 1045
    invoke-virtual {v3, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1048
    :cond_1cd
    :goto_1cd
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v9, :cond_22d

    .line 1049
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fputmDownEventInBounds(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;Z)V

    goto :goto_22d

    :cond_1da
    :goto_1da
    cmpg-float p1, v0, v10

    if-gez p1, :cond_1f7

    .line 972
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result p1

    if-nez p1, :cond_1f7

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1f7

    .line 973
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1f7
    cmpl-float p1, v0, v10

    if-ltz p1, :cond_209

    cmpg-float p1, v0, v2

    if-lez p1, :cond_203

    cmpg-float p1, v2, v10

    if-gez p1, :cond_209

    :cond_203
    if-eqz v3, :cond_22d

    .line 978
    invoke-virtual {v3, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_22d

    .line 981
    :cond_209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmIsDismissing(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Z

    move-result p1

    if-nez p1, :cond_22d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_22d

    .line 982
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    .line 983
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->-$$Nest$fgetmPopSettingPopupOptionManager(Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;)Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->getTag()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->onPopupDismiss(I)V

    :cond_22d
    :goto_22d
    return v9
.end method
