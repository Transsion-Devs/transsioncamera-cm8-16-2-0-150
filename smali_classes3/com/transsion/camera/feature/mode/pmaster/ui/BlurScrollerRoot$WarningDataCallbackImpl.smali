.class Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarningDataCallbackImpl"
.end annotation


# instance fields
.field mCameraId:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V
    .registers 2

    .line 683
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 7

    .line 687
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_super_night_capture_status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmWarningType(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)I

    move-result v1

    if-ne v1, p2, :cond_39

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->mCameraId:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    move-result-object v1

    if-eqz v1, :cond_57

    :cond_39
    const-string/jumbo v1, "value_super_night_capture_begin"

    .line 690
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 691
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->mCameraId:Ljava/lang/String;

    .line 692
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$WarningDataCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    move-result-object p0

    const/16 p1, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_57
    return-void
.end method
