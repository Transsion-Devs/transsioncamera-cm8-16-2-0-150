.class Lcom/transsion/camera/feature/setting/hdr/Hdr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/hdr/Hdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 396
    const-string p2, "key_filter"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$000(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->access$100(Lcom/transsion/camera/feature/setting/hdr/Hdr;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/Hdr$2;->this$0:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_23
    return-void
.end method
