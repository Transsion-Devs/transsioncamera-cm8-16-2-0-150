.class public final synthetic Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field public final synthetic f$2:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iput-object p3, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method


# virtual methods
.method public final onBatteryStatusChanged(ZII)V
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;->f$2:Lcom/transsion/camera/app/common/setting/ISetting;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->$r8$lambda$_WlvF8turQrPw7K47tHy1BrjSn8(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V

    return-void
.end method
