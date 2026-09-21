.class Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->updateLocationInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V
    .registers 2

    .line 578
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 581
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 584
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmLocationManager(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_gold_watermark_location"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmLocationManager(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method
