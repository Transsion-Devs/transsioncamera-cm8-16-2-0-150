.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StableMode"
.end annotation


# instance fields
.field private mIsPaused:Z

.field private mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

.field private final mStableStatusCallback:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method public static synthetic $r8$lambda$zAGAAhdsk6rf_ABKgFG7v8HLAws(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->onStableStatusChanged(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .registers 3

    .line 978
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 976
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    .line 1041
    new-instance v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableStatusCallback:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

    .line 979
    new-instance v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    return-void
.end method

.method private hideAllHint()V
    .registers 3

    .line 1066
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1000(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeOpenedInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1100(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeEnteredInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$1200(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmInStableModeInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private onStableStatusChanged(I)V
    .registers 5

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$500(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStableStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->statusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCaptureFlow(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", IsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mShutterdownClicked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmShutterdownClicked(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsZooming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmIsZooming(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1048
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCaptureFlow(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->getType()I

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmShutterdownClicked(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_c8

    :cond_6b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9d

    .line 1052
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmIsZooming(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmCameraUI3(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1053
    :cond_7e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$600(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeEnteredInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1054
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$700(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmInStableModeInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_bb

    .line 1056
    :cond_9d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$800(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeEnteredInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1057
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$900(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmInStableModeInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :goto_bb
    if-ne p1, v0, :cond_c8

    .line 1061
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmIsZooming(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fputmStableModeEnteredInfoShowed(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;Z)V

    :cond_c8
    :goto_c8
    return-void
.end method


# virtual methods
.method init()V
    .registers 4

    .line 983
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeOpenedInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->super_night_stable_opened_tips:I

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mgetString(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeEnteredInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->super_night_stable_enter_tips:I

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mgetString(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeEnteredInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 987
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeEnteredInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 989
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmInStableModeInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    sget v2, Lcom/transsion/camera/feature/supernight/R$string;->super_night_in_stable_tips:I

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$mgetString(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->init()V

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableStatusCallback:Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    return-void
.end method

.method isStable()Z
    .registers 3

    .line 1037
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1038
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->getLastStatus()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v0
.end method

.method onClosed()V
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    if-eqz v0, :cond_7

    .line 1014
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->stop()V

    .line 1016
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->hideAllHint()V

    const/4 v0, 0x0

    .line 1017
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    return-void
.end method

.method onOpened()V
    .registers 3

    .line 1002
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->superNightStableDefaultOpen()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$300(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmStableModeOpenedInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1006
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    if-eqz v0, :cond_20

    .line 1007
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->start()V

    :cond_20
    const/4 v0, 0x0

    .line 1009
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    return-void
.end method

.method pause()V
    .registers 2

    const/4 v0, 0x1

    .line 1021
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    .line 1022
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->hideAllHint()V

    return-void
.end method

.method resume()V
    .registers 4

    .line 1026
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    const/4 v1, 0x2

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->getLastStatus()I

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 1027
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->access$400(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->-$$Nest$fgetmInStableModeInfo(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1030
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->getLastStatus()I

    move-result v0

    if-eq v0, v1, :cond_27

    .line 1031
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->hideAllHint()V

    :cond_27
    const/4 v0, 0x0

    .line 1033
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mIsPaused:Z

    return-void
.end method

.method unInit()V
    .registers 3

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;->unInit()V

    .line 998
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$StableMode;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    return-void
.end method
