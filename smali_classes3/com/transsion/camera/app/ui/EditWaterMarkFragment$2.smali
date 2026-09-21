.class Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateCityInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V
    .registers 2

    .line 647
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 653
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$fgetmLocationManager(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 654
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$fgetmLocationManager(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_edit_watermark"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 655
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$fgetmLocationManager(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void

    .line 657
    :cond_28
    invoke-static {}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "error! mLocationManager = null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
