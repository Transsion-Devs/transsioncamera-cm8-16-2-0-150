.class Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaintDetSettingCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_13

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->access$000(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fputmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_13
    if-eqz p2, :cond_7d

    const/4 v0, 0x1

    if-eq p2, v0, :cond_25

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1d

    goto/16 :goto_9c

    .line 96
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    check-cast p1, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$mnotifyDebugIfNeed(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;)V

    return-void

    .line 82
    :cond_25
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    if-eqz p2, :cond_75

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    if-eqz p2, :cond_75

    .line 83
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmIsSelfTimeShowing(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z

    move-result p2

    if-nez p2, :cond_9c

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmIsOverlayGuideShowing(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z

    move-result p2

    if-nez p2, :cond_9c

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmIsCelebrityPopupTipsShowing(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z

    move-result p2

    if-nez p2, :cond_9c

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmIsZooming(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z

    move-result p2

    if-eqz p2, :cond_56

    goto :goto_9c

    .line 89
    :cond_56
    sget-object p2, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[onDataCallback] show taint reminder."

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 91
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    const/16 v0, 0x1d

    invoke-virtual {p2, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 93
    :cond_75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    check-cast p1, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$mnotifyDebugIfNeed(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;)V

    return-void

    .line 77
    :cond_7d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;->this$0:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->-$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9c
    :goto_9c
    return-void
.end method
