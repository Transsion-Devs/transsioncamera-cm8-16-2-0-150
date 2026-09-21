.class Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProEditWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;)V
    .registers 3

    .line 955
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    .line 956
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/ProEditWatermark-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 961
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1c

    if-eq p1, v1, :cond_a

    goto/16 :goto_9b

    .line 981
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmInfoCity(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 982
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$mupdateCityItemViewState(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    return-void

    .line 963
    :cond_1c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmCheckStatus(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)I

    move-result p1

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_26

    goto :goto_9b

    .line 966
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 967
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    :cond_37
    :try_start_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$mupdateCheckedSortItemList(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V

    .line 971
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$mupdateCityPreviewTextInMainThread(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_41} :catch_42

    goto :goto_5b

    :catch_42
    move-exception p1

    .line 973
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get city info, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 975
    :goto_5b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmInfoCity(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9b

    .line 976
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EditWaterMarkHandler]: save city info to datastore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmInfoCity(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 977
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmInfoCity(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "key_city_watermark_info"

    invoke-virtual {v0, v2, p1, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9b
    :goto_9b
    return-void
.end method
