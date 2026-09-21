.class Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;


# direct methods
.method public static synthetic $r8$lambda$6aX-Zn9tRjaKhOalhdz6BsD-uQQ(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$mrestoreInteractiveUIIfReady(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ehu6LjILQpjcy1uCdVhDRN4EiSY(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->hideCommonSettingUIsForSuperAntiVideo()V

    return-void
.end method

.method public static synthetic $r8$lambda$wg5jLzWWlhmEUfPdvRQks2wuQfA(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->executeDoSetOptionSettingUIList()V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V
    .registers 2

    .line 735
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    return-void
.end method

.method private executeDoSetOptionSettingUIList()V
    .registers 2

    .line 774
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 775
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->doSetOptionSettingUIList(Ljava/util/List;)V

    :cond_12
    return-void
.end method

.method private hideCommonSettingUIsForSuperAntiVideo()V
    .registers 2

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fgetmCameraId(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_24

    .line 759
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_12

    .line 761
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    goto :goto_12

    :cond_24
    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 735
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fgetmSupportSuperAntiVideoV2(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6b

    .line 741
    :cond_9
    const-string v0, "key_super_anti_video"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 742
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 743
    const-string p1, "super"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fputmPendingRestoreInteractiveUIAfterPopup(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Z)V

    .line 745
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_66

    .line 747
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fgetmLastSuperAntiVideoValue(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 748
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 749
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fgetmResetUi(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 750
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 753
    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;->this$0:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->-$$Nest$fputmLastSuperAntiVideoValue(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    return-void
.end method
