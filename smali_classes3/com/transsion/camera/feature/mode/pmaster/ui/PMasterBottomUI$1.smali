.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeBlur(Ljava/lang/String;)V
    .registers 7

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->-$$Nest$fgetmBlurScrollerRoot(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->closeBlurByConflict(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->-$$Nest$fgetmPortraitFlareSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->-$$Nest$fgetmPortraitFlareSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->-$$Nest$fgetmPortraitFlareSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_flare_closed_reason"

    invoke-virtual {v0, v4, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->-$$Nest$fgetmPortraitFlareSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_40
    return-void
.end method
