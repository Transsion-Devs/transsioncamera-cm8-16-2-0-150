.class Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/EditWaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V
    .registers 3

    .line 895
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 896
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 901
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_21

    if-eq p1, v1, :cond_9

    goto :goto_2d

    .line 921
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2d

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$fgetmCityInfo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 922
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void

    .line 903
    :cond_21
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2e

    :cond_2d
    :goto_2d
    return-void

    .line 906
    :cond_2e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz v0, :cond_54

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$fgetmCityInfo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 907
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$fgetmCityInfo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_city_watermark_info"

    invoke-virtual {v0, v4, p1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 909
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    :try_start_5b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$fgetmCityInfo(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 912
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$mupdateEditWaterMarkItem(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    return-void

    .line 914
    :cond_6d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$mupdateWaterMarkLayout(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_72} :catch_73

    return-void

    :catch_73
    move-exception p0

    .line 917
    invoke-static {}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
