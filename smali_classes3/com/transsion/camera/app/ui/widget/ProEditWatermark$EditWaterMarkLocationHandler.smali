.class Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProEditWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkLocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;)V
    .registers 3

    .line 935
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    .line 936
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/ProEditWatermark-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 941
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_32

    .line 943
    :try_start_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$fgetmCheckStatus(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;)I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_32

    .line 944
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$EditWaterMarkLocationHandler;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$mupdateCityInfo(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p0

    .line 947
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update location, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_32
    return-void
.end method
