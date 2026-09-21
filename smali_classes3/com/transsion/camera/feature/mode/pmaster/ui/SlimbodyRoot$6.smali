.class Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$6;
.super Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 690
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$6;->val$iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$SimpleStoreStrategy;-><init>(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method


# virtual methods
.method protected getStoreScope()Ljava/lang/String;
    .registers 1

    .line 693
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$6;->val$iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
