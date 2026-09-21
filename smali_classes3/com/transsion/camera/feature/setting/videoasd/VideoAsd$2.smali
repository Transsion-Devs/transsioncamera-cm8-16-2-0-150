.class Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 340
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->access$100(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_video_asd"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_48

    .line 347
    :cond_15
    const-string v0, "key_record_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 348
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshToUI()V

    return-void

    .line 351
    :cond_2f
    const-string v0, "key_ae_af_lock_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 352
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd$2;->this$0:Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/videoasd/VideoAsd;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoasd/VideoAsdParameterConfigure;->refreshToUI()V

    :cond_48
    :goto_48
    return-void
.end method
