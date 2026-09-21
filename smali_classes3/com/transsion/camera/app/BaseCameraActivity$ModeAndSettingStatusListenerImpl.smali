.class Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeAndSettingStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 2117
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V
    .registers 8

    .line 2120
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmState(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmIsBrightnessReduced(Lcom/transsion/camera/app/BaseCameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2121
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmAvoidReduceBrightness(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 2124
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmState(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/IApp$State;)V

    .line 2125
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChanged mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v3}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmState(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsResumed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v3, v3, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2126
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity$9;->$SwitchMap$com$transsion$camera$app$common$IApp$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq p1, v1, :cond_107

    const/4 v4, 0x2

    if-eq p1, v4, :cond_8a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_84

    .line 2170
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmState(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2167
    :cond_84
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$msetNotLoadLatestThumbnail(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    return-void

    .line 2146
    :cond_8a
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v4, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v4, :cond_e9

    .line 2147
    invoke-static {p1, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$mdoEnableWaitPage(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 2148
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmScreenBrightnessManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/manager/ScreenBrightnessManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->getInitialBrightness()I

    move-result p1

    int-to-float p1, p1

    .line 2149
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmScreenBrightnessManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/manager/ScreenBrightnessManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->getCurrentBrightness()I

    move-result v1

    int-to-float v1, v1

    .line 2150
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_c7

    const/4 p1, 0x0

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_c7

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 2152
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportPowerSavingMode()Z

    move-result p1

    if-eqz p1, :cond_c7

    .line 2153
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmScreenBrightnessManager(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/manager/ScreenBrightnessManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/manager/ScreenBrightnessManager;->exitVideoSavePowerMode()V

    .line 2155
    :cond_c7
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2156
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2157
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2158
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmIsBrightnessReduced(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 2160
    :cond_e9
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$msetNotLoadLatestThumbnail(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 2161
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2162
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingUIShowing:Z

    if-eqz p1, :cond_14d

    .line 2163
    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 2128
    :cond_107
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v1, :cond_14d

    .line 2129
    invoke-static {p1, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$mdoEnableWaitPage(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 2130
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportPowerSavingMode()Z

    move-result p1

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingModeSupport:Z

    if-eqz v1, :cond_14d

    .line 2132
    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmAvoidReduceBrightness(Lcom/transsion/camera/app/BaseCameraActivity;)Z

    move-result p1

    if-nez p1, :cond_136

    .line 2133
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmVideoPowerSavingWaitTime(Lcom/transsion/camera/app/BaseCameraActivity;)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2136
    :cond_136
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fputmAvoidReduceBrightness(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 2137
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingUISupport:Z

    if-eqz p1, :cond_14d

    .line 2138
    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetVIDEO_POWER_SAVING_UI_SHOW_DELAY_MILLS()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14d
    return-void
.end method
