.class Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShutterButtonListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 832
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    return-void
.end method


# virtual methods
.method public onFloatingShutterButtonMove(II)V
    .registers 4

    .line 925
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 926
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onFloatingShutterButtonMove(II)V

    :cond_11
    return-void
.end method

.method public onLeaveAfterSwipeUp()V
    .registers 2

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 905
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onLeaveAfterSwipeUp()V

    :cond_11
    return-void
.end method

.method public onShutterButtonSwipeUp(II)Z
    .registers 4

    .line 896
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 897
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterButtonSwipeUp(II)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method public onShutterCancel()V
    .registers 2

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 889
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterCancel()V

    :cond_11
    return-void
.end method

.method public onShutterClick()V
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 836
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterClick(II)V

    :cond_13
    return-void
.end method

.method public onShutterDown()V
    .registers 2

    .line 859
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 860
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterDown()V

    :cond_11
    return-void
.end method

.method public onShutterLongClick()V
    .registers 5

    .line 842
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onShutterLongClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mshutterUINewStyleSupport(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    .line 845
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    .line 846
    const-string v3, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_42

    .line 849
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterLongClick(II)V

    return-void

    .line 847
    :cond_42
    :goto_42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mshowShutterGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    return-void

    .line 852
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterLongClick(II)V

    :cond_51
    return-void
.end method

.method public onShutterUp()V
    .registers 5

    .line 866
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onShutterUp"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_67

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    .line 869
    const-string v3, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    .line 870
    const-string v3, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 871
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmLottieAnimationView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 872
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSwipeOperationListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsSwipeEnd(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 874
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSwipeOperationListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;->onNotifyUIStateChange(Z)V

    .line 881
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 882
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onShutterUp(I)V

    :cond_78
    return-void
.end method

.method public onSwipeLeftEnd()V
    .registers 3

    .line 954
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSwipeLeftEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmIsSwipeEnd(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    return-void
.end method

.method public onSwipeLeftStart()V
    .registers 5

    .line 932
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwipeLeftStart,  mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSelfTimerBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsQuickRecording(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmPanoramaCaptureBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_b9

    .line 936
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmIsSwipeEnd(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    .line 937
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmLottieAnimationView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 938
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_7b

    .line 939
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 941
    :cond_7b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->interruptPhysicalKey(Z)V

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 945
    :cond_96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmContinuousShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmContinuousShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 948
    :cond_a7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_ui_state_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_state_process"

    .line 949
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public onSwipeRightEnd()V
    .registers 3

    .line 983
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSwipeRightEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 984
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmIsSwipeEnd(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    return-void
.end method

.method public onSwipeRightStart()V
    .registers 5

    .line 960
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwipeRightStart,  mIsCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSelfTimerBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentModeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsQuickRecording(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmPanoramaCaptureBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    .line 962
    const-string v1, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_d5

    .line 965
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmIsSwipeEnd(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmLottieAnimationView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 967
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_97

    .line 968
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    :cond_97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->interruptPhysicalKey(Z)V

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 974
    :cond_b2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmQuickVideoButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    move-result-object v0

    if-eqz v0, :cond_c3

    .line 975
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmQuickVideoButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 977
    :cond_c3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_ui_state_action"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_state_process"

    .line 978
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d5
    :goto_d5
    return-void
.end method

.method public onSwipeTouchDown()V
    .registers 2

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 919
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onSwipeTouchDown()V

    :cond_11
    return-void
.end method

.method public onSwipeTouchUp()V
    .registers 2

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;->onSwipeTouchUp()V

    :cond_11
    return-void
.end method

.method public onTouchCancel()V
    .registers 4

    .line 989
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mshutterUINewStyleSupport(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_33

    .line 992
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmLongPressed(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 993
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 994
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_shutter_guide_layout_action"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "shutter_guide_layout_hide"

    .line 995
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 996
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fputmLongPressed(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V

    :cond_33
    :goto_33
    return-void
.end method
